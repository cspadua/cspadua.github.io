<?php
$page = "espresso";

if (isset($_GET['page'])) {
  $page = $_GET['page'];
  switch ($page) {
    case "espresso":
    case "coldbrew":
    case "refreshers":
    case "desserts":
    case "bakery":
      break;
    default:
      header("Location: ?page=espresso");
      exit;
  }
} else {
  header("Location: ?page=espresso");
  exit;
}
?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Lora | For moments that start with a sip</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
  <link rel="stylesheet" href="styles.css">
  <link rel="icon" href="img/logo.png">
</head>

<body>

<nav class="navbar navbar-expand-lg bg-white py-3 border-bottom fixed-top">
  <div class="container-fluid d-flex justify-content-between align-items-center position-relative">
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarLinks"
      aria-controls="navbarLinks" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarLinks">
      <ul class="navbar-nav me-3">
        <li class="nav-item"><a class="nav-link text-dark" href="?page=espresso">Espresso</a></li>
        <li class="nav-item"><a class="nav-link text-dark" href="?page=coldbrew">Cold Brew</a></li>
        <li class="nav-item"><a class="nav-link text-dark" href="?page=refreshers">Refreshers</a></li>
        <li class="nav-item"><a class="nav-link text-dark" href="?page=desserts">Desserts</a></li>
        <li class="nav-item"><a class="nav-link text-dark" href="?page=bakery">Bakery</a></li>
      </ul>
    </div>

    <div class="navbar-brand position-absolute start-50 translate-middle-x">
      <img src="img/logo.png" alt="Lora Logo" height="50">
    </div>

    <div class="d-flex gap-3 align-items-center">
      <img src="img/search.svg" alt="Search" height="18">
      <img src="img/profile.svg" alt="Profile" height="18">
      <img src="img/cart.svg" alt="Cart" height="18">
    </div>

  </div>
</nav>

<div class="container-fluid p-0" style="position: relative; width: 100%; overflow: hidden;">
    <div class="row">
      <div class="col" style="height: 100vh;">
        <iframe id="iframe1"
          src="https://www.youtube.com/embed/Atr97iC4HFc?si=aEwa2s-TrHhGadt9&autoplay=1&mute=1&controls=0&rel=0&disablekb=1&loop=1&playlist=Atr97iC4HFc"
          title="YouTube video player" frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
      </div>
    </div>
    <div class="filter"></div>
  </div>

<div class="container-fluid">
  <?php include("shared/" . $page . ".php"); ?>
</div>

<section class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4 mb-4">
          <img src="img/bean.svg" alt="Coffee Icon" class="mb-4" height="32">
          <h5 class="fw-bold">Coffee you vibe with</h5>
          <p>
            Made for daily rituals. Crafted for every mood. Great coffee shouldn’t be complicated.
            Just really, really good.
          </p>
        </div>

        <div class="col-md-4 mb-4">
          <img src="img/coffee.svg" alt="Bean Icon" class="mb-3" height="40">
          <h5 class="fw-bold">Brew good, feel good</h5>
          <p>
            We care about what goes in your cup. Responsibly sourced beans and planet-friendly practices,
            because every cup deserves better.
          </p>
        </div>

        <div class="col-md-4 mb-4">
          <img src="img/diamond.svg" alt="Diamond Icon" class="mb-3" height="40">
          <h5 class="fw-bold">Made fresh, served right</h5>
          <p>
            Every cup is brewed fresh. Just for you. Not loving it? Let us know, we’ll make it right.
            Your perfect cup is kinda our thing.
          </p>
        </div>
      </div>
    </div>
  </section>

  <footer class="text-center py-5 border-top">
  <div class="container">
    <div class="mb-4">
      <img src="img/logo.png" alt="Lora Logo" class="img-fluid" style="height: 60px;">
    </div>
    <div class="footer-text mb-4 text-muted">
      <p class="mb-0">
        © 2024 Lora Coffee. All rights reserved. <br>
        For moments that start with a sip — brewed with passion, served with love.
      </p>
    </div>
    <div class="footer-links d-flex justify-content-center gap-4 flex-wrap mt-3">
      <a href="#" class="text-decoration-none text-dark fw-semibold small">Privacy Policy</a>
      <a href="#" class="text-decoration-none text-dark fw-semibold small">Terms of Service</a>
      <a href="#" class="text-decoration-none text-dark fw-semibold small">Contact Us</a>
    </div>
  </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
  crossorigin="anonymous"></script>

  <script>
  window.addEventListener("DOMContentLoaded", () => {
    const params = new URLSearchParams(window.location.search);
    const page = params.get("page");
    if (page) {
      const section = document.getElementById(page);
      if (section) {
        section.scrollIntoView({ behavior: "smooth" });
      }
    }
  });
</script>
</body>
</html>
