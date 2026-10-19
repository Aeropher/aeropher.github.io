---
layout: page
title: CV
permalink: /cv/
image: '/images/16.jpg'
---

{% assign career_years = site.time | date: '%s' | minus: 1375315200 | divided_by: 31557600 %}

<div class="cv-head">
  <div>
    <h1 class="cv-head__name">Alex Henderson</h1>
    <p class="cv-head__role">Software Lead &amp; Scrum Master at Octave</p>
    <p class="cv-head__links">Sheffield, UK · <a href="https://github.com/aeropher">GitHub</a> · <a href="/rightnow/">RightNow</a></p>
  </div>
  <button type="button" class="cv-print" onclick="window.print()"><i class="fa-solid fa-file-pdf"></i> Save as PDF</button>
</div>

<div class="cv-stats">
  <div class="cv-stat"><span class="cv-stat__num career-years">{{ career_years }}</span><span class="cv-stat__label">years on one product family</span></div>
  <div class="cv-stat"><span class="cv-stat__num">5</span><span class="cv-stat__label">platform transitions led</span></div>
  <div class="cv-stat"><span class="cv-stat__num">~270</span><span class="cv-stat__label">Terraform pipeline runs a day</span></div>
  <div class="cv-stat"><span class="cv-stat__num">~40</span><span class="cv-stat__label">AI skills written for the team</span></div>
  <div class="cv-stat"><span class="cv-stat__num">40k</span><span class="cv-stat__label">lines of Dart in an app I shipped</span></div>
</div>

<p class="cv-lead">I lead a remote platform engineering team that builds the infrastructure as code and Azure DevOps CI/CD behind every customer environment on a multi-tenant SaaS platform, and I've designed two generations of its architecture. Outside work I build my own things, most visibly <a href="/rightnow/">RightNow</a>, a 40,000-line Flutter app on the App Store.</p>

<h2 class="cv-section">Transitions I've led</h2>

<p class="cv-note">Each time: find where the current approach has hit its ceiling, evaluate the alternatives, build the replacement, prove it in production and bring the team onto it.</p>

<ul class="cv-shifts">
  <li><span class="cv-shift__from">Jenkins</span><span class="cv-shift__arrow">→</span><span class="cv-shift__to">Azure DevOps</span></li>
  <li><span class="cv-shift__from">Manual GUI testing</span><span class="cv-shift__arrow">→</span><span class="cv-shift__to">20-VM automated fleet</span></li>
  <li><span class="cv-shift__from">No infrastructure as code</span><span class="cv-shift__arrow">→</span><span class="cv-shift__to">Terraform, ~270 runs a day</span></li>
  <li><span class="cv-shift__from">Terraform Cloud</span><span class="cv-shift__arrow">→</span><span class="cv-shift__to">Scalr / OpenTofu</span></li>
  <li><span class="cv-shift__from">Scattered repositories</span><span class="cv-shift__arrow">→</span><span class="cv-shift__to">One consolidated codebase</span></li>
</ul>

<p class="cv-note">PowerShell is my primary language, written to the standards and test coverage I'd expect of C#. I lead AI adoption for the team through reusable skills, with people still reviewing and owning the result. I still love writing code, and I get as much out of mentoring engineers and making the people around me more effective.</p>

<h2 class="cv-section">Experience</h2>

<div class="cv-timeline">

<div class="cv-role" markdown="1">
<h3 class="cv-role__title">Software Lead &amp; Scrum Master</h3>
<p class="cv-role__meta"><span class="cv-pill">Jul 2021 – present</span><span class="cv-pill">Octave (formerly Hexagon)</span><span class="cv-pill">Remote, Sheffield</span></p>

<h4 class="cv-role__sub">Multi-tenant cloud platform · 2022 – present</h4>

Technical lead, and Scrum Master since 2024, for a fully remote team of platform engineers that owns the pipelines creating, editing and removing every customer environment on the cloud platform.

- **Designed two generations of the platform architecture.** The first gave every tenant its own Terraform workspace, and the current design still rests on it. The second pulled the scattered repositories into one codebase with CI/CD that builds versioned packages and releases them to every ring, so a change that needed several coordinated PRs is now one PR.
- **Built the first multi-tenant pipelines, R&D to production, in 2022:** a JSON change request goes in, Terraform runs, and the outputs are published for the rest of the platform. Then the organisation pipeline and Terraform modules that route customer traffic through Azure Front Door.
- **Led the move from Terraform Cloud to Scalr/OpenTofu** when the TFC contract ended, from proof of concept to go-live in every ring, moving the platform onto the consolidated codebase in the same pass.
- **Wrote about 40 reusable AI skills and slash commands** covering authoring, testing, review, documentation, verification and work-item flow, and taught the team to use them ahead of a top-down AI mandate. AI drafts; people review and confirm.

<details class="cv-more" markdown="1">
<summary>More from this role</summary>

- **Terraform state surgery** that Terraform Cloud has no tooling for, used to migrate tenants out of the legacy shared workspace. HashiCorp's engineers confirmed the approach on calls.
- **Safeguards after real incidents:** a guard against Terraform replacing managed databases, retries that no longer recreate tenant databases during 85-minute Hyperscale moves, semaphore back-off with jitter, and a branch-deploy pipeline for testing infrastructure changes against real Azure and Scalr runs.
- **Azure Front Door limits** (5,000 resources, routes per endpoint, composite routes): researched them, worked on the second production profile, and restructured routes to free capacity. Rolled out the new Octave customer domain and retired the legacy one ring by ring behind a feature flag.
- **Kept delivery going** through the Scalr migration, the Octave spin-out (Azure and Azure DevOps tenant moves) and the move to the consolidated codebase, all at the same time.
- **Delivered the most work on the team in 2026** while running the Scrum ceremonies, shaping the backlog and presenting quarterly reviews.
- **Created the shared PowerShell module** behind every structure pipeline: coding standards, one function per file, and a 90% Pester coverage bar enforced in CI.
- **AI-driven verification** caught a real error on a live story that a person could easily have missed.

</details>

<h4 class="cv-role__sub">SDx platform engineering · to 2022</h4>

- **Moved test labs and file shares into new Azure subscriptions** as Terraform, and wrote a Hyper-V Terraform module to provision on-premises Azure DevOps agents.
- **Built PowerShell admin and configuration modules** with YAML build and release pipelines, Pester tests and internal NuGet feeds.
- **Rotated expiring service principal secrets** across every build, release and variable group, moved secrets into Key Vault, and built expiring-credential reports. Delivered ISO 27001 items such as TDE and backup retention.
- **Second-line pipeline support** for neighbouring scrum teams, and trained them on the release tooling.
</div>

<div class="cv-role" markdown="1">
<h3 class="cv-role__title">Principal Developer</h3>
<p class="cv-role__meta"><span class="cv-pill">Jul 2020 – Jun 2021</span><span class="cv-pill">Hexagon PPM</span><span class="cv-pill">Swindon, then remote</span></p>
<p class="cv-role__prev">Senior Application Engineer, Jan 2019 – Jul 2020</p>

- **Finished moving CI/CD off Jenkins and TFS** (build, release and L3 testing) onto Azure DevOps, then retired the Jenkins stages.
- **Orchestrated distributed L3 GUI test runs** across dynamically provisioned Azure VMs, and pruned flaky UI tests as part of a shift-left strategy based on Microsoft's L0–L3 model.
- **Automated test environment provisioning** in Azure DevTest Labs with ARM templates, Packer images, PowerShell and release orchestration, with retries and automatic teardown.
- **Built release pipeline stages** for promote-to-pre-release and promote-to-release, version shunting, release purging and re-runnable L3 stages, plus custom build and release tasks in PowerShell.
</div>

<div class="cv-role" markdown="1">
<h3 class="cv-role__title">Application Engineer</h3>
<p class="cv-role__meta"><span class="cv-pill">Aug 2013 – Dec 2018</span><span class="cv-pill">Intergraph, later Hexagon PPM</span><span class="cv-pill">Swindon</span></p>
<p class="cv-role__prev">Joined as Associate Application Engineer</p>

- **Designed, built and ran CI/CD in Jenkins and TFS** for several hotfix code streams, using PowerShell, Groovy and batch, and moved critical jobs onto a new Jenkins server.
- **Scaled GUI acceptance testing to a 20-VM fleet**, and split test namespaces and unit tests into parallel runs to shorten the cycle.
- **Moved L3 GUI tests from Jenkins to Azure DevTest Labs** in 2018, which led into the Azure DevOps work above.

<details class="cv-more" markdown="1">
<summary>More from this role</summary>

- **Core product development** on SmartPlant Foundation in C# and VB.NET, including the Upgrade Wizard and Oracle/SQL Server upgrade scripts.
- **Owned the WiX/MSI installer:** removed FlexLM licensing, added prerequisite checks, and handled serial numbers and code signing for each major release.
- **Monthly release-to-cert and hotfix packaging** for several code streams at once (5.x to 7.x), including export compliance.
- **Led daily test triage from 2016** and onboarded new team members onto the build and test tooling.

</details>
</div>

<div class="cv-role" markdown="1">
<h3 class="cv-role__title">Application Engineer (Industrial Placement)</h3>
<p class="cv-role__meta"><span class="cv-pill">2011 – 2012</span><span class="cv-pill">Intergraph</span><span class="cv-pill">Swindon</span></p>

- **11-month placement** creating and maintaining developer tools for the engineering team.
- **Monitored daily builds,** triaged failures and maintained unit test suites, then returned for my final year and rejoined full-time in August 2013.
</div>

</div>

<div class="cv-aside" markdown="1">
**One company, many names.** Intergraph Process, Power & Marine (owned by Hexagon AB since 2010) became **Hexagon PPM** in 2017, then part of Hexagon Asset Lifecycle Intelligence, and separated from Hexagon as **Octave** in May 2026. It makes asset lifecycle software for energy, utilities and process industries: SmartPlant Foundation and SDx on-premises, and a multi-tenant SaaS platform on Azure. The role kept changing, from product developer to release and test engineering, Azure infrastructure, then platform architecture and leading the team. The stack changed several times too, usually because I was the one changing it.
</div>

<h2 class="cv-section">Side projects</h2>

<div class="cv-cards">
  <div class="cv-card cv-card--feature">
    <h3 class="cv-card__title"><a href="/rightnow/">RightNow</a></h3>
    <p>A capacity-first productivity app: plan your day around the time you actually have. 40,000+ lines of Dart with 10,000 lines of tests, offline-first, CI/CD via GitHub Actions. On iOS and the web, with Android in testing. Built in public.</p>
    <p class="cv-tags"><span>Flutter</span><span>Riverpod</span><span>Dart</span><span>Hive</span><span>Firebase</span></p>
    <p class="cv-card__links"><a class="cv-btn" href="/rightnow/">About RightNow</a><a class="cv-btn" href="https://apps.apple.com/gb/app/rightnow/id6747011987">App Store</a><a class="cv-btn" href="https://blog.rtnw.app">Dev blog</a></p>
  </div>
  <div class="cv-card">
    <h3 class="cv-card__title">Damson</h3>
    <p>A 3D-printed hexapod robot, on the back burner. The plan is reinforcement learning in NVIDIA Isaac Sim, then sim-to-real transfer.</p>
    <p class="cv-tags"><span>Python</span><span>Isaac Sim</span><span>3D printing</span></p>
  </div>
  <div class="cv-card">
    <h3 class="cv-card__title">Pala</h3>
    <p>DIY e-readers. I use them every day.</p>
    <p class="cv-tags"><span>Hardware</span></p>
  </div>
  <div class="cv-card">
    <h3 class="cv-card__title">Health Dashboard</h3>
    <p>Fitbit, Ultrahuman Ring and Renpho scale metrics, pulled together by n8n workflows on the home server.</p>
    <p class="cv-tags"><span>n8n</span><span>InfluxDB</span><span>Grafana</span></p>
  </div>
  <div class="cv-card">
    <h3 class="cv-card__title">Home Server</h3>
    <p>Self-hosted automation stack on a Mac Mini, with Cloudflare tunnels for remote access.</p>
    <p class="cv-tags"><span>Docker</span><span>n8n</span><span>Cloudflare</span></p>
  </div>
</div>

<h2 class="cv-section">Technical skills</h2>

<dl class="cv-skills">
  <dt>Infrastructure as code</dt><dd class="cv-tags"><span>Terraform</span><span>OpenTofu</span><span>Scalr</span><span>Terraform Cloud</span><span>State surgery &amp; migration</span><span>ARM templates</span><span>Packer</span></dd>
  <dt>CI/CD</dt><dd class="cv-tags"><span>Azure DevOps (YAML &amp; Classic)</span><span>Custom tasks</span><span>Jenkins</span><span>TFS/TFVC</span><span>GitHub Actions</span></dd>
  <dt>Azure</dt><dd class="cv-tags"><span>Front Door &amp; WAF</span><span>Azure SQL (Hyperscale, elastic pools)</span><span>DevTest Labs</span><span>VMs &amp; scale sets</span><span>Key Vault</span><span>Entra ID</span><span>Networking</span></dd>
  <dt>Languages</dt><dd class="cv-tags"><span class="is-key">PowerShell</span><span>C#</span><span>Dart</span><span>VB.NET</span><span>HCL</span><span>SQL</span><span>Groovy</span><span>TypeScript</span><span>Python</span><span>Bash</span></dd>
  <dt>AI &amp; tooling</dt><dd class="cv-tags"><span>AI skill authoring</span><span>Claude / MCP integration</span><span>AI-assisted verification &amp; review</span></dd>
  <dt>Testing</dt><dd class="cv-tags"><span>Pester</span><span>UI Automation / Coded UI</span><span>Protractor</span><span>MSTest</span><span>L0–L3 strategy</span></dd>
  <dt>Release &amp; packaging</dt><dd class="cv-tags"><span>WiX/MSI</span><span>Code signing</span><span>NuGet feeds</span><span>Versioned module packages</span><span>Hotfix process</span></dd>
  <dt>Practices</dt><dd class="cv-tags"><span>Agile/Scrum</span><span>GitOps</span><span>IaC</span><span>Shift-left testing</span><span>ISO 27001 controls</span><span>Remote leadership</span></dd>
</dl>

<h2 class="cv-section">What I use</h2>

<dl class="cv-skills">
  <dt>Daily</dt><dd class="cv-tags"><span>VS Code</span><span>Azure DevOps</span><span>Terraform / Scalr</span><span>PowerShell</span><span>Git</span><span>Docker</span><span>Claude &amp; AI skills</span></dd>
  <dt>Home lab</dt><dd class="cv-tags"><span>Mac Mini</span><span>n8n</span><span>InfluxDB + Grafana</span><span>Docker Compose</span><span>Cloudflare Tunnels</span></dd>
  <dt>For fun</dt><dd class="cv-tags"><span>Flutter / Dart</span><span>NVIDIA Isaac Sim</span><span>3D printer</span><span>Guitar &amp; piano</span></dd>
</dl>

<h2 class="cv-section">Education</h2>

<div class="cv-edu">
  <div class="cv-edu__item">
    <p class="cv-edu__title">BSc Computer Science (Games Technology)</p>
    <p class="cv-role__meta"><span class="cv-pill">2009 – 2013</span><span class="cv-pill">Nottingham Trent University</span></p>
    <p>Sandwich course with an 11-month placement at Intergraph. Final year project: NLP, data mining and information extraction to generate character and location profiles automatically from digital novels (Python, VB.NET).</p>
  </div>
  <div class="cv-edu__item">
    <p class="cv-edu__title">A Levels</p>
    <p class="cv-role__meta"><span class="cv-pill">2009</span><span class="cv-pill">Lady Manners School, Bakewell</span></p>
    <p>Mathematics, Applied ICT, Music Technology, General Studies.</p>
  </div>
</div>

<h2 class="cv-section">Outside work</h2>

I'm learning guitar and piano through [Pickup Music](https://www.pickupmusic.com/). I like craft beer and whisky, play D&D irregularly, make Minecraft content with [Caffeine Addled Minds](/caffeine-addled-minds/), and follow Sheffield Wednesday.

<script>
  // Full years since rejoining Intergraph in August 2013, so the CV stays current between builds
  (function () {
    var start = new Date(2013, 7, 1), now = new Date();
    var years = now.getFullYear() - start.getFullYear() - (now < new Date(now.getFullYear(), 7, 1) ? 1 : 0);
    document.querySelectorAll('.career-years').forEach(function (el) { el.textContent = years; });
  })();
  // Printing (or saving as PDF) shows everything, including the folded sections
  window.addEventListener('beforeprint', function () {
    document.querySelectorAll('details.cv-more').forEach(function (d) { d.dataset.wasOpen = d.open; d.open = true; });
  });
  window.addEventListener('afterprint', function () {
    document.querySelectorAll('details.cv-more').forEach(function (d) { d.open = d.dataset.wasOpen === 'true'; });
  });
</script>
