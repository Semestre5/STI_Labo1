<?php include "include/header.php"?>
<?php include "include/isConnected.php"?>
<body>
<div class="container mt-3">
    <form method="post" action="messageCreation.php">
    <br><h2>Envoyer un message</h2><br>
    <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon1">Sujet</span>
        <input type="text" class="form-control" name="sujet" aria-label="Username" required aria-describedby="basic-addon1">
    </div>
    <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon1">Destinataire</span>
        <input type="text" class="form-control" name="destinataire" aria-label="Username" required aria-describedby="basic-addon1">
    </div>
    <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon1">Contenu du message</span>
        <textarea class="form-control" id="exampleFormControlTextarea1" name="corps" required rows="5"></textarea>
        <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Envoyer</button>
    </div>
    </form>
</div>
</body>