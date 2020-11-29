<center>
<h1 class="font"><?= $title ?></h1>
<?php  foreach ($contact as $contacts):?>
        <h2 class="font"><?php  echo $contacts['email']; ?></h2>
        <h2 class="font2"><?php  echo $contacts['nom']; ?></h2>
<?php endforeach; ?>


<form method="post">
            <table width="600" border="1" cellspacing="5" cellpadding="5">
    <tr>
        <td width="230">First Name </td>
        <td width="329"><input type="text" name="prenom"/></td>
    </tr>
    <tr>
        <td>Last Name </td>
        <td><input type="text" name="nom"/></td>
    </tr>
    <tr>
        <td>Email ID </td>
        <td><input type="email" name="email"/></td>
    </tr>
    <tr>
        <td colspan="2" align="center"><input type="submit" name="save" value="Save Data"/></td>
    </tr>
    </table>
 </form>
 </center>