---
layout: page
title: CV
permalink: /cv/
image: '/images/16.jpg'
---

# Alex Henderson

**Software engineer · Software Lead & Scrum Master at Octave**<br>
Sheffield (UK) · [GitHub](https://github.com/aeropher) · [RightNow on the App Store](https://apps.apple.com/gb/app/rightnow/id6747011987)

I'm a software engineer. By day I lead a remote platform engineering team, building the infrastructure as code and Azure DevOps CI/CD that creates, changes and removes every customer environment on a multi-tenant SaaS cloud platform. I've designed two generations of that platform's architecture. Outside work I build my own things, most visibly [RightNow](https://apps.apple.com/gb/app/rightnow/id6747011987), a 40,000-line Flutter app I shipped to the App Store in a stack unrelated to the day job.

I've led five major technology transitions across the platform's lifetime: Jenkins to Azure DevOps, manual GUI testing to a 20-VM automated fleet, no infrastructure as code to Terraform running about 270 pipeline executions a day, Terraform Cloud to Scalr/OpenTofu, and scattered repositories to a single consolidated codebase. Each time I found where the current approach had hit its ceiling, evaluated the alternatives, built the replacement, proved it in production and brought the team onto it.

I've spent {% assign career_years = site.time | date: '%s' | minus: 1375315200 | divided_by: 31557600 %}<span class="career-years">{{ career_years }}</span> years on the same product family, from SmartPlant Foundation developer through release engineering and test automation to platform design. My primary language is PowerShell, written with the same standards and test coverage I'd expect of C#. I lead AI adoption for the team through reusable skills that automate the tedious parts of the job, with people still reviewing and owning the result. I still love writing code, and I get as much out of mentoring engineers and making the people around me more effective.

---

## Experience

### Software Lead & Scrum Master

*Jul 2021 – present · Octave (formerly Hexagon) · Remote, Sheffield*

#### Multi-tenant cloud platform (2022 – present)

- Technical lead (and Scrum Master since 2024) for a fully remote team of platform engineers that owns the pipelines creating, editing and removing every customer environment on the cloud platform.
- Designed two generations of the platform architecture. The first gave every tenant its own Terraform workspace, and the current design still rests on it. The second pulled the scattered repositories that drive the platform into one codebase with CI/CD that builds versioned packages and releases them to every ring, so a change that needed several coordinated PRs is now one PR.
- Built the first multi-tenant pipelines from R&D to production in 2022: a JSON change request goes in, infrastructure as code in Terraform runs, and the outputs are published for the rest of the platform. Then built the organisation pipeline and Terraform modules that route customer traffic through Azure Front Door.
- Led the move from Terraform Cloud to Scalr/OpenTofu when the TFC contract ended, from proof of concept to go-live in every ring, and moved the platform onto the consolidated codebase in the same pass.
- Built Terraform state manipulation automation that Terraform Cloud has no tooling for, and used it to migrate tenants out of the legacy shared workspace. On calls with HashiCorp, their engineers confirmed the approach was correct.
- Wrote about 40 reusable AI skills and slash commands covering authoring, testing, review, documentation, verification and work-item flow, and taught the team to use them ahead of a top-down AI mandate. AI-driven verification caught a real error on a live story that a person could easily have missed. The person still owns the result: AI drafts, humans review and confirm.
- Added safeguards after real incidents: a guard against Terraform replacing managed databases, retries that no longer recreate tenant databases during 85-minute Hyperscale moves, semaphore back-off with jitter, and a branch-deploy pipeline for testing infrastructure changes against real Azure and Scalr runs.
- Worked through Azure Front Door limits (5,000 resources, routes per endpoint, composite routes): researched them, worked on the second production profile, and restructured routes to free capacity. Rolled out the new Octave customer domain and retired the legacy domain ring by ring behind a feature flag.
- Kept delivery going through the Scalr migration, the Octave spin-out (Azure and Azure DevOps tenant moves) and the move to the consolidated codebase, which all happened at the same time.
- Delivered the most work on the team in 2026 while running the Scrum ceremonies, shaping the backlog and presenting quarterly reviews.
- Created the shared PowerShell module behind every structure pipeline, with coding standards, one function per file, and a 90% Pester coverage bar enforced in CI.
- Spot Achievement Award (2022) for the multi-tenant cloud platform project, including covering extra responsibilities when the team lost people.

#### SDx platform engineering (to 2022)

- Moved test labs and file shares into new Azure subscriptions as infrastructure as code with Terraform, and wrote a Hyper-V Terraform module to provision on-premises Azure DevOps agents.
- Built PowerShell admin and configuration modules with YAML build and release pipelines, Pester tests and internal NuGet feeds.
- Rotated expiring service principal secrets across every build, release and variable group, moved secrets into Key Vault, and built expiring-credential reports. Delivered ISO 27001 items such as TDE and backup retention.
- Gave second-line pipeline support to neighbouring scrum teams and trained them on the release tooling.

### Principal Developer

*Jul 2020 – Jun 2021 · Hexagon PPM · Swindon, then remote*<br>
*Senior Application Engineer, Jan 2019 – Jul 2020*

- Finished moving the CI/CD pipelines (build, release and L3 testing) off on-premises Jenkins and TFS onto Azure DevOps, then retired the Jenkins stages.
- Orchestrated distributed L3 GUI test runs across dynamically provisioned Azure VMs, and pruned flaky UI tests as part of a shift-left strategy based on Microsoft's L0–L3 model.
- Automated test environment provisioning in Azure DevTest Labs with ARM templates, Packer images, PowerShell and Azure DevOps release orchestration, with retries and automatic teardown.
- Built release pipeline stages for promote-to-pre-release and promote-to-release, version shunting, release purging and re-runnable L3 stages, plus custom build and release tasks in PowerShell.

### Application Engineer

*Aug 2013 – Dec 2018 · Intergraph, later Hexagon PPM · Swindon*<br>
*Joined as Associate Application Engineer*

- Designed, built and ran the CI/CD pipelines in Jenkins and TFS for several hotfix code streams, using PowerShell, Groovy and batch, and moved critical jobs onto a new Jenkins server.
- Scaled GUI acceptance testing to a 20-VM fleet and split test namespaces and unit tests into parallel runs to shorten the cycle.
- Moved L3 GUI tests from Jenkins to Azure DevTest Labs in 2018, which led into the Azure DevOps work above.
- Fixed bugs and built features in the core SmartPlant Foundation product in C# and VB.NET, including Upgrade Wizard and Oracle/SQL Server upgrade scripts.
- Owned the WiX/MSI installer: removed FlexLM licensing, added prerequisite checks, and handled serial numbers and code signing for each major release.
- Ran the monthly release-to-cert and hotfix packaging for several code streams at once (5.x to 7.x), including export compliance.
- Led daily test triage from 2016 and onboarded new team members onto the build and test tooling.

### Application Engineer (Industrial Placement)

*2011 – 2012 · Intergraph · Swindon*

- 11-month placement creating and maintaining developer tools for the engineering team.
- Monitored daily builds, triaged failures, and maintained unit test suites.
- Returned to university for my final year, then rejoined Intergraph full-time in August 2013.

**Intergraph** Process, Power & Marine (owned by Hexagon AB since 2010) was rebranded **Hexagon PPM** in 2017, became part of Hexagon Asset Lifecycle Intelligence, and separated from Hexagon as **Octave** in May 2026. It makes asset lifecycle software for energy, utilities and process industries: SmartPlant Foundation and SDx on-premises, and a multi-tenant SaaS cloud platform on Azure. One company throughout, but the role kept changing: product developer, then release and test engineering, then Azure infrastructure, then platform architecture and leading the team. The stack changed several times too, usually because I was the one changing it.

---

## Side projects

| Project | What it is | Stack |
|---------|-----------|-------|
| **[RightNow](https://rtnw.app)** | A capacity-first productivity app: plan your day around the time you actually have. 40,000+ lines of Dart with 10,000 lines of tests, offline-first, CI/CD via GitHub Actions. [On the App Store](https://apps.apple.com/gb/app/rightnow/id6747011987) and the web, with Android in testing. Built in public ([dev blog](https://blog.rtnw.app)). | Flutter, Riverpod, Dart, Hive, Firebase |
| **Damson** | A 3D-printed hexapod robot, on the back burner. The plan is reinforcement learning in NVIDIA Isaac Sim, then sim-to-real transfer. | Python, Isaac Sim, 3D printing |
| **Pala** | DIY e-readers. I use them every day. | Hardware |
| **Health Dashboard** | Health metrics from Fitbit, Ultrahuman Ring and Renpho scales, pulled together by n8n workflows on the home server. | n8n, InfluxDB, Grafana |
| **Home Server** | Self-hosted automation stack on a Mac Mini, with Cloudflare tunnels for remote access. | Docker, n8n, Cloudflare |

---

## Technical skills

| Area | Technologies |
|------|-------------|
| Infrastructure as code | Terraform, OpenTofu, Scalr, Terraform Cloud, state surgery and migration, ARM templates, Packer |
| CI/CD | Azure DevOps Pipelines (YAML & Classic), custom tasks, Jenkins, TFS/TFVC, GitHub Actions |
| Azure | Front Door and WAF, Azure SQL (Hyperscale, elastic pools), DevTest Labs, VMs and scale sets, Key Vault, Entra ID, networking |
| Languages | PowerShell (primary), C#, Dart, VB.NET, HCL, SQL, Groovy, TypeScript, Python, Bash |
| AI & tooling | AI skill authoring, Claude/MCP integration, AI-assisted verification and code review |
| Testing | Pester, UI Automation / Coded UI, Protractor, MSTest, L0–L3 strategy |
| Release & packaging | WiX/MSI installers, code signing, NuGet feeds, versioned module packages, hotfix release process |
| Practices | Agile/Scrum, GitOps, IaC, shift-left testing, ISO 27001 controls, remote leadership |

---

## What I use

| Daily | Home lab | For fun |
|-------|----------|---------|
| VS Code, Azure DevOps, Terraform / Scalr, PowerShell, Git, Docker, Claude and AI skills | Mac Mini, n8n, InfluxDB + Grafana, Docker Compose, Cloudflare Tunnels | Flutter / Dart, NVIDIA Isaac Sim, 3D printer, guitar and piano |

---

## Education

**BSc Computer Science (Games Technology)**, Nottingham Trent University, 2009 – 2013<br>
Sandwich course including an 11-month industrial placement at Intergraph. My final year project used NLP, data mining and information extraction to generate character and location profiles automatically from digital novels (Python, VB.NET).

**A Levels**, Lady Manners School, Bakewell, 2009<br>
Mathematics, Applied ICT, Music Technology, General Studies.

---

## Outside work

I'm learning guitar and piano through [Pickup Music](https://www.pickupmusic.com/). I like craft beer and whisky, play D&D irregularly, make Minecraft content with [Caffeine Addled Minds](/caffeine-addled-minds/), and follow Sheffield Wednesday.

<script>
  // Full years since rejoining Intergraph in August 2013, so the CV stays current between builds
  (function () {
    var start = new Date(2013, 7, 1), now = new Date();
    var years = now.getFullYear() - start.getFullYear() - (now < new Date(now.getFullYear(), 7, 1) ? 1 : 0);
    document.querySelectorAll('.career-years').forEach(function (el) { el.textContent = years; });
  })();
</script>
