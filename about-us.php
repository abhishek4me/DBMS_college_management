<?php include('shared/_header.php'); ?>

<main>
    <div class="big-wrapper dark">
        <div id="molten-metal-root" class="molten-metal-bg"></div>

        <?php include('shared/_navbar.php'); ?>

        <div class="container mt-5">
            <!-- Header Section -->
            <div class="text-center mb-5" style="position: relative; z-index: 20;">
                <h1 style="font-weight: 800; font-size: 2.6rem; letter-spacing: -1px; margin-bottom: 0.8rem;">
                    About <span style="color: var(--mainColor);">Cavatta College</span>
                </h1>
                <p style="color: var(--textSecondary); font-size: 1.15rem; max-width: 680px; margin: 0 auto;">
                    Excellence in education, technology-driven administration, and the team driving our institutional vision.
                </p>
            </div>

            <!-- About & Project Overview -->
            <div class="row g-4 mb-5">
                <div class="col-12 col-lg-6">
                    <div class="card border-0 shadow about-card p-4 h-100">
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <span class="fs-2" style="color: var(--mainColor);"><i class="fas fa-university"></i></span>
                            <h3 class="mb-0" style="font-weight: 700; font-size: 1.45rem;">About Us</h3>
                        </div>
                        <p style="font-size: 1.02rem; line-height: 1.8;">
                            Cavatta College is a premier institution dedicated to academic rigor, engineering innovation, and ethical leadership. Our modern campus provides state-of-the-art laboratories, a vibrant research culture, and a collaborative environment where students and faculty push the boundaries of technology and learning.
                        </p>
                        <p style="font-size: 1.02rem; line-height: 1.8; margin-bottom: 0;">
                            We cultivate future leaders through rigorous curriculum standards, experiential industry exposure, and continuous mentorship across multidisciplinary engineering departments.
                        </p>
                    </div>
                </div>

                <div class="col-12 col-lg-6">
                    <div class="card border-0 shadow about-card p-4 h-100">
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <span class="fs-2" style="color: var(--mainColor);"><i class="fas fa-laptop-code"></i></span>
                            <h3 class="mb-0" style="font-weight: 700; font-size: 1.45rem;">About the Project</h3>
                        </div>
                        <p style="font-size: 1.02rem; line-height: 1.8;">
                            The <strong>Cavatta College Management System</strong> is a centralized, cloud-integrated ERP platform engineered to streamline institutional administration. It provides dedicated role-based portals for Administrators, Teachers, and Students.
                        </p>
                        <p style="font-size: 1.02rem; line-height: 1.8; margin-bottom: 0;">
                            Key capabilities include real-time professor-wise attendance tracking, dynamic timetable management, automated session authentication, cloud MySQL migration for Railway.com, and an adaptive dark/light responsive interface.
                        </p>
                    </div>
                </div>
            </div>

            <!-- Interactive Founder Hero Section -->
            <div id="founder-section-root" style="width: 100%; position: relative; z-index: 25; margin: 3.5rem 0 2rem; border-radius: 24px; overflow: hidden; box-shadow: 0 25px 60px rgba(0,0,0,0.6);"></div>

            <!-- Team Contributions Section -->
            <div class="mt-5 mb-4 text-center" style="position: relative; z-index: 20;">
                <h2 style="font-weight: 800; font-size: 2.2rem; letter-spacing: -0.5px;">
                    Team <span style="color: var(--mainColor);">Contributions</span>
                </h2>
                <p style="color: var(--textSecondary); font-size: 1.05rem; max-width: 600px; margin: 0.5rem auto 0;">
                    Meet the engineers and designers behind the development and deployment of the Cavatta College platform.
                </p>
            </div>

            <div class="team-grid mb-5">
                <!-- Member 1: Abhishek R S -->
                <div class="team-card">
                    <div>
                        <div class="team-avatar-wrapper">
                            <a href="https://www.linkedin.com/in/abhishek6969/" target="_blank" rel="noopener noreferrer" class="team-avatar-link" title="View Abhishek's LinkedIn Profile">
                                <img src="images/team/abhishek.jpg" alt="Abhishek R S">
                                <span class="team-linkedin-badge"><i class="fab fa-linkedin-in"></i></span>
                            </a>
                        </div>
                        <h4>Abhishek R S</h4>
                        <span class="role-badge">Team Lead</span>
                        <p>
                            Architected core system workflows, role-based routing, database migration scripts, security infrastructure, and backend integrations.
                        </p>
                    </div>
                    <a href="https://www.linkedin.com/in/abhishek6969/" target="_blank" rel="noopener noreferrer" class="btn-linkedin">
                        <i class="fab fa-linkedin"></i> Connect on LinkedIn
                    </a>
                </div>

                <!-- Member 2: Karan A S -->
                <div class="team-card">
                    <div>
                        <div class="team-avatar-wrapper">
                            <a href="https://www.linkedin.com/in/karan-a-s-862612235/" target="_blank" rel="noopener noreferrer" class="team-avatar-link" title="View Karan's LinkedIn Profile">
                                <img src="images/team/karan.jpg" alt="Karan A S">
                                <span class="team-linkedin-badge"><i class="fab fa-linkedin-in"></i></span>
                            </a>
                        </div>
                        <h4>Karan A S</h4>
                        <span class="role-badge">UI/UX and Design</span>
                        <p>
                            Engineered responsive frontend interfaces, WebGL shader background animations, StrokeText integration, and the adaptive dark mode system.
                        </p>
                    </div>
                    <a href="https://www.linkedin.com/in/karan-a-s-862612235/" target="_blank" rel="noopener noreferrer" class="btn-linkedin">
                        <i class="fab fa-linkedin"></i> Connect on LinkedIn
                    </a>
                </div>

                <!-- Member 3: Karthik R K -->
                <div class="team-card">
                    <div>
                        <div class="team-avatar-wrapper">
                            <a href="https://www.linkedin.com/in/karthik-r-k-22b97733b/" target="_blank" rel="noopener noreferrer" class="team-avatar-link" title="View Karthik's LinkedIn Profile">
                                <img src="images/team/karthik.jpg" alt="Karthik R K">
                                <span class="team-linkedin-badge"><i class="fab fa-linkedin-in"></i></span>
                            </a>
                        </div>
                        <h4>Karthik R K</h4>
                        <span class="role-badge">Database Testing</span>
                        <p>
                            Formulated comprehensive schema validation, query stress testing, data integrity verification for student attendance, and migration testing.
                        </p>
                    </div>
                    <a href="https://www.linkedin.com/in/karthik-r-k-22b97733b/" target="_blank" rel="noopener noreferrer" class="btn-linkedin">
                        <i class="fab fa-linkedin"></i> Connect on LinkedIn
                    </a>
                </div>

                <!-- Member 4: Vinayak S P -->
                <div class="team-card">
                    <div>
                        <div class="team-avatar-wrapper">
                            <a href="https://www.linkedin.com/in/vinayak-sp-7ab66333a/" target="_blank" rel="noopener noreferrer" class="team-avatar-link" title="View Vinayak's LinkedIn Profile">
                                <img src="images/team/vinayak.jpg" alt="Vinayak S P">
                                <span class="team-linkedin-badge"><i class="fab fa-linkedin-in"></i></span>
                            </a>
                        </div>
                        <h4>Vinayak S P</h4>
                        <span class="role-badge">Documentation & Coordination</span>
                        <p>
                            Authored project technical specifications, API documentation, sprint coordination, requirements tracking, and deployment walkthroughs.
                        </p>
                    </div>
                    <a href="https://www.linkedin.com/in/vinayak-sp-7ab66333a/" target="_blank" rel="noopener noreferrer" class="btn-linkedin">
                        <i class="fab fa-linkedin"></i> Connect on LinkedIn
                    </a>
                </div>
            </div>

            <!-- Interactive 3D Lanyard ID Badge Showcase -->
            <div class="lanyard-section">
                <h3 style="font-weight: 800; font-size: 1.8rem; margin-bottom: 0.4rem;">
                    <i class="fas fa-id-badge" style="color: var(--mainColor);"></i> Interactive Digital ID Badge
                </h3>
                <p style="color: var(--textSecondary); font-size: 0.95rem;">
                    Interact with the 3D Cavatta College identification badge. Switch members to inspect individual credentials.
                </p>

                <div class="lanyard-container" id="lanyard-interactive">
                    <div class="lanyard-strap"></div>
                    <div class="lanyard-clip"></div>

                    <div class="lanyard-card" id="lanyard-card">
                        <div class="lanyard-header">
                            <img src="images/1.png" alt="Cavatta Logo">
                            <span>CAVATTA COLLEGE</span>
                            <span class="badge" style="background: var(--mainColor); font-size: 0.7rem;">OFFICIAL</span>
                        </div>

                        <a href="https://www.linkedin.com/in/abhishek6969/" target="_blank" rel="noopener noreferrer" class="lanyard-photo-link" id="lanyard-link" title="Click to view LinkedIn">
                            <img src="images/team/abhishek.jpg" alt="Team Member Photo" id="lanyard-img">
                        </a>

                        <div class="lanyard-name" id="lanyard-name">Abhishek R S</div>
                        <div class="lanyard-role" id="lanyard-role">Team Lead</div>

                        <div class="d-flex justify-content-between align-items-center px-2 py-2 mt-2" style="background: rgba(255,255,255,0.05); border-radius: 10px; font-size: 0.82rem;">
                            <span style="color: var(--textSecondary);">ID: <strong id="lanyard-id" style="color: var(--textPrimary);">CC-2026-001</strong></span>
                            <span style="color: var(--textSecondary);">DEPT: <strong style="color: var(--textPrimary);">CSE / ERP</strong></span>
                        </div>

                        <div class="lanyard-barcode">
                            |||||| |||| |||||||| ||||| |||||||
                            <div style="font-size: 0.72rem; letter-spacing: 1px; color: var(--textSecondary); margin-top: 2px;">
                                VERIFIED CREDENTIAL
                            </div>
                        </div>
                    </div>

                    <!-- Member Selector Buttons -->
                    <div class="lanyard-selector">
                        <button type="button" class="lanyard-btn active" data-index="0">Abhishek R S</button>
                        <button type="button" class="lanyard-btn" data-index="1">Karan A S</button>
                        <button type="button" class="lanyard-btn" data-index="2">Karthik R K</button>
                        <button type="button" class="lanyard-btn" data-index="3">Vinayak S P</button>
                    </div>
                </div>
            </div>

            <!-- College Seal Footer Banner -->
            <div class="mt-5 mb-4 text-center" style="position: relative; z-index: 20;">
                <img src="images/1.png" alt="Cavatta College Crest" style="width: 72px; height: 72px; object-fit: contain; border-radius: 14px; filter: var(--logoShadow); margin-bottom: 1rem;">
                <h4 style="font-weight: 700; color: var(--textPrimary); letter-spacing: 1px;">CAVATTA COLLEGE MANAGEMENT</h4>
                <p style="color: var(--textSecondary); font-size: 0.9rem;">Kazhakootam, Trivandrum, Kerala &bull; Established for Excellence</p>
            </div>
        </div>
    </div>
</main>

<script>
  (function () {
    const teamData = [
      {
        name: "Abhishek R S",
        role: "Team Lead",
        img: "images/team/abhishek.jpg",
        id: "CC-2026-001",
        url: "https://www.linkedin.com/in/abhishek6969/"
      },
      {
        name: "Karan A S",
        role: "UI/UX and Design",
        img: "images/team/karan.jpg",
        id: "CC-2026-002",
        url: "https://www.linkedin.com/in/karan-a-s-862612235/"
      },
      {
        name: "Karthik R K",
        role: "Database Testing",
        img: "images/team/karthik.jpg",
        id: "CC-2026-003",
        url: "https://www.linkedin.com/in/karthik-r-k-22b97733b/"
      },
      {
        name: "Vinayak S P",
        role: "Documentation & Coordination",
        img: "images/team/vinayak.jpg",
        id: "CC-2026-004",
        url: "https://www.linkedin.com/in/vinayak-sp-7ab66333a/"
      }
    ];

    const card = document.getElementById("lanyard-card");
    const imgEl = document.getElementById("lanyard-img");
    const nameEl = document.getElementById("lanyard-name");
    const roleEl = document.getElementById("lanyard-role");
    const idEl = document.getElementById("lanyard-id");
    const linkEl = document.getElementById("lanyard-link");
    const buttons = document.querySelectorAll(".lanyard-btn");

    function setMember(index) {
      const m = teamData[index];
      if (!m) return;

      if (card) {
        card.style.transform = "scale(0.95) rotateY(15deg)";
        setTimeout(() => {
          if (imgEl) imgEl.src = m.img;
          if (nameEl) nameEl.textContent = m.name;
          if (roleEl) roleEl.textContent = m.role;
          if (idEl) idEl.textContent = m.id;
          if (linkEl) linkEl.href = m.url;
          card.style.transform = "scale(1) rotateY(0deg)";
        }, 180);
      }

      buttons.forEach((btn, idx) => {
        if (idx === index) {
          btn.classList.add("active");
        } else {
          btn.classList.remove("active");
        }
      });
    }

    buttons.forEach((btn) => {
      btn.addEventListener("click", function () {
        const idx = parseInt(this.getAttribute("data-index"), 10);
        setMember(idx);
      });
    });

    // 3D tilt effect on mousemove
    if (card) {
      card.addEventListener("mousemove", (e) => {
        const rect = card.getBoundingClientRect();
        const x = e.clientX - rect.left - rect.width / 2;
        const y = e.clientY - rect.top - rect.height / 2;
        const rotateX = (-y / rect.height) * 16;
        const rotateY = (x / rect.width) * 16;
        card.style.transform = `perspective(1000px) rotateX(${rotateX}deg) rotateY(${rotateY}deg) translateY(-6px)`;
      });

      card.addEventListener("mouseleave", () => {
        card.style.transform = "perspective(1000px) rotateX(0deg) rotateY(0deg) translateY(0px)";
      });
    }
  })();
</script>

<?php include('shared/_footer.php'); ?>