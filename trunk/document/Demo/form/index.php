<html>
    <head>
        <title>Demo Truyen Tai Du Lieu</title>
        <link rel="stylesheet" type="text/css" href="style.css" />        
    </head>
    <body>
    
    <?php 
        $soHangA = -1;
        $soHangB = -1;
        $operator = "";
        $result = -1;
        if (isset($_POST["txtA"])) {
            $soHangA = $_POST["txtA"];
        }
        if (isset($_POST["txtB"])) {
            $soHangB = $_POST["txtB"];
        }
        if (isset($_POST["cboOperator"])) {
            $operator = $_POST["cboOperator"];
        }
        
        // Xu ly tinh toan dua vao $operator
        if ($operator == "Cong") {
            $result = $soHangA + $soHangB;
        } else if ($operator == "Tru") {
            $result = $soHangA - $soHangB;
        } else if ($operator == "Nhan") {
            $result = $soHangA * $soHangB;
        } else if ($operator == "Chia") {
            $result = $soHangA/$soHangB;
        }
        
    ?>
    
        <div id="wrapper">
            <div id="content">
                <form action="index.php" method="POST" name="frmCalculator">
                    <h1> Calculator </h1>
                    So Hang A : <input type="text" name="txtA" id="txtA" value="<?php
                        if ($soHangA != "-1") {
                            echo $soHangA;
                        }  
                    ?>" /> <br />
                    So Hang B: <input type="text" name="txtB" id="txtB" value="<?php 
                         if ($soHangB != "-1") {
                            echo $soHangB;
                        }
                    ?>"/> <br />
                    <select name="cboOperator" id="cboOperator">
                        <option value="Cong" <?php
                            if ($operator == "Cong") {
                                echo "selected";
                            }
                        ?>> Cong </option>
                        <option value="Tru" <?php
                             if ($operator == "Tru") {
                                echo "selected";
                            }
                        ?>> Tru </option>
                        <option value="Nhan" <?php 
                            if ($operator == "Nhan") {
                                echo "selected";
                            }
                        ?>> Nhan </option>
                        <option value="Chia" <?php 
                            if ($operator == "Chia") {
                                echo "selected";
                            }
                        ?>> Chia </option>
                    </select>
                    <input type="submit" name="btnAction" value="Action" /><br />
                    Result : <input type="text" name="txtResult" id="txtResult" readonly="true"
                    <?php
                        if ($result != -1 ) {
                            echo "value=$result" ;
                        }
                    ?> 
                    />
                </form>
            </div>
        </div>
    </body>
</html>