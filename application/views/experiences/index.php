
<center>
<h1 class="font"><?= $title ?></h1>
<?php  foreach ($experiences as $experience):?> 



    <h2 class="font"><?php  echo $experience['titre']; ?></h2>

    <h2 class="font2"><?php  echo $experience['texte']; ?></h2>
</center>


<?php endforeach; ?>