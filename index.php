<?php include('shared/_header.php');?>

  <main>
    <div class="big-wrapper dark">
      <div id="molten-metal-root" class="molten-metal-bg"></div>

     <?php include('shared/_navbar.php'); ?>

      <div class="container hero-centered">
        <div id="home-stroke-text-root" style="width: 100%; max-width: 880px;"></div>
        <p class="hero-subtitle">
          Next-generation institutional management platform. Empowering educators, streamlining academic administration, and elevating student success across all departments.
        </p>
        <div class="hero-actions">
          <a href="login.php" class="btn-hero-primary">
            <i class="fas fa-sign-in-alt"></i> Access Portal
          </a>
          <a href="about-us.php" class="btn-hero-secondary">
            <i class="fas fa-users"></i> Meet The Team
          </a>
        </div>
      </div>

      <?php include('shared/feature-cards.php'); ?>
      

      <div class="container mt-3">
        <hr>
      </div>

      <div class="container mt-3 carousel-box">

        <div id="carouselExample" class="carousel slide">
          <div class="carousel-inner">
            <div class="carousel-item active founder-carousel-item">
              <img src="images/carousel1.jpg" class="d-block w-100" alt="Cavatta Al-Hakim - Founder">
              <div class="founder-carousel-overlay">
                <span class="founder-carousel-eyebrow">Meet</span>
                <h2 class="founder-carousel-name">Cavatta Al&#8209;Hakim</h2>
                <p class="founder-carousel-desc">
                  Founder of a fast-growing cavatta college. Educationalist, contractor, and agile scaling. Passionate about money-first student-last projects.
                </p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="images/carousel2.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="images/carousel3.jpg" class="d-block w-100" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>

      </div>
    </div>


  </main>




  <?php include('shared/_footer.php'); ?>
