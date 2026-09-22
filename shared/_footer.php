<footer>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <!-- Insert website logo -->
          <img src="images/1.png" style="width: 50px; height: 50px; object-fit: contain; border-radius: 8px; margin-bottom: 8px;" alt="Website Logo">
          <!-- Display visitor count -->
          <p>CAVATTA COLLEGE MANAGEMENT</p>
          <!-- Display time zone -->
          <p>Kazhakootam Trivandrum</p>
        </div>
        <div class="col-md-8">
          <p>Time Zone: <?php
                        date_default_timezone_set('Asia/Kolkata');
                        $current_time = date('D M d Y H:i:s \G\M\TO (T)');
                        echo "<p>$current_time</p>";
                        ?></p>
        </div>
      </div>
      <div class="row mt-4">
        <div class="col-md-12">
          <p>&copy; <?php echo date('Y'); ?> By Team Cavatta. All rights reserved.</p>
        </div>
      </div>
    </div>
  </footer>



  <script src="https://kit.fontawesome.com/a81368914c.js"></script>
  <script src="js/bootstrap.bundle.js"></script>
  <script src="https://unpkg.com/react@18/umd/react.production.min.js"></script>
  <script src="https://unpkg.com/react-dom@18/umd/react-dom.production.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/ScrollTrigger.min.js"></script>
  <script src="js/StrokeText.js"></script>
  <script src="js/FoldText.js"></script>
  <script src="js/FounderSection.js"></script>
  <script type="module" src="js/MoltenMetal.js"></script>
  <script src="./shared/app.js"></script>
</body>

</html>
