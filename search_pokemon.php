<!-- 
    Ce fichier représente la page de résultats de recherche de pokémons du site.
-->
<?php
require_once("head.php");
?>

<table>
    <thead>
            <tr>
                <th>
                Numéro de pokémon
                </th>
                <th>
                Nom 
                </th>
                <th>
                Portrait
                </th>
            </tr>
     </thead>
        
    <tbody>

<?php



$recherche = $_GET["q"];

require_once("database-connection.php");

$sql = "SELECT * 
    FROM pokemon
    WHERE NOMPOKEMON LIKE '%". $recherche . "%'";

$result = mysqli_query($databaseConnection, $sql); 



if(mysqli_num_rows($result)>0){
    while($row = mysqli_fetch_assoc($result)){
         echo "<tr>" . "<td>". $row["IDPOKEMON"] . "</td>".
          "<td>" . 
            "<a href=\"detailpokemon.php?id=" . $row['IDPOKEMON'] . "\">". $row["NOMPOKEMON"] ."</a>"
          . "</td>" .
          "<td>" . "<img src=" . 
          $row["URL_PHOTO"] . ">" . "</td>" .
          "<td>" . 
            "</tr>";

            }
        }
    else{
        echo "0 results";
    }




?>

    </tbody>
</table>

<?php
require_once("footer.php");
?>