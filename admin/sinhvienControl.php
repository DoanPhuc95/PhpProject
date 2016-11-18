<?php
    require_once '../config.php';
    function searchSV($s)
    {
        global $db;
        $result;
        $arraySV = array();
        if(isset($s))
        {
            $stringquery = "SELECT * FROM dbo_sinhvien WHERE Ten like '%".$s."' or Holot like '%".$s."' or MaSV like"
                    . " '%".$s."'";
        
            $result = $db->query($stringquery);
            if($result && $result->num_rows > 0)
            { ?>
                <table class="ds">
			<!-- in tiêu đề danh sách -->
                    <thead>
                        <tr class="ui-widget-header">
                            <th><input type="checkbox" id="checkAll"/></th>
                            <th>STT</th>
                            <th>MSSV</th>
                            <th>Họ tên</th>
                            <th>Ngày Sinh</th>
                            <th>Quê quán</th>
                            <th>Email</th>
                            <th></th>
                        </tr>
                    </thead>
			<!-- end in tiêu đề-->
			<!-- inh danh dánh -->
                    <tbody>
                        <?php
                            $i = 0;
                            while ( $row = $result->fetch_array () ) {
                                echo "<tr class='trsv' >";
                                echo "<td><input name='chkmasv[]'  value='" . $row ["MaSV"] . "' class='chkmasv' type='checkbox'/> </td>";
                                echo "<td class='stt'>" . ++ $i . "</td>";
                                echo "<td>" . $row ["MaSV"] . "</td>";
                                echo "<td>" . $row ["Holot"] . " " . $row ["Ten"] . "</td>";
                                echo "<td>";
                                $d = strtotime ( $row ["NgaySinh"] );
                                echo date ( "d-m-Y", $d );
                                echo "</td>";
                                if($row["QueQuan"]!=null)
                                    echo "<td>" . $row ["QueQuan"] . "</td>";
                                else echo"<td></td>";
                                echo "<td>" . $row ["Email"] . "</td>";
                                echo "<td>";
                                echo "<button  class='btnSua' name='MaSV' value='" . $row ["MaSV"] . "'><span class='ui-icon ui-icon-pencil' ></span></button>";
                                echo "<button name='btnXoa' class='btnXoa' value='" . $row ["MaSV"] . "' ><span class='ui-icon ui-icon-trash'  ></span> </button>";
                                echo "</td>";
                                echo "</tr>";
                            }
                            $result->free ();
                        ?>
                    </tbody>
			<!--  end in danh sách-->
		
		</table>

                <?php
            }
        }
        return $result;
    }
?>