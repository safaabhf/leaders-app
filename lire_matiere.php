<?php
require('connexion.php');
$sql="select * from Matiere";
$rech= $conn->query($sql);
?>
<?php
$result = $rech->fetchAll(PDO::FETCH_ASSOC);
{
?>
<?php echo $row['Nom_Matiere']; ?>
<?php echo $row['Coeff']; ?>
<?php
}
$conn=NULL ;
?>