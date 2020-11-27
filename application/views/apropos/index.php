
<div class="contain">
<center>
<h1 class="font"><?= $title ?></h1>
<?php  foreach ($apropos as $apropo):?> 



    <h2 class="font"><?php  echo $apropo['titre']; ?></h2>

    <h2 class="font2"><?php  echo $apropo['texte']; ?></h2>
</center>


<?php endforeach; ?>

</div>