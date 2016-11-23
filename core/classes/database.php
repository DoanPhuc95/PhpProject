
<?php
class Database{
  private $object;
  private $result = null;

  public $currentField = "";
  public $lengths = "";
  public $numRows = "";

  function connect($host, $username, $password, $database = null){
    if(is_null($database)){
      $this->object = new mysqli($host, $username, $password);
    } else{
      $this->object = new mysqli($host, $username, $password, $database);
    }
  }

  function change_db($database){
    $this->object->select_db($database);
  }

  function ref_values($arr){
    if(strnatcmp(phpversion(), '5.3') >= 0){
      $refs = array();
      foreach ($arr as $key => $value) {
        $refs[$key] = &$arr[$key];
      }
      return $refs;
    }
    return $arr;
  }

  function query($query, $args = null){
    if(is_null($args)){
      $this->result = $this->object->query($query);
      $this->currentField = $this->result->currentField;
      $this->lengths = $this->result->lengths;
      $this->numRows = $this->result->numRows;
      return $this->result;
    } else{
      if(!is_array($args)){
        $argsBkp = $args;
        $args = array($argsBkp);
      }
      if($stmt = $this->object->prepare($query)){
        $datatypes = "";
        foreach ($args as $value) {
          if(is_int($value)){
            $datatypes .= "i";
          } elseif (is_double($value)) {
            $datatypes .= "d";
          } elseif (is_string($value)) {
            $datatypes .= "s";
          } else {
            $datatypes .= "b";
          }
        }

        array_unshift($args, $datatypes);

        if(call_user_func_array(array($stmt, 'bind_param'), $this->ref_values($args))){
          $stmt->execute();
          $this->result = $stmt->get_result();
          if($this->result){
            $this->currentField = $this->result->current_field;
            $this->lengths = $this->result->lengths;
            $this->numRows = $this->result->num_rows;
          } else{
            $this->currentField = "";
            $this->lengths = 0;
            $this->numRows = 0;
          }
          $this->error = $stmt->error;
          return $this->result;
        } else{
          $this->currentField = "";
          $this->lengths = 0;
          $this->numRows = 0;
          return false;
        }
      } else{
        $this->currentField = "";
        $this->lengths = 0;
        $this->numRows = 0;
        return false;
      }
    }
  }

  function data_seek($offset =0){
    return $this->result->data_seek($offset);
  }

  function fetch_all(){
    return $this->result->fetch_all();
  }

  function fetch_array(){
    return $this->result->fetch_array();
  }

  function fetch_assoc(){
    return $this->result->fetch_assoc();
  }

  function fetch_field_direct($field){
    return $this->result->fetch_field_direct();
  }

  function fetch_field(){
    return $this->result->fetch_field();
  }

  function fetch_fields(){
    return $this->result->fetch_fields();
  }

  function fetch_object($class_name = 'stdClass', $params = null){
    if(is_null($params)){
      return $this->result->fetch_object($class_name);
    } else{
      return $this->result->fetch_object($class_name,$params);
    }
  }

  function fetch_row(){
    return $this->result->fetch_row();
  }

  function fetch_seek($field){
    return $this->result->fetch_seek($field);
  }

  function insert_id(){
    return $this->result->insert_id;
  }

  function fetch_all_kv(){
    $out = array();
    while($row = $this->result->fetch_assoc()){
      $out[] = $row;
    }
    return $out;
  }

  function close(){
    $this->object->close();
  }

}

?>
