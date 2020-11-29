<?php  foreach ($experiences as $experience):?> 
    <center>
        <h1 class="font"><?php  echo $experience['titre']; ?></h1>
        <h2 class="font2"><?php  echo $experience['texte']; ?></h2>
    </center>
<?php endforeach; ?>