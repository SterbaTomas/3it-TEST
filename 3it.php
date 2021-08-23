<?php
    session_start();
    if(isset($_POST['Vymazat']) && ($_POST['Vymazat'] == "Vymazat")) { 
        $_POST = [];
        $_SESSION = [];
    }
?>
<!DOCTYPE html>
<html lang="cz">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css.css"  type="text/css">
    <title>Document</title>


</head>
<body>
    
<!-- Formulare -->

    <h1>3it zpracovani databaze</h1>
    <table>
        <tr>
            <form action="" method="POST">
                <td><input type="text" name="jmeno" style="width: 200px;" placeholder="Hledej dle jmena nebo prijmeni"></td>
                <td><input type="submit" class="buttons" value="Hledat"></td>
            </form>
        </tr>
        <tr>
            <form action="" method="POST">
                <td style="text-align: right;"><p>Zobraz celou tabulku</p></td>
                <td><input type="submit" class="buttons" name="cela" value="Zobrazit"></td>
            </form>
        </tr>
        <tr>
            <form action="" method="POST">
                <td style="text-align: right;"><p>Vymaz pro nove hledani</p></td>
                <td><input type="submit" class="buttons" name="Vymazat" value="Vymazat"></td>
            </form>
        </tr>
    </table>
<!-- PHP -->

    <h2>Vyhledana data</h2>

    <?php
// Spojeni s DB
        $con = mysqli_connect("localhost", "root", "", "databaze");
        if(!$con){
            die("Nelze navazat spojeni s databazi.");
        }
// Podminka pro kompletni tabulku       
        if(isset($_POST["cela"]) && $_POST["cela"] == "Zobrazit"){
            $query = "SELECT * FROM zaznamy ORDER BY zaznamy.datum ASC";
            if(!($result = mysqli_query($con, $query))){
            die("Nelze provest dotaz.");
        }
// Vypis dat pro kompletni tabulku
        while($radek = mysqli_fetch_array($result)){ ?>
            <table id="barva" class="tabulkaVypis" onclick="myFunction()">
                <tr>
                    <td class="prvni"><?php echo $radek["id"] ?></td>
                    <td class="ostatni"><?php echo $radek["jmeno"] ?></td>
                    <td class="ostatni"><?php echo $radek["prijmeni"] ?></td>
                    <td class="ostatni"><?php echo $radek["datum"] ?></td>
                </tr>
        </table>
        <?php 
        }
        mysqli_free_result($result);
        }
// Podminka pro vybrane uzivatele
        else{
            $pole = isset($_SESSION['sessiona']) ? $_SESSION['sessiona'] : array();
            if(isset($_POST['jmeno'])){
                $pole[count($pole)] = htmlspecialchars($_POST['jmeno']);
            }
            $_SESSION['sessiona'] = $pole;
            foreach($pole as $hodnota){
                $query = "SELECT * FROM zaznamy WHERE jmeno = '$hodnota' OR prijmeni = '$hodnota'";
            if(!($result = mysqli_query($con, $query))){
                die("Nelze provest dotaz.");
            }
        
        
// Vypis dat pro vybrane uzivatele
        while($radek = mysqli_fetch_array($result)){ ?>
            <table class="tabulkaVypis">
                <tr>
                    <td class="prvni"><?php echo $radek["id"] ?></td>
                    <td class="ostatni"><?php echo $radek["jmeno"] ?></td>
                    <td class="ostatni"><?php echo $radek["prijmeni"] ?></td>
                    <td class="ostatni"><?php echo $radek["datum"] ?></td>
                </tr>
        </table>
        <?php 
        }
        mysqli_free_result($result);
        }
        }
        mysqli_close($con);   
    ?>
<!-- JavaScript -->
    <script>
            function myFunction() {
            document.getElementById("barva").style.color = "red";
            }
    </script>    
</body>
</html>