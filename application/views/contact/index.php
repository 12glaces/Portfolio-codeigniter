<center>
<h1 class="font"><?= $title ?></h1>

<h3 class="font"><?php echo validation_errors()?></h3>
<?php echo form_open('contact/index');?>
  <div class="form-group">
    <label class="font">Objet</label>
    <input type="text" class="form-control" name="objet" placeholder="Entrez objet" >
  </div>

  <div class="form-group">
    <label class="font">Email</label>
    <input type="email" class="form-control" name="email" placeholder="Entrez email">
    <small class="form-text text-muted">tkt je mange les email</small>
  </div>

  <div class="form-group">
    <label class="font">Nom</label>
    <input type="text" class="form-control" name="nom" placeholder="Entrez nom">
  </div>

  <div class="form-group">
    <label class="font">Prenom</label>
    <input type="text" class="form-control" name="prenom" placeholder="Entrez prenom">
  </div>

  <div class="form-group">
    <label class="font">Message</label>
    <input type="text" class="form-control" name="message" placeholder="Entrez message">
  </div>


  <button type="submit" class="btn btn-primary">Submit</button>
</form>
<?php  foreach ($contact as $contacts):?>
       <a href="mailto:<?php  echo $contacts['email']; ?>"><h2 class="font2"><?php  echo $contacts['texte']; ?></h2></a> 
<?php endforeach; ?>
 </center>