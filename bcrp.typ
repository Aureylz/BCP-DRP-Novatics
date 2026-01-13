// ═══════════════════════════════════════════════════════════════════════════════
// BCRP PROJECT - Novatics System Architecture Analysis
// Airbus Cybersecurity School x Ynov Campus
// ═══════════════════════════════════════════════════════════════════════════════

// ─────────────────────────────────────────────────────────────────────────────────
// CONFIGURATION
// ─────────────────────────────────────────────────────────────────────────────────

#let config = (
  title: "BCRP Project",
  subtitle: "Business Continuity & Recovery Planning",
  school: "Airbus Cybersecurity School × Ynov Campus",
  program: "Master in Cybersecurity Experts",
  team: ("Tony NGUYEN", "Gabin COMORGE", "Aurélien BOUDIER"),
  date: "January 15, 2026",
  year: "2025 – 2026",
)

// Image paths configuration
#let img = (
  // Logos
  logo-ynov: "images/logos/logo-ynov.png",
  logo-airbus: "images/logos/logo-airbus.png",
  // Introduction
  n-eye: "images/introduction/novatics-n-eye-drone-landscape-2663x1452.png",
  n-seeker: "images/introduction/novatics-n-seeker-drone-landscape-2592x1414.png",
  n-sonar: "images/introduction/novatics-n-sonar-landscape-2499x13003.png",
  trust-zones: "images/introduction/NOV-SSI-2025-B1-A1-C1-01-zones-si-flux.png",
  // Deliverable 1 - Capella diagrams
  lab-diagram: "images/delivrables-1/NOV-BCRP-LAB-logical-architecture-blank.png",
  pab-diagram: "images/delivrables-1/NOV-BCRP-PAB-physical-architecture-blank.png",
  traceability-matrix: "images/delivrables-1/NOV-BCRP-traceability-matrix-physical-logical.png",
)

// Modern Color System
#let black = rgb("#0A0A0A")
#let white = rgb("#FFFFFF")
#let gray50 = rgb("#FAFAFA")
#let gray100 = rgb("#F4F4F5")
#let gray200 = rgb("#E4E4E7")
#let gray400 = rgb("#A1A1AA")
#let gray500 = rgb("#71717A")
#let gray600 = rgb("#52525B")
#let gray700 = rgb("#3F3F46")
#let gray800 = rgb("#27272A")
#let gray900 = rgb("#18181B")
#let accent = rgb("#00205B")
#let accent-light = rgb("#1E40AF")
#let cyan = rgb("#06B6D4")
#let emerald = rgb("#10B981")
#let amber = rgb("#F59E0B")
#let rose = rgb("#F43F5E")

// ─────────────────────────────────────────────────────────────────────────────────
// COVER PAGE - MINIMAL & MODERN
// ─────────────────────────────────────────────────────────────────────────────────

#let cover-page() = {
  set page(
    margin: 0pt,
    header: none,
    footer: none,
    fill: white,
  )
  
  // Geometric accent - top right corner
  place(
    top + right,
    rect(
      width: 42%,
      height: 25%,
      fill: accent,
    )
  )
  
  // Small geometric detail
  place(
    top + right,
    dx: -42%,
    dy: 0%,
    rect(width: 5pt, height: 25%, fill: cyan)
  )
  
  // Bottom accent line
  place(
    bottom + left,
    rect(width: 100%, height: 4pt, fill: accent)
  )
  
  pad(x: 3cm, y: 2.5cm)[
    // Logos - clean and spaced
    #grid(
      columns: (auto, 1fr, auto),
      align: (left + horizon, center, right + horizon),
      image(img.logo-ynov, height: 2.2cm),
      [],
      image(img.logo-airbus, height: 1.6cm),
    )
    
    #v(5cm)
    
    // School name - subtle
    #text(
      size: 14pt,
      fill: gray500,
      tracking: 0.2em,
      weight: 500,
    )[#upper(config.school)]
    
    #v(1cm)
    
    // Main title - bold and clean
    #text(
      size: 56pt,
      fill: black,
      weight: 800,
      tracking: -0.02em,
    )[#config.title]
    
    #v(0.4cm)
    
    // Subtitle
    #text(
      size: 18pt,
      fill: gray600,
      weight: 400,
    )[#config.subtitle]
    
    #v(0.8cm)
    
    // Accent line
    #rect(width: 80pt, height: 4pt, fill: cyan)
    
    #v(1fr)
    
    // Program badge
    #box(
      fill: gray100,
      radius: 2pt,
      inset: (x: 16pt, y: 10pt),
    )[
      #text(size: 14pt, fill: gray800, weight: 600)[#config.program]
    ]
    
    #v(2cm)
    
    // Team section - minimal grid
    #grid(
      columns: (1fr, 1fr, 1fr),
      gutter: 1.5cm,
      ..config.team.map(name => [
        #text(size: 13pt, fill: black, weight: 600)[#name]
      ])
    )
    
    #v(1em)
    
    // Footer info
    #grid(
      columns: (1fr, 1fr),
      align: (left, right),
      [
        #text(size: 13pt, fill: gray500)[Submission Date] \
        #text(size: 13pt, fill: black, weight: 500)[#config.date]
      ],
      [
        #text(size: 13pt, fill: gray500)[Academic Year] \
        #text(size: 13pt, fill: black, weight: 500)[#config.year]
      ],
    )
  ]
}

// ─────────────────────────────────────────────────────────────────────────────────
// TABLE OF CONTENTS - CLEAN
// ─────────────────────────────────────────────────────────────────────────────────

#let toc() = {
  pagebreak()
  
  v(1cm)
  
  text(size: 10pt, fill: gray400, tracking: 0.15em, weight: 500)[CONTENTS]
  
  v(0.3cm)
  
  text(size: 32pt, fill: black, weight: 700)[Table of Contents]
  
  v(0.2cm)
  
  rect(width: 50pt, height: 3pt, fill: cyan)
  
  v(1.5cm)
  
  show outline.entry.where(level: 1): it => {
    v(0.5cm)
    text(weight: 600, fill: black, size: 11pt)[#it]
  }
  
  show outline.entry.where(level: 2): it => {
    v(0.15cm)
    h(1cm)
    text(fill: gray600, size: 10pt)[#it]
  }
  
  show outline.entry.where(level: 3): it => {
    v(0.1cm)
    h(2cm)
    text(fill: gray400, size: 9pt)[#it]
  }
  
  outline(title: none, indent: auto, depth: 3)
}

// ─────────────────────────────────────────────────────────────────────────────────
// HEADINGS - MODERN TYPOGRAPHY
// ─────────────────────────────────────────────────────────────────────────────────

#let setup-headings() = {
  // H1 - Section headers
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(1cm)
    
    text(
      size: 10pt,
      fill: gray400,
      tracking: 0.15em,
      weight: 500,
    )[SECTION #counter(heading).display()]
    
    v(0.3cm)
    
    text(
      size: 32pt,
      fill: black,
      weight: 700,
      tracking: -0.01em,
    )[#it.body]
    
    v(0.3cm)
    
    rect(width: 50pt, height: 3pt, fill: cyan)
    
    v(1cm)
  }
  
  // H2 - Subsections
  show heading.where(level: 2): it => {
    v(1.2cm)
    
    grid(
      columns: (3pt, auto),
      gutter: 12pt,
      rect(width: 3pt, height: 20pt, fill: accent),
      text(
        size: 18pt,
        fill: black,
        weight: 600,
      )[#counter(heading).display() #it.body],
    )
    
    v(0.6cm)
  }
  
  // H3 - Sub-subsections
  show heading.where(level: 3): it => {
    v(0.8cm)
    
    text(
      size: 13pt,
      fill: gray800,
      weight: 600,
    )[#counter(heading).display() #it.body]
    
    v(0.4cm)
  }
}

// ─────────────────────────────────────────────────────────────────────────────────
// TABLES - CLEAN & MINIMAL
// ─────────────────────────────────────────────────────────────────────────────────

#let modern-table(columns: auto, caption: none, ..cells) = {
  let col-count = if type(columns) == array { columns.len() } else { columns }
  let header-cells = cells.pos().slice(0, col-count)
  let body-cells = cells.pos().slice(col-count)
  
  figure(
    kind: table,
    caption: caption,
    block(
      width: 100%,
      clip: true,
    )[
      #table(
        columns: columns,
        inset: (x: 14pt, y: 12pt),
        align: left + horizon,
        stroke: none,
        fill: (x, y) => if y == 0 { gray900 } else if calc.odd(y) { gray50 } else { white },
        table.header(
          ..header-cells.map(c => text(fill: white, weight: 600, size: 10pt)[#c])
        ),
        ..body-cells.map(c => text(size: 10pt, fill: gray700)[#c]),
      )
    ]
  )
}

// Risk table for EBIOS RM
#let risk-table(caption: none, ..cells) = {
  figure(
    kind: table,
    caption: caption,
    block(width: 100%)[
      #table(
        columns: (auto, 1fr, auto, auto, auto),
        inset: (x: 14pt, y: 12pt),
        align: (left, left, center, center, center),
        stroke: none,
        fill: (x, y) => if y == 0 { gray900 } else if calc.odd(y) { gray50 } else { white },
        table.header(
          text(fill: white, weight: 600, size: 10pt)[ID],
          text(fill: white, weight: 600, size: 10pt)[Risk],
          text(fill: white, weight: 600, size: 10pt)[Impact],
          text(fill: white, weight: 600, size: 10pt)[Likelihood],
          text(fill: white, weight: 600, size: 10pt)[Severity],
        ),
        ..cells.pos()
      )
    ]
  )
}

// Severity chips
#let chip(level) = {
  let (bg, fg, label) = if level == "critical" {
    (rgb("#FEE2E2"), rgb("#DC2626"), "Critical")
  } else if level == "high" {
    (rgb("#FFEDD5"), rgb("#EA580C"), "High")
  } else if level == "medium" {
    (rgb("#FEF3C7"), rgb("#D97706"), "Medium")
  } else if level == "low" {
    (rgb("#D1FAE5"), rgb("#059669"), "Low")
  } else {
    (gray100, gray600, level)
  }
  
  box(
    fill: bg,
    radius: 4pt,
    inset: (x: 10pt, y: 5pt),
  )[
    #text(fill: fg, size: 9pt, weight: 600)[#label]
  ]
}

// ─────────────────────────────────────────────────────────────────────────────────
// CALLOUT CARDS - MINIMAL
// ─────────────────────────────────────────────────────────────────────────────────

#let note(title: "Note", body) = {
  block(
    width: 100%,
    fill: gray50,
    stroke: (left: 3pt + accent),
    inset: (left: 20pt, right: 20pt, y: 16pt),
  )[
    #text(fill: accent, weight: 700, size: 10pt)[#title]
    #v(6pt)
    #text(fill: gray700, size: 10pt)[#body]
  ]
}

#let warning(title: "Warning", body) = {
  block(
    width: 100%,
    fill: rgb("#FFFBEB"),
    stroke: (left: 3pt + amber),
    inset: (left: 20pt, right: 20pt, y: 16pt),
  )[
    #text(fill: rgb("#B45309"), weight: 700, size: 10pt)[#title]
    #v(6pt)
    #text(fill: gray700, size: 10pt)[#body]
  ]
}

#let success(title: "Success", body) = {
  block(
    width: 100%,
    fill: rgb("#ECFDF5"),
    stroke: (left: 3pt + emerald),
    inset: (left: 20pt, right: 20pt, y: 16pt),
  )[
    #text(fill: rgb("#047857"), weight: 700, size: 10pt)[#title]
    #v(6pt)
    #text(fill: gray700, size: 10pt)[#body]
  ]
}

#let danger(title: "Critical", body) = {
  block(
    width: 100%,
    fill: rgb("#FEF2F2"),
    stroke: (left: 3pt + rose),
    inset: (left: 20pt, right: 20pt, y: 16pt),
  )[
    #text(fill: rgb("#DC2626"), weight: 700, size: 10pt)[#title]
    #v(6pt)
    #text(fill: gray700, size: 10pt)[#body]
  ]
}

// ─────────────────────────────────────────────────────────────────────────────────
// CODE BLOCKS
// ─────────────────────────────────────────────────────────────────────────────────

#let code(lang: none, content) = {
  block(
    width: 100%,
    fill: gray900,
    radius: 6pt,
    inset: 16pt,
  )[
    #if lang != none {
      place(
        top + right,
        dx: -4pt,
        dy: -4pt,
        box(
          fill: cyan,
          radius: 3pt,
          inset: (x: 8pt, y: 4pt),
        )[
          #text(fill: white, size: 8pt, weight: 600)[#lang]
        ]
      )
    }
    #text(fill: gray100, size: 9pt)[#content]
  ]
}

// ─────────────────────────────────────────────────────────────────────────────────
// LANDSCAPE PAGE
// ─────────────────────────────────────────────────────────────────────────────────

#let landscape(body) = {
  pagebreak()
  set page(
    width: 297mm,
    height: 210mm,
    margin: (top: 2.5cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
    header: context {
      grid(
        columns: (auto, 1fr, auto),
        align: (left + horizon, center + horizon, right + horizon),
        image(img.logo-ynov, height: 0.7cm),
        text(size: 9pt, fill: gray400, weight: 500)[#config.title],
        image(img.logo-airbus, height: 0.5cm),
      )
      v(8pt)
      line(length: 100%, stroke: 0.5pt + gray200)
    },
    footer: context {
      line(length: 100%, stroke: 0.5pt + gray200)
      v(8pt)
      grid(
        columns: (1fr, auto, 1fr),
        align: (left, center, right),
        text(size: 8pt, fill: gray400)[#config.school],
        text(size: 9pt, fill: gray600, weight: 600)[#counter(page).display()],
        text(size: 8pt, fill: gray400)[#config.year],
      )
    },
  )
  body
  pagebreak()
}

// ─────────────────────────────────────────────────────────────────────────────────
// MAIN DOCUMENT TEMPLATE
// ─────────────────────────────────────────────────────────────────────────────────

#let project(body) = {
  // Metadata
  set document(
    title: config.title,
    author: config.team.join(", "),
  )
  
  // Typography - Using system sans-serif fonts with fallback
  set text(
    font: ("Helvetica Neue", "Helvetica", "Arial", "Liberation Sans", "DejaVu Sans"),
    fallback: true,
    size: 10.5pt,
    fill: gray800,
    lang: "en",
  )
  
  // Paragraphs
  set par(
    justify: true,
    leading: 0.75em,
    first-line-indent: 0em,
  )
  
  // Lists
  set list(
    marker: (text(fill: cyan)[•], text(fill: gray400)[◦], [–]),
    indent: 0.8em,
    body-indent: 0.6em,
  )
  
  set enum(indent: 0.8em, body-indent: 0.6em)
  
  // Links
  show link: it => text(fill: accent-light, weight: 500)[#it]
  
  // Figures
  set figure(gap: 0.8em)
  show figure.caption: it => text(size: 9pt, fill: gray500)[#it]
  
  // Setup headings
  setup-headings()
  
  // Cover
  cover-page()
  
  // Main pages setup
  set page(
    paper: "a4",
    margin: (top: 3cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
    header: context {
      if counter(page).get().first() > 1 {
        grid(
          columns: (auto, 1fr, auto),
          align: (left + horizon, center + horizon, right + horizon),
          image(img.logo-ynov, height: 1cm),
          text(size: 12pt, fill: gray400, weight: 500)[#config.title],
          image(img.logo-airbus, height: 1cm),
        )
        v(8pt)
        line(length: 100%, stroke: 0.5pt + gray200)
      }
    },
    footer: context {
      if counter(page).get().first() > 1 {
        line(length: 100%, stroke: 0.5pt + gray200)
        v(8pt)
        grid(
          columns: (1fr, auto, 1fr),
          align: (left, center, right),
          text(size: 8pt, fill: gray400)[#config.school],
          text(size: 9pt, fill: gray600, weight: 600)[#counter(page).display() #text(fill: gray400)[/] #counter(page).final().first()],
          text(size: 8pt, fill: gray400)[#config.year],
        )
      }
    },
  )
  
  // TOC
  toc()
  
  // Content
  body
}

// ═══════════════════════════════════════════════════════════════════════════════
// DOCUMENT CONTENT
// ═══════════════════════════════════════════════════════════════════════════════

#show: project

= Introduction

This document presents the system architecture analysis of *Novatics*, a French deeptech company specializing in autonomous rescue robotics. The analysis was conducted using *Capella*, an open-source Model-Based Systems Engineering (MBSE) tool developed by Thales and the Eclipse Foundation.

The objective is to model the Logical and Physical Architectures of the Novatics information system, establishing clear traceability between both domains to support Business Continuity and Recovery Planning (BCRP) activities.

== Document Scope

This deliverable covers:

- Presentation of the Novatics company and its operational context
- Logical Architecture Blank (LAB) with actors, components, and functions
- Physical Architecture Blank (PAB) with nodes, behavior components, and physical functions
- Traceability matrix mapping physical implementations to logical specifications

#note(title: "Modeling Approach")[
  The Capella methodology follows the Arcadia framework, progressing from Operational Analysis through System, Logical, and Physical architectures. This document focuses on the Logical and Physical layers as required for BCRP analysis.
]

= Company Overview: Novatics

== Corporate Identity

*Novatics SAS* is a French scale-up founded in March 2018, headquartered in Toulouse, in the heart of the European aerospace ecosystem. The company operates at the intersection of civil security, defense, and deeptech, designing autonomous reconnaissance robots for crisis situations.

#modern-table(
  columns: (35%, 65%),
  caption: [Novatics Corporate Information],
  [Legal Name], [Novatics SAS],
  [Industry Sector], [Robotics / Defense & Civil Security / DeepTech],
  [Founded], [March 15, 2018 — Toulouse, France],
  [Headquarters], [12 Avenue de l'Aéronautique, 31400 Toulouse],
  [Employees], [85 (projected 120 by end of 2026)],
  [Revenue 2024], [€8.2M (projected €12.5M in 2025)],
  [Development Stage], [Scale-up (Series B completed, Series C planned Q2 2026)],
  [Patents Filed], [12],
)

== Mission Statement

#align(center)[
  #block(
    fill: gray50,
    stroke: (left: 4pt + cyan),
    inset: 20pt,
    radius: (right: 6pt),
    width: 90%,
  )[
    #text(size: 12pt, style: "italic", fill: gray700)[
      "Using advanced robotics to save lives during natural and industrial disasters, providing rescue teams with the tools to operate in environments too dangerous for humans."
    ]
  ]
]

The company's signature captures its philosophy: *"Technology is meaningless unless it serves humanity."*

== Vision 2030

By 2030, Novatics aims to become the global leader in rescue robotics, with a Novatics robot deployed in every major disaster mission on the planet. The ambitious goal is that no first responder should risk their life unnecessarily when a robot can take their place.

== Key Figures

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 12pt,
  block(
    fill: gray50,
    radius: 6pt,
    inset: 16pt,
    width: 100%,
  )[
    #align(center)[
      #text(size: 28pt, fill: accent, weight: 700)[150+]
      #v(4pt)
      #text(size: 9pt, fill: gray500)[Missions Deployed]
    ]
  ],
  block(
    fill: gray50,
    radius: 6pt,
    inset: 16pt,
    width: 100%,
  )[
    #align(center)[
      #text(size: 28pt, fill: cyan, weight: 700)[32]
      #v(4pt)
      #text(size: 9pt, fill: gray500)[Countries of Operation]
    ]
  ],
  block(
    fill: gray50,
    radius: 6pt,
    inset: 16pt,
    width: 100%,
  )[
    #align(center)[
      #text(size: 28pt, fill: amber, weight: 700)[280+]
      #v(4pt)
      #text(size: 9pt, fill: gray500)[Robots Produced]
    ]
  ],
  block(
    fill: gray50,
    radius: 6pt,
    inset: 16pt,
    width: 100%,
  )[
    #align(center)[
      #text(size: 28pt, fill: emerald, weight: 700)[142]
      #v(4pt)
      #text(size: 9pt, fill: gray500)[Lives Saved]
    ]
  ],
)

#v(1cm)

#modern-table(
  columns: (50%, 50%),
  caption: [Key Performance Indicators (November 2025)],
  [Total Workforce], [85 employees],
  [Operational Sites], [5 (across 3 continents)],
  [Revenue 2024], [€8.2M],
  [Projected Revenue 2025], [€12.5M],
  [Total Funding Raised], [€7.5M],
  [Annual Growth Rate], [+45%],
  [Cumulated Flight Hours (N-Eye)], [3,200+],
  [Exploration Hours (N-Seeker)], [1,800+],
  [Mission Success Rate], [94%],
)

== Global Presence

Novatics operates from 5 physical locations across 4 continents, interconnected through a secure WAN infrastructure. The AWS cloud infrastructure in Paris (eu-west-3) serves as a virtual sixth site.

#modern-table(
  columns: (18%, 32%, 25%, 12%, 13%),
  caption: [Novatics Global Sites],
  [Site], [Function], [Location], [Staff], [Zone],
  [Headquarters], [Executive, R&D, Support Functions], [Toulouse (31), France], [62], [IT/R&D],
  [Factory], [Manufacturing, Assembly, Testing], [Chambéry (73), France], [18], [OT],
  [Tokyo Office], [Commercial APAC], [Shibuya, Japan], [2], [Remote],
  [San Francisco], [Commercial Americas], [Mission Street, USA], [2], [Remote],
  [Lima Office], [Commercial LATAM], [Miraflores, Peru], [1], [Remote],
)

== Product Portfolio

Novatics designs three main autonomous robot platforms, each specialized for different crisis environments:

=== N-Eye — Aerial Reconnaissance Drone

The N-Eye is a multi-rotor drone designed for aerial reconnaissance in post-disaster zones. It provides real-time video and thermal imaging capabilities with autonomous flight patterns.

#figure(
  image(img.n-eye, width: 100%),
  caption: [N-Eye — Autonomous aerial reconnaissance drone for disaster zones],
)

#modern-table(
  columns: (35%, 65%),
  caption: [N-Eye Technical Specifications],
  [Flight Autonomy], [45 minutes (hot-swap battery system)],
  [Maximum Speed], [65 km/h],
  [Sensors], [4K RGB camera, FLIR thermal camera, LiDAR],
  [Communication], [WiFi mesh network, Starlink satellite uplink],
  [AI Capabilities], [Autonomous navigation, victim detection (YOLO-based)],
  [Certifications], [IP54, operating range -10°C to +50°C],
)

=== N-Seeker — Ground Exploration Rover

The N-Seeker is a tracked rover designed to navigate rubble and confined spaces in search of survivors after earthquakes or building collapses.

#figure(
  image(img.n-seeker, width: 100%),
  caption: [N-Seeker — Ground exploration rover for rubble navigation],
)

#modern-table(
  columns: (35%, 65%),
  caption: [N-Seeker Technical Specifications],
  [Operational Autonomy], [8 hours continuous operation],
  [Terrain Capability], [45° slopes, rubble navigation, confined spaces],
  [Sensors], [360° cameras, thermal imaging, gas detectors, microphones],
  [Communication], [WiFi mesh with N-Eye relay capability],
  [AI Capabilities], [SLAM navigation, sound detection, victim localization],
  [Protection Rating], [IP67, shock-resistant chassis],
)

=== N-Sonar — Underwater Search Unit

The N-Sonar is an autonomous underwater vehicle (AUV) designed for underwater search and rescue operations, particularly in flood scenarios or maritime accidents.

#figure(
  image(img.n-sonar, width: 100%),
  caption: [N-Sonar — Autonomous underwater vehicle for submerged search operations],
)

#modern-table(
  columns: (35%, 65%),
  caption: [N-Sonar Technical Specifications],
  [Dive Depth], [Up to 100 meters],
  [Operational Autonomy], [6 hours],
  [Sensors], [Multi-beam sonar, underwater cameras, hydrophones],
  [Communication], [Acoustic modem, surface relay buoy],
  [AI Capabilities], [Autonomous mapping, obstacle avoidance],
  [Water Rating], [Full submersion capability],
)

== The Novatics Command Center (NCC)

The *Novatics Command Center* is the central control platform that enables operators to command and monitor robot fleets during missions. It serves as the nerve center for all field operations.

#note(title: "NCC Core Capabilities")[
  - Real-time telemetry reception from deployed robots
  - Manual and autonomous piloting command dispatch
  - Mission data storage (video, thermal, GPS, sensor data)
  - Fleet management and multi-robot coordination
  - Integration with client systems via secure APIs
]

The NCC is deployed both as a cloud-hosted SaaS platform (for most clients) and as a deployable field station (for defense contracts requiring air-gapped operations).

== Trust Zones Architecture

Novatics has implemented a defense-in-depth architecture organized into distinct trust zones. Each zone is isolated and named using a Tolkien-inspired naming convention for easy identification.

#figure(
  image(img.trust-zones, width: 100%),
  caption: [Novatics Trust Zones Architecture — Defense-in-depth security model],
)

#modern-table(
  columns: (20%, 25%, 55%),
  caption: [Novatics Trust Zones],
  [Zone], [Tolkien Name], [Description],
  [IT Corporate], [Isengard], [Corporate IT systems, office productivity, email],
  [R&D], [Lothlórien], [Development platforms, source code, AI training],
  [OT Industrial], [Erebor], [Factory floor SCADA/MES systems at Chambéry],
  [Cloud], [Valinor], [AWS-hosted NCC backend, client-facing services],
  [Product], [Dúnedain], [Deployed robots and field communication],
  [Transverse], [Les Istari], [Security infrastructure, IAM, SIEM],
  [DR (Future)], [Mordor], [Isolated environment for classified data (II 901)],
)

== Strategic Contracts and Regulatory Context

=== DGA Contract: The N-Recon Program

#warning(title: "Strategic Defense Contract")[
  In April 2025, Novatics signed a €4.8M contract with the French Defense Procurement Agency (DGA) for the development of CBRN reconnaissance robots. This contract involves processing classified information rated "Diffusion Restreinte" (DR), requiring compliance with the II 901 instruction.
]

This contract represents a major milestone in Novatics' maturation, transforming it from an agile startup into a defense-grade supplier. The security requirements include network isolation, personnel clearances, and enhanced audit trails.

=== Applicable Regulatory Framework

#modern-table(
  columns: (15%, 35%, 35%, 15%),
  caption: [Regulatory Compliance Requirements],
  [Framework], [Scope], [Key Requirements], [Deadline],
  [NIS2], [Important Entity (critical IoT manufacturer)], [Governance, 24h notification, Art. 21 measures], [Oct. 2024],
  [GDPR], [Personal data (victims, employees)], [DPO, DPIA, processing registry], [In force],
  [II 901], [DR-classified data processing (DGA)], [Accreditation, isolation, clearances], [2026],
  [LPM], [Potential OIV designation], [SIIV, ANSSI notification], [Monitoring],
  [Export Control], [Dual-use goods], [Export licenses, destination control], [In force],
)

== Cybersecurity Challenges

The rapid growth of Novatics presents several security challenges that the BCRP analysis must address:

#danger(title: "Critical Security Concerns")[
  - *Intellectual Property Protection*: SLAM and AI algorithms represent years of R&D investment
  - *Mission Security*: Compromise during rescue operations could endanger lives
  - *Regulatory Compliance*: DGA contract requires II 901 accreditation by 2026
  - *Supply Chain Risks*: Dependency on critical suppliers (NVIDIA, AWS, Thales)
]

=== Identified Single Points of Failure (SPOF)

- *Novatics Cloud (AWS eu-west-3)*: Single point for telemetry and fleet management
- *GitLab CI/CD Pipeline*: Unique firmware compilation chain
- *Chambéry Factory*: Sole production facility
- *SLAM Expertise*: Concentrated in 3 key developers

= Deliverable 1 - Session 1: System Architecture Modeling

== Objectives

This deliverable presents the Capella modeling of the Novatics information system, covering both the Logical Architecture Blank (LAB) and the Physical Architecture Blank (PAB).

#success(title: "Deliverable Requirements")[
  *Logical Architecture (LAB):*
  - At least 3 Actor components ✓ (achieved: 6)
  - 5 Logical Components ✓ (achieved: 8)
  - 10 Logical Functions ✓ (achieved: 16)
  
  *Physical Architecture (PAB):*
  - At least 5 Physical Nodes ✓ (achieved: 6)
  - At least 8 Behavior Physical Components ✓ (achieved: 12)
  - At least 10 Physical Functions ✓ (achieved: 20)
  
  *Traceability:*
  - Complete BPC → LC mapping ✓
]

== Methodology

The Capella modeling follows the Arcadia methodology:

+ *Logical Architecture (LA)*: Defines WHAT the system must do, independent of implementation
  - Logical Actors (LA): External entities interacting with the system
  - Logical Components (LC): Functional groupings within the system
  - Logical Functions (LF): Capabilities provided by components

+ *Physical Architecture (PA)*: Defines HOW the system is implemented
  - Physical Nodes (PN): Hardware infrastructure hosting the system
  - Behavior Physical Components (BPC): Software/service implementations
  - Physical Functions (PF): Concrete operations performed by components

+ *Traceability*: Links physical implementations to logical specifications through realization relationships

#pagebreak()

= Logical Architecture Blank (LAB)

The Logical Architecture describes the functional decomposition of the Novatics system, identifying the actors that interact with it and the logical components that deliver its capabilities.

== Logical Actors (LA)

Logical Actors represent external entities that interact with the Novatics system boundary.

#modern-table(
  columns: (8%, 25%, 67%),
  caption: [Logical Actors],
  [ID], [Name], [Description],
  [LA1], [Operations on Field], [Manages field operations including cloud services and robot-to-cloud communication],
  [LA2], [R&D Operations], [Handles software development, AI research, and firmware engineering],
  [LA3], [Production Operations], [Operates manufacturing systems at the Chambéry factory],
  [LA4], [Security Services], [Provides cross-cutting security and identity management services],
  [LA5], [Mission Operators], [Human operators piloting robots via the NCC interface],
  [LA6], [B2B Clients], [External clients (FEMA, DGA, Red Cross) accessing the platform],
)

== Logical Components (LC)

Logical Components group related functions within each actor's domain.

#modern-table(
  columns: (8%, 28%, 12%, 52%),
  caption: [Logical Components],
  [ID], [Name], [Parent], [Description],
  [LC1], [NCC Backend], [LA1], [Core mission control backend processing telemetry and commands],
  [LC2], [API Gateway], [LA1], [Exposes REST APIs to external clients with authentication],
  [LC3], [Field Communication System], [LA1], [Handles robot-to-cloud communication via satellite],
  [LC4], [Development Platform], [LA2], [GitLab-based platform for code, CI/CD, and AI training],
  [LC5], [Manufacturing System], [LA3], [SCADA/MES system controlling the robot assembly line],
  [LC6], [IAM & Security Platform], [LA4], [Keycloak SSO, Vault secrets management, and SIEM logging],
  [LC7], [Operator Workstation], [LA5], [Console interface used by operators to pilot robots],
  [LC8], [Client Portal], [LA6], [Web interface for clients to access mission data and reports],
)

#pagebreak()

== Logical Functions (LF)

Logical Functions define the capabilities provided by each Logical Component.

#modern-table(
  columns: (7%, 32%, 10%, 51%),
  caption: [Logical Functions],
  [ID], [Name], [Parent], [Description],
  [LF01], [Receive robot telemetry], [LC1], [Ingests real-time sensor data from deployed robots],
  [LF02], [Send piloting commands], [LC1], [Transmits navigation and action orders to robots],
  [LF03], [Store mission data], [LC1], [Persists video, thermal, and GPS data to cloud storage],
  [LF04], [Expose client API], [LC2], [Provides secure HTTPS endpoints for B2B clients],
  [LF05], [Relay telemetry data], [LC3], [Relays sensor data from robots to cloud via satellite],
  [LF06], [Manage satellite connection], [LC3], [Handles Starlink uplink and connection status],
  [LF07], [Compile firmware], [LC4], [Builds and signs embedded software for robots],
  [LF08], [Train AI models], [LC4], [Runs SLAM and victim detection model training on GPU],
  [LF09], [Manage source code], [LC4], [Version control and code review via GitLab],
  [LF10], [Supervise SCADA], [LC5], [Monitors and controls industrial equipment],
  [LF11], [Manage ERP/MES], [LC5], [Tracks production orders and inventory],
  [LF12], [Authenticate users], [LC6], [Validates user identity via SSO and MFA],
  [LF13], [Monitor robot status], [LC7], [Displays real-time telemetry and robot health],
  [LF14], [Control robot manually], [LC7], [Sends manual piloting commands to robots],
  [LF15], [View mission reports], [LC8], [Provides access to mission summaries and archives],
  [LF16], [Request mission support], [LC8], [Enables clients to submit new mission requests],
)

== LAB Summary

#modern-table(
  columns: (40%, 20%, 25%, 15%),
  caption: [Logical Architecture Summary],
  [Element], [Count], [Requirement], [Status],
  [Logical Actors], [6], [≥ 3], [✓],
  [Logical Components], [8], [≥ 5], [✓],
  [Logical Functions], [16], [≥ 10], [✓],
)

#pagebreak()

= Physical Architecture Blank (PAB)

The Physical Architecture describes the concrete implementation of the system, mapping logical concepts to actual hardware infrastructure and software deployments.

== Physical Nodes (PN)

Physical Nodes represent the hardware infrastructure hosting the Novatics system.

#modern-table(
  columns: (8%, 30%, 62%),
  caption: [Physical Nodes],
  [ID], [Name], [Description],
  [PN1], [AWS Cloud Infrastructure], [Cloud servers in Paris region (eu-west-3) hosting mission services],
  [PN2], [R&D Server Cluster], [On-premise servers at Toulouse for development and AI training],
  [PN3], [OT Industrial Network], [Factory floor systems at the Chambéry manufacturing plant],
  [PN4], [Security Infrastructure], [Centralized security servers at Toulouse HQ],
  [PN5], [Robot Fleet], [Embedded hardware units inside deployed robots],
  [PN6], [Satellite Gateway], [Starlink relay infrastructure for field-to-cloud communication],
)

== Behavior Physical Components (BPC)

Behavior Physical Components represent software services and applications deployed on Physical Nodes.

#modern-table(
  columns: (7%, 32%, 10%, 51%),
  caption: [Behavior Physical Components],
  [ID], [Name], [Parent], [Description],
  [BPC01], [Telemetry Ingestion Service], [PN1], [Receives real-time MQTT sensor data from robots],
  [BPC02], [Command Dispatcher Service], [PN1], [Sends navigation and action orders to robots],
  [BPC03], [Mission Storage Service], [PN1], [Stores telemetry and media files in cloud storage],
  [BPC04], [API Gateway Service], [PN1], [Exposes secure REST endpoints to external clients],
  [BPC05], [GitLab CI/CD Server], [PN2], [Manages code repositories and build pipelines],
  [BPC06], [GPU Training Cluster], [PN2], [Runs AI model training workloads on NVIDIA hardware],
  [BPC07], [SCADA Controller], [PN3], [Monitors and controls factory equipment via PLCs],
  [BPC08], [MES/ERP Module], [PN3], [Manages production orders and inventory tracking],
  [BPC09], [Keycloak IAM Server], [PN4], [Handles user authentication and SSO federation],
  [BPC10], [Vault Secrets Manager], [PN4], [Stores and distributes secrets, keys, and certificates],
  [BPC11], [Robot Onboard Computer], [PN5], [Embedded system running navigation firmware],
  [BPC12], [Starlink Relay Agent], [PN6], [Handles satellite uplink communication protocol],
)

#pagebreak()

== Physical Functions (PF)

Physical Functions represent the concrete operations performed by each Behavior Physical Component.

#modern-table(
  columns: (7%, 36%, 10%, 47%),
  caption: [Physical Functions (Part 1)],
  [ID], [Name], [Parent], [Description],
  [PF01], [Ingest MQTT telemetry], [BPC01], [Receives MQTT streams from robot sensors],
  [PF02], [Parse sensor data], [BPC01], [Decodes video, thermal, LiDAR, and GPS data],
  [PF03], [Dispatch navigation command], [BPC02], [Sends movement orders to robots],
  [PF04], [Dispatch action command], [BPC02], [Sends task orders (scan, rescue, return)],
  [PF05], [Write to TimescaleDB], [BPC03], [Persists time-series telemetry data],
  [PF06], [Store media to MinIO], [BPC03], [Saves video and thermal recordings],
  [PF07], [Authenticate API request], [BPC04], [Validates JWT tokens from clients],
  [PF08], [Route API request], [BPC04], [Forwards requests to backend services],
  [PF09], [Build firmware binary], [BPC05], [Compiles and signs robot firmware],
  [PF10], [Run AI training job], [BPC06], [Executes SLAM/detection model training],
)

#modern-table(
  columns: (7%, 36%, 10%, 47%),
  caption: [Physical Functions (Part 2)],
  [ID], [Name], [Parent], [Description],
  [PF11], [Monitor PLC status], [BPC07], [Reads sensor values from factory PLCs],
  [PF12], [Control assembly line], [BPC07], [Sends commands to assembly robots],
  [PF13], [Validate user credentials], [BPC09], [Checks user identity against directory],
  [PF14], [Issue access token], [BPC09], [Generates JWT/OIDC tokens for sessions],
  [PF15], [Track production orders], [BPC08], [Manages manufacturing work orders],
  [PF16], [Manage inventory], [BPC08], [Tracks parts and finished products stock],
  [PF17], [Store secret], [BPC10], [Saves API keys and certificates securely],
  [PF18], [Retrieve secret], [BPC10], [Fetches credentials for authorized services],
  [PF19], [Execute autonomous navigation], [BPC11], [Runs SLAM algorithm on robot hardware],
  [PF20], [Transmit telemetry to cloud], [BPC12], [Sends robot data via satellite link],
)

== PAB Summary

#modern-table(
  columns: (45%, 15%, 25%, 15%),
  caption: [Physical Architecture Summary],
  [Element], [Count], [Requirement], [Status],
  [Physical Nodes], [6], [≥ 5], [✓],
  [Behavior Physical Components], [12], [≥ 8], [✓],
  [Physical Functions], [20], [≥ 10], [✓],
)

#pagebreak()

= Traceability Matrix

The traceability matrix establishes the realization relationships between Physical and Logical domains, ensuring that every logical capability has a corresponding physical implementation.

== BPC → LC Mapping

This table shows which Logical Component(s) each Behavior Physical Component realizes.

#modern-table(
  columns: (10%, 35%, 55%),
  caption: [BPC to LC Realization Mapping],
  [BPC], [Behavior Physical Component], [Realized Logical Component(s)],
  [BPC01], [Telemetry Ingestion Service], [LC1 — NCC Backend],
  [BPC02], [Command Dispatcher Service], [LC1 — NCC Backend, LC7 — Operator Workstation],
  [BPC03], [Mission Storage Service], [LC1 — NCC Backend, LC8 — Client Portal],
  [BPC04], [API Gateway Service], [LC2 — API Gateway, LC8 — Client Portal],
  [BPC05], [GitLab CI/CD Server], [LC4 — Development Platform],
  [BPC06], [GPU Training Cluster], [LC4 — Development Platform],
  [BPC07], [SCADA Controller], [LC5 — Manufacturing System],
  [BPC08], [MES/ERP Module], [LC5 — Manufacturing System],
  [BPC09], [Keycloak IAM Server], [LC6 — IAM & Security Platform],
  [BPC10], [Vault Secrets Manager], [LC6 — IAM & Security Platform],
  [BPC11], [Robot Onboard Computer], [LC3 — Field Communication System],
  [BPC12], [Starlink Relay Agent], [LC3 — Field Communication System],
)

== LC → BPC Mapping

This reverse mapping shows which BPC(s) implement each Logical Component.

#modern-table(
  columns: (10%, 35%, 55%),
  caption: [LC to BPC Implementation Mapping],
  [LC], [Logical Component], [Implemented by BPC(s)],
  [LC1], [NCC Backend], [BPC01, BPC02, BPC03],
  [LC2], [API Gateway], [BPC04],
  [LC3], [Field Communication System], [BPC11, BPC12],
  [LC4], [Development Platform], [BPC05, BPC06],
  [LC5], [Manufacturing System], [BPC07, BPC08],
  [LC6], [IAM & Security Platform], [BPC09, BPC10],
  [LC7], [Operator Workstation], [BPC02],
  [LC8], [Client Portal], [BPC03, BPC04],
)

#pagebreak()

== Traceability Validation

=== All BPC linked to at least 1 LC?

#modern-table(
  columns: (15%, 55%, 15%, 15%),
  caption: [BPC Coverage Validation],
  [BPC ID], [Component Name], [LC Count], [Status],
  [BPC01], [Telemetry Ingestion Service], [1], [✓],
  [BPC02], [Command Dispatcher Service], [2], [✓],
  [BPC03], [Mission Storage Service], [2], [✓],
  [BPC04], [API Gateway Service], [2], [✓],
  [BPC05], [GitLab CI/CD Server], [1], [✓],
  [BPC06], [GPU Training Cluster], [1], [✓],
  [BPC07], [SCADA Controller], [1], [✓],
  [BPC08], [MES/ERP Module], [1], [✓],
  [BPC09], [Keycloak IAM Server], [1], [✓],
  [BPC10], [Vault Secrets Manager], [1], [✓],
  [BPC11], [Robot Onboard Computer], [1], [✓],
  [BPC12], [Starlink Relay Agent], [1], [✓],
)

=== All LC linked to at least 1 BPC?

#modern-table(
  columns: (15%, 55%, 15%, 15%),
  caption: [LC Coverage Validation],
  [LC ID], [Component Name], [BPC Count], [Status],
  [LC1], [NCC Backend], [3], [✓],
  [LC2], [API Gateway], [1], [✓],
  [LC3], [Field Communication System], [2], [✓],
  [LC4], [Development Platform], [2], [✓],
  [LC5], [Manufacturing System], [2], [✓],
  [LC6], [IAM & Security Platform], [2], [✓],
  [LC7], [Operator Workstation], [1], [✓],
  [LC8], [Client Portal], [2], [✓],
)

#success(title: "Traceability Validation Complete")[
  - All 12 BPC are linked to at least 1 LC: *100% coverage*
  - All 8 LC are implemented by at least 1 BPC: *100% coverage*
  - No orphan components detected in either domain
]

#pagebreak()

= Capella Diagrams

This section presents the visual representations of the Logical and Physical architectures as exported from Capella.

== LAB Diagram — Logical Architecture Blank

The LAB diagram shows the hierarchical organization of Logical Actors, Logical Components, and their associated Logical Functions.

#note(title: "Diagram Reading Guide")[
  - *Blue boxes (outer)*: Logical Actors (LA) — system boundaries
  - *Blue boxes (inner)*: Logical Components (LC) — functional groupings
  - *Green boxes*: Logical Functions (LF) — capabilities
]

#figure(
  image(img.lab-diagram, width: 100%),
  caption: [Logical Architecture Blank (LAB) — Actors, Components and Functions],
)

The diagram illustrates the six Logical Actors and their contained components:

- *Operations on Field* contains NCC Backend, API Gateway, and Field Communication System
- *R&D Operations* contains the Development Platform
- *Production Operations* contains the Manufacturing System
- *Security Services* contains the IAM & Security Platform
- *Mission Operators* contains the Operator Workstation
- *B2B Clients* contains the Client Portal

#pagebreak()

== PAB Diagram — Physical Architecture Blank

The PAB diagram shows the deployment of Behavior Physical Components across Physical Nodes.

#note(title: "Diagram Reading Guide")[
  - *Yellow boxes (outer)*: Physical Nodes (PN) — hardware infrastructure
  - *Blue boxes (inner)*: Behavior Physical Components (BPC) — deployed services
  - *Green boxes*: Physical Functions (PF) — concrete operations
]

#figure(
  image(img.pab-diagram, width: 100%),
  caption: [Physical Architecture Blank (PAB) — Nodes, Behavior Components and Physical Functions],
)

The diagram illustrates the six Physical Nodes and their hosted components:

- *AWS Cloud Infrastructure* hosts telemetry, command, storage, and API services
- *R&D Server Cluster* hosts GitLab and GPU training infrastructure
- *OT Industrial Network* hosts SCADA and MES/ERP systems
- *Security Infrastructure* hosts Keycloak IAM and Vault secrets management
- *Robot Fleet* contains the onboard computer running navigation firmware
- *Satellite Gateway* handles Starlink relay communication

#pagebreak()

== Traceability Matrix Visualization

The auto-generated Capella matrix shows the BPC to LC realization relationships.

#figure(
  image(img.traceability-matrix, width: 100%),
  caption: [Traceability Matrix — Physical to Logical Component Realization],
)

#pagebreak()

= Conclusion

This deliverable has successfully documented the system architecture of Novatics using the Capella MBSE methodology. The analysis provides a solid foundation for subsequent BCRP activities, including risk identification and continuity planning.

== Summary of Achievements

#modern-table(
  columns: (25%, 25%, 15%, 20%, 15%),
  caption: [Final Deliverable Summary],
  [Category], [Element], [Count], [Requirement], [Status],
  [LAB], [Logical Actors], [6], [≥ 3], [✓],
  [LAB], [Logical Components], [8], [≥ 5], [✓],
  [LAB], [Logical Functions], [16], [≥ 10], [✓],
  [PAB], [Physical Nodes], [6], [≥ 5], [✓],
  [PAB], [Behavior Physical Components], [12], [≥ 8], [✓],
  [PAB], [Physical Functions], [20], [≥ 10], [✓],
  [Traceability], [BPC → LC Coverage], [12/12], [100%], [✓],
  [Traceability], [LC → BPC Coverage], [8/8], [100%], [✓],
)

== Key Insights for BCRP

The architecture analysis reveals several important considerations for business continuity:

#warning(title: "Critical Dependencies Identified")[
  - *AWS Cloud Infrastructure (PN1)*: Single point of failure for mission-critical services
  - *Chambéry Factory (PN3)*: Sole manufacturing facility with no redundancy
  - *Satellite Gateway (PN6)*: Essential for field operations, dependent on Starlink availability
  - *SLAM/AI expertise*: Concentrated in the R&D cluster with limited redundancy
]

== Next Steps

The following activities should be undertaken as part of the broader BCRP project:

+ *Risk Analysis*: Apply EBIOS RM methodology to identify strategic and operational risks
+ *BIA Completion*: Conduct Business Impact Analysis for each critical component
+ *RTO/RPO Definition*: Establish recovery objectives for each Physical Node
+ *Continuity Strategies*: Develop redundancy and failover approaches
+ *Testing Plan*: Design exercises to validate recovery procedures

#v(2cm)

#align(center)[
  #block(
    width: 100%,
    fill: gray50,
    inset: 1cm,
  )[
    #text(size: 10pt, fill: gray400, tracking: 0.1em)[PREPARED BY]
    #v(0.5cm)
    #text(size: 13pt, fill: black, weight: 600)[
      Tony NGUYEN #h(0.5cm) • #h(0.5cm) Gabin COMORGE #h(0.5cm) • #h(0.5cm) Aurélien BOUDIER
    ]
    #v(0.8cm)
    #text(size: 10pt, fill: gray500)[
      #config.school \
      #config.program \
      #config.date
    ]
  ]
]
