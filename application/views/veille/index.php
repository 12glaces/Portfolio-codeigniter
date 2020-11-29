<?php  foreach ($veille as $veilles):?> 
    <center>
        <h1 class="font"><?php  echo $veilles['nomVeille']; ?></h1>
        <a href="<?php echo $veilles['lien']; ?>"><h2 class="font2"><?php  echo $veilles['texte']; ?></h2></a>
    </center>
<?php endforeach; ?>