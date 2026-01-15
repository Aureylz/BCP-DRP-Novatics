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
  // ─────────────────────────────────────────────────────────────────────────────
  // Logos
  // ─────────────────────────────────────────────────────────────────────────────
  logo-ynov: "images/logos/logo-ynov.png",
  logo-airbus: "images/logos/logo-airbus.png",

  // ─────────────────────────────────────────────────────────────────────────────
  // Introduction - Novatics Overview
  // ─────────────────────────────────────────────────────────────────────────────
  n-eye: "images/introduction/novatics-n-eye-drone-landscape-2663x1452.png",
  n-seeker: "images/introduction/novatics-n-seeker-drone-landscape-2592x1414.png",
  n-sonar: "images/introduction/novatics-n-sonar-landscape-2499x13003.png",
  trust-zones: "images/introduction/NOV-SSI-2025-B1-A1-C1-01-zones-si-flux.png",

  // ─────────────────────────────────────────────────────────────────────────────
  // Deliverable 1 - Session 1: Capella Diagrams
  // ─────────────────────────────────────────────────────────────────────────────
  lab-diagram: "images/delivrables-1/NOV-BCRP-LAB-logical-architecture-blank.png",
  pab-diagram: "images/delivrables-1/NOV-BCRP-PAB-physical-architecture-blank.png",
  traceability-matrix: "images/delivrables-1/NOV-BCRP-traceability-matrix-physical-logical.png",

  // ─────────────────────────────────────────────────────────────────────────────
  // Deliverable 1 - Session 2: EBIOS RM Diagrams
  // ─────────────────────────────────────────────────────────────────────────────
  ebios-vm-bs: "images/delivrables-1/NOV-SSI-2025-B1-A1-C4-D2-1-biens-supports-valeurs-metier.png",
  ebios-er-gravite: "images/delivrables-1/NOV-SSI-2025-B1-A1-C4-D2-2-evenements-redoutes-gravite.png",
  ebios-socle-ecarts: "images/delivrables-1/NOV-SSI-2025-B1-A1-C4-D2-3-socle-securite-ecarts.png",

  // ─────────────────────────────────────────────────────────────────────────────
  // Deliverable 1 - Session 3: FTA Diagrams
  // ─────────────────────────────────────────────────────────────────────────────
  fta-concepts: "images/delivrables-1/NOV-BCRP-SESSION3-FIG-mtbf-mttr-rto-wrt-concepts.png",
  fta-er02: "images/delivrables-1/NOV-BCRP-ER02-FTA-ai-model-alteration.png",
  fta-er04: "images/delivrables-1/NOV-BCRP-ER04-FTA-firmware-key-theft.png",
  fta-er05: "images/delivrables-1/NOV-BCRP-ER05-FTA-mission-data-unavail.png",
  fta-er11: "images/delivrables-1/NOV-BCRP-ER11-FTA-robot-control-loss.png",
  fta-er11-ie1: "images/delivrables-1/NOV-BCRP-ER11-IE1-FTA-c2-link-loss.png",
  fta-er11-ie2: "images/delivrables-1/NOV-BCRP-ER11-IE2-FTA-robot-autonomy-unavail.png",
  fta-er11-ie3: "images/delivrables-1/NOV-BCRP-ER11-IE3-FTA-mission-backend-unavail.png",
  fta-er11-ie4: "images/delivrables-1/NOV-BCRP-ER11-IE4-FTA-credentials-unavail.png",
  fta-er12: "images/delivrables-1/NOV-BCRP-ER12-FTA-robot-takeover.png",
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
      size: 13pt,
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
    #rect(width: 150pt, height: 4pt, fill: cyan)
    
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
      gutter: 1.4cm,
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

#let toc() = {
  pagebreak()
  
  v(0.3cm)
  
  text(size: 32pt, fill: black, weight: 700)[Table of Contents]
  
  v(0.2cm)
  
  rect(width: 150pt, height: 3pt, fill: cyan)
  
  v(1.5cm)
  
  show outline.entry.where(level: 1): it => {
    v(0.1cm)
    text(weight: 600, fill: black, size: 11pt)[#it]
  }
  
  show outline.entry.where(level: 2): it => {
    v(0.1cm)
    text(fill: gray600, size: 10pt)[#it]
  }
  
  show outline.entry.where(level: 3): it => {
    v(0.1cm)
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

#let modern-table-compact(
  columns: auto, 
  caption: none, 
  inset-y: 2pt, 
  font-size: 8pt, // <-- On ajoute cet argument avec une valeur par défaut
  ..cells
) = {
  let col-count = if type(columns) == array { columns.len() } else { columns }
  let header-cells = cells.pos().slice(0, col-count)
  let body-cells = cells.pos().slice(col-count)
  
  figure(
    kind: table,
    caption: caption,
    block(width: 100%, clip: true)[
      #table(
        columns: columns,
        inset: (x: 6pt, y: inset-y), 
        align: left + horizon,
        stroke: none,
        fill: (x, y) => if y == 0 { rgb("#1a1a1a") } else if calc.odd(y) { rgb("#f5f5f5") } else { white },
        table.header(
          // On utilise font-size ici pour le header (+1pt pour qu'il soit un peu plus grand si tu veux)
          ..header-cells.map(c => text(fill: white, weight: 600, size: font-size + 1pt)[#c])
        ),
        // On utilise font-size ici pour le corps du tableau
        ..body-cells.map(c => text(size: font-size, fill: rgb("#333333"))[#c]),
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

#let info(title: "Info", body) = {
  block(
    width: 100%,
    fill: rgb("#EFF6FF"),
    stroke: (left: 3pt + accent-light),
    inset: (left: 20pt, right: 20pt, y: 16pt),
  )[
    #text(fill: accent-light, weight: 700, size: 10pt)[#title]
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
      v(1pt)
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
    font: ("Liberation Sans"),
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
  
  set heading(numbering: "1.1.1")

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
        v(1pt)
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

#pagebreak()

= Executive Summary

#v(1em)

== Purpose and Scope

#v(1em)

This document presents a comprehensive Business Continuity and Recovery Planning (BCRP) analysis for *Novatics SAS*, a French deeptech scale-up specializing in autonomous rescue robotics. The study encompasses system architecture modeling, cybersecurity risk assessment, and quantitative fault tree analysis to establish a resilient operational framework for mission-critical rescue operations.

#v(1em)

== Key Findings

#v(1em)

=== Risk Profile Assessment

#v(1em)

The EBIOS RM analysis identified *12 feared events*, of which *9 (75%) are classified as Critical (G4)*. This elevated risk profile is consistent with Novatics' positioning in sensitive defense and civil security markets, where system failures can directly endanger human lives.

#v(1em)

#grid(
  columns: (1fr, 1fr),
  gutter: 16pt,
  [
    #block(
      fill: rgb("#FEF2F2"),
      stroke: (left: 3pt + rose),
      inset: (left: 14pt, right: 14pt, y: 14pt),
    )[
      #text(fill: rgb("#DC2626"), weight: 700, size: 11pt)[Highest Risk Events]
      #v(8pt)
      #text(fill: gray700, size: 10pt)[
        *ER11* — Loss of robot control: *2.31%* unavailability \
        *ER12* — Malicious robot takeover: *0.29%* \
        *ER05* — Mission data unavailable: *0.22%*
      ]
    ]
  ],
  [
    #block(
      fill: rgb("#ECFDF5"),
      stroke: (left: 3pt + emerald),
      inset: (left: 14pt, right: 14pt, y: 14pt),
    )[
      #text(fill: rgb("#047857"), weight: 700, size: 11pt)[Security Events (Lower Probability)]
      #v(8pt)
      #text(fill: gray700, size: 10pt)[
        *ER04* — Firmware key theft: *0.09%* \
        *ER02* — AI model alteration: *0.09%* \
        These require strong preventive controls.
      ]
    ]
  ],
)

#v(1em)

=== Security Baseline Status

#v(1em)

Global compliance stands at *58%*, below the *80%* target required for ISO 27001 certification (Q4 2026). Critical gaps include:

- *II 901 compliance*: 25% — DR Lab homologation project required (Q2 2026)
- *IEC 62443 (OT security)*: 40% — Industrial network segmentation gaps
- *ANSSI Hygiene Guide*: 74% — 11 rules pending remediation
- *NIS2 Article 21*: 65% — Mandatory compliance timeline active

#v(1em)

=== Quantitative Risk Analysis (FTA)

#v(1em)

Fault Tree Analysis over a 5-year system lifetime (T = 43,800h) reveals the following unavailability contributions:

#v(0.5em)

#modern-table-compact(
  columns: (12%, 38%, 18%, 17%, 15%),
  caption: [Summary of Feared Events - Unavailability over 5 Years],
  inset-y: 12pt,
  font-size: 10pt,
  [Event], [Description], [Unavailability], [Downtime], [Severity],
  [ER11], [Loss of robot control during mission], [*2.31%*], [≈1,020h], chip("critical"),
  [ER12], [Malicious robot takeover], [*0.29%*], [≈127h], chip("critical"),
  [ER05], [Mission data unavailability], [*0.22%*], [≈96h], chip("high"),
  [ER04], [Firmware signing key theft], [*0.09%*], [≈39h], chip("critical"),
  [ER02], [AI model malicious alteration], [*0.09%*], [≈39h], chip("critical"),
)

#v(1em)

== Priority Recommendations

#v(1em)

#danger(title: "Immediate Actions (Q1 2026)")[
  *1. Robot hardware redundancy* — Power subsystem (MTTR=100h) and sensor suite (MTTR=50h) exceed the 2-hour RTO for mission control. Hot-swap spares and redundant configurations are essential.
  
  *2. Security baseline remediation* — Address E01-E03 gaps: formalize backup policy, audit OT default credentials, and conduct cyber crisis exercise.
  
  *3. NIS2 registration* — Complete Article 21 compliance plan before regulatory deadline.
]

#v(1em)

#warning(title: "Strategic Initiatives (Q2-Q4 2026)")[
  *4. DR Lab homologation* — Complete II 901 compliance for DGA contract continuity.
  
  *5. ML security program* — Training pipeline security and model integrity verification to mitigate ER02 risk (dominant vector: pipeline poisoning at γ=3×10⁻⁴).
  
  *6. ISO 27001 certification* — Progress from 60% to 80% compliance through ISMS implementation.
]

#v(1em)

== Document Structure

#v(1em)

This deliverable is organized into three sessions covering system architecture modeling (Capella LAB/PAB), risk identification (EBIOS RM + BIA), and quantitative reliability analysis (Fault Tree Analysis). All 5 feared events have been modeled with MTBF/MTTR parameters, enabling data-driven prioritization of continuity investments.

#v(1em)

#note(title: "Methodological Framework")[
  The analysis integrates *Capella* (Arcadia/MBSE) for architecture modeling, *EBIOS RM* (ANSSI) for threat-centric risk identification, *BIA* (NIST) for business impact quantification, and *Arbre Analyst/OPSA* for fault tree computation. This multi-methodology approach ensures comprehensive coverage of both operational and security risks.
]

#pagebreak()

= Company Overview: Novatics

#v(1em)

== Corporate Identity

#v(1em)

*Novatics SAS* is a French scale-up founded in March 2018, headquartered in Toulouse, in the heart of the European aerospace ecosystem. The company operates at the intersection of civil security, defense, and deeptech, designing autonomous reconnaissance robots for crisis situations.

#v(1em)

#modern-table(
  columns: (35%, 65%),
  caption: [Novatics Corporate Information],
  [Legal Name], [Novatics SAS],
  [Industry Sector], [Robotics / Defense & Civil Security / DeepTech],
  [Founded], [March 15, 2018 - Toulouse, France],
  [Headquarters], [12 Avenue de l'Aéronautique, 31400 Toulouse],
  [Employees], [85 (projected 120 by end of 2026)],
  [Revenue 2024], [€8.2M (projected €12.5M in 2025)],
  [Development Stage], [Scale-up (Series B completed, Series C planned Q2 2026)],
  [Patents Filed], [12],
)

#v(1em)

== Mission Statement

#v(1em)

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

#v(1em)

The company's signature captures its philosophy: *"Technology is meaningless unless it serves humanity."*

#v(1em)

== Vision 2030

#v(1em)

By 2030, Novatics aims to become the global leader in rescue robotics, with a Novatics robot deployed in every major disaster mission on the planet. The ambitious goal is that no first responder should risk their life unnecessarily when a robot can take their place.

#pagebreak()

== Key Figures

#v(1em)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 12pt,
  block(
    fill: gray50,
    radius: 6pt,
    inset: 16pt,
    width: 103%,
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
      #text(size: 9pt, fill: gray500)[Countries]
    ]
  ],
  block(
    fill: gray50,
    radius: 6pt,
    inset: 16pt,
    width: 97%,
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
    width: 90%,
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

#landscape[
== Global Presence

Novatics operates from 5 physical locations across 4 continents, interconnected through a secure WAN infrastructure. The AWS cloud infrastructure in Paris (eu-west-3) serves as a virtual sixth site.

#v(1em)

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

]

== Product Portfolio

#v(1em)

Novatics designs three main autonomous robot platforms, each specialized for different crisis environments:

#v(1em)

=== N-Eye - Aerial Reconnaissance Drone

#v(1em)

The N-Eye is a multi-rotor drone designed for aerial reconnaissance in post-disaster zones. It provides real-time video and thermal imaging capabilities with autonomous flight patterns.

#v(1em)

#figure(
  image(img.n-eye, width: 100%),
  caption: [N-Eye - Autonomous aerial reconnaissance drone for disaster zones],
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

#pagebreak()

=== N-Seeker - Ground Exploration Rover

#v(1em)

The N-Seeker is a tracked rover designed to navigate rubble and confined spaces in search of survivors after earthquakes or building collapses.

#v(1em)

#figure(
  image(img.n-seeker, width: 100%),
  caption: [N-Seeker - Ground exploration rover for rubble navigation],
)

#v(1em)

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

#pagebreak()

=== N-Sonar - Underwater Search Unit

#v(1em)

The N-Sonar is an autonomous underwater vehicle (AUV) designed for underwater search and rescue operations, particularly in flood scenarios or maritime accidents.

#figure(
  image(img.n-sonar, width: 100%),
  caption: [N-Sonar - Autonomous underwater vehicle for submerged search operations],
)

#v(1em)

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

#pagebreak()

== The Novatics Command Center (NCC)

#v(1em)

The *Novatics Command Center* is the central control platform that enables operators to command and monitor robot fleets during missions. It serves as the nerve center for all field operations.

#v(1em)

#note(title: "NCC Core Capabilities")[
  - Real-time telemetry reception from deployed robots
  - Manual and autonomous piloting command dispatch
  - Mission data storage (video, thermal, GPS, sensor data)
  - Fleet management and multi-robot coordination
  - Integration with client systems via secure APIs
]
#v(1em)

The NCC is deployed both as a cloud-hosted SaaS platform (for most clients) and as a deployable field station (for defense contracts requiring air-gapped operations).

#v(1em)

== Trust Zones Architecture
#v(1em)

Novatics has implemented a defense-in-depth architecture organized into distinct trust zones. Each zone is isolated and named using a Tolkien-inspired naming convention for easy identification.
#v(1em)

#modern-table(
  columns: (20%, 25%, 55%),
  caption: [Novatics Trust Zones],
  [Zone], [Name], [Description],
  [IT Corporate], [La Comté], [Corporate IT systems, office productivity, email, CRM],
  [R&D], [Lothlórien], [Development platforms, source code, AI training],
  [OT Industrial], [Erebor], [Factory floor SCADA/MES systems at Chambéry],
  [Cloud], [Valinor], [AWS-hosted NCC backend, client-facing services],
  [Product], [Dúnedain], [Deployed robots and field communication],
  [Transverse], [Les Istari], [Security infrastructure, IAM, SIEM],
  [DR (Future)], [Mordor], [Isolated environment for classified data (II 901)],
)


#landscape[
  #figure(
    image(img.trust-zones, width: 76%),
    caption: [Novatics Trust Zones Architecture - Defense-in-depth security model],
  )

  == Strategic Contracts and Regulatory Context

  #v(1em)

  === DGA Contract: The N-Recon Program

  #v(1em)

  #warning(title: "Strategic Defense Contract")[
    In April 2025, Novatics signed a €4.8M contract with the French Defense Procurement Agency (DGA) for the development of CBRN reconnaissance robots. This contract involves processing classified information rated "Diffusion Restreinte" (DR), requiring compliance with the II 901 instruction.
  ]

  #v(1em)

  This contract represents a major milestone in Novatics' maturation, transforming it from an agile startup into a defense-grade supplier. The security requirements include network isolation, personnel clearances, and enhanced audit trails.

  #v(1em)

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

]

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

#pagebreak()

= Deliverable 1 - Session 1: System Architecture Modeling

#v(1em)

== Objectives

#v(1em)

The objective of this deliverable is to create a comprehensive Capella model of the Novatics information system, focusing on the Logical and Physical Architectures. This model will serve as the foundation for subsequent Business Continuity and Recovery Planning (BCRP) activities.

#v(1em)

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

#v(1em)

== Methodology

#v(1em)

The Capella modeling follows the Arcadia methodology:

#v(1em)

+ *Logical Architecture (LA)*: Defines WHAT the system must do, independent of implementation
  - Logical Actors (LA): External entities interacting with the system
  - Logical Components (LC): Functional groupings within the system
  - Logical Functions (LF): Capabilities provided by components

+ *Physical Architecture (PA)*: Defines HOW the system is implemented
  - Physical Nodes (PN): Hardware infrastructure hosting the system
  - Behavior Physical Components (BPC): Software/service implementations
  - Physical Functions (PF): Concrete operations performed by components

+ *Traceability*: Links physical implementations to logical specifications through realization relationships

#landscape[
  == Logical Architecture Blank (LAB)

  #v(1em)

  The Logical Architecture describes the functional decomposition of the Novatics system, identifying the actors that interact with it and the logical components that deliver its capabilities.

  #v(1em)

  === Logical Actors (LA)

  #v(1em)

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

  #pagebreak()

  === Logical Components (LC)

  #v(1em)

  Logical Components group related functions within each actor's domain.

  #v(1em)

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

]

=== Logical Functions (LF)

#v(1em)

Logical Functions define the capabilities provided by each Logical Component.

#v(1em)

#[
  #set par(leading: 0.5em)

  #modern-table-compact(
    columns: (8%, 30%, 10%, 52%),
    caption: [Logical Functions],
    inset-y: 14pt,
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
]


#pagebreak()

== Physical Architecture Blank (PAB)

#v(1em)

The Physical Architecture describes the concrete implementation of the system, mapping logical concepts to actual hardware infrastructure and software deployments.

#v(1em)

=== Physical Nodes (PN)

#v(1em)

Physical Nodes represent the hardware infrastructure hosting the Novatics system.

#v(1em)

#modern-table-compact(
  columns: (8%, 30%, 62%),
  caption: [Physical Nodes],
  inset-y: 14pt,
  font-size: 10pt,
  [ID], [Name], [Description],
  [PN1], [AWS Cloud Infrastructure], [Cloud servers in Paris region (eu-west-3) hosting mission services],
  [PN2], [R&D Server Cluster], [On-premise servers at Toulouse for development and AI training],
  [PN3], [OT Industrial Network], [Factory floor systems at the Chambéry manufacturing plant],
  [PN4], [Security Infrastructure], [Centralized security servers at Toulouse HQ],
  [PN5], [Robot Fleet], [Embedded hardware units inside deployed robots],
  [PN6], [Satellite Gateway], [Starlink relay infrastructure for field-to-cloud communication],
)

#pagebreak()

=== Behavior Physical Components (BPC)

#v(1em)

Behavior Physical Components represent software services and applications deployed on Physical Nodes.

#v(1em)

#modern-table-compact(
  columns: (10%, 29%, 10%, 51%),
  caption: [Behavior Physical Components],
  inset-y: 15pt,
  font-size: 9pt,
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

=== Physical Functions (PF)

#v(1em)

Physical Functions represent the concrete operations performed by each Behavior Physical Component.

#v(1em)

#modern-table-compact(
  columns: (7%, 36%, 10%, 47%),
  caption: [Physical Functions],
  inset-y: 11pt,
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

#pagebreak()

== Traceability Matrix

#v(1em)

The traceability matrix establishes the realization relationships between Physical and Logical domains, ensuring that every logical capability has a corresponding physical implementation.

#v(1em)

=== BPC → LC Mapping

#v(1em)

This table shows which Logical Component(s) each Behavior Physical Component realizes.

#v(1em)

#modern-table-compact(
  columns: (10%, 35%, 55%),
  caption: [BPC to LC Realization Mapping],
  inset-y: 6pt,
  font-size: 9pt,
  [BPC], [Behavior Physical Component], [Realized Logical Component(s)],
  [BPC01], [Telemetry Ingestion Service], [LC1 - NCC Backend],
  [BPC02], [Command Dispatcher Service], [LC1 - NCC Backend, LC7 - Operator Workstation],
  [BPC03], [Mission Storage Service], [LC1 - NCC Backend, LC8 - Client Portal],
  [BPC04], [API Gateway Service], [LC2 - API Gateway, LC8 - Client Portal],
  [BPC05], [GitLab CI/CD Server], [LC4 - Development Platform],
  [BPC06], [GPU Training Cluster], [LC4 - Development Platform],
  [BPC07], [SCADA Controller], [LC5 - Manufacturing System],
  [BPC08], [MES/ERP Module], [LC5 - Manufacturing System],
  [BPC09], [Keycloak IAM Server], [LC6 - IAM & Security Platform],
  [BPC10], [Vault Secrets Manager], [LC6 - IAM & Security Platform],
  [BPC11], [Robot Onboard Computer], [LC3 - Field Communication System],
  [BPC12], [Starlink Relay Agent], [LC3 - Field Communication System],
)

#v(1em)

=== LC → BPC Mapping

#v(1em)

This reverse mapping shows which BPC(s) implement each Logical Component.

#v(1em)

#modern-table-compact(
  columns: (10%, 35%, 55%),
  caption: [LC to BPC Implementation Mapping],
  inset-y: 7pt,
  font-size: 9pt,
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

#v(1em)

The following tables validate that all Behavior Physical Components are linked to at least one Logical Component and vice versa, ensuring complete traceability.\

#v(1em)

=== All BPC linked to at least 1 LC?

#v(1em)

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

#pagebreak()

=== All LC linked to at least 1 BPC?

#v(1em)

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

#landscape[
  == Capella Diagrams

  #v(1em)

  This section presents the visual representations of the Logical and Physical architectures as exported from Capella.

  #v(1em)

  === LAB Diagram - Logical Architecture Blank

  #v(1em)

  The LAB diagram shows the hierarchical organization of Logical Actors, Logical Components, and their associated Logical Functions.

  #v(1em)

  #figure(
    image(img.lab-diagram, width: 112%),
    caption: [Logical Architecture Blank (LAB) - Actors, Components and Functions],
  )

  #pagebreak()

  === PAB Diagram - Physical Architecture Blank

  #v(1em)

  The PAB diagram shows the deployment of Behavior Physical Components across Physical Nodes.

  #figure(
    image(img.pab-diagram, width: 92%),
    caption: [Physical Architecture Blank (PAB) - Nodes, Behavior Components and Physical Functions],
  )


  #pagebreak()

  === Traceability Matrix Visualization
  
  #v(1em)

  The auto-generated Capella matrix shows the BPC to LC realization relationships.

  #v(1em)

  #figure(
    image(img.traceability-matrix, width: 110%),
    caption: [Traceability Matrix - Physical to Logical Component Realization],
  )
]


// ═══════════════════════════════════════════════════════════════════════════════
// BCRP PROJECT - Deliverable 1 - Session 2: Value & Feared Events
// EBIOS RM Workshop 1 + Business Impact Analysis
// ═══════════════════════════════════════════════════════════════════════════════

= Deliverable 1 - Session 2: Value & Feared Events

#v(1em)

This section presents the results of our risk identification analysis using two complementary methodologies: the *EBIOS Risk Manager* framework (ANSSI) and the *Business Impact Analysis* (NIST). Both approaches converge toward identifying what is valuable to Novatics and what events could threaten these assets.

#v(1em)

#note(title: "Methodological Approach")[
  The analysis follows a three-step process:
  - *Step 1*: Define the organizational context (covered in Session 1 - Capella analysis)
  - *Step 2*: Identify business values and their supporting assets
  - *Step 3*: Determine feared events and assess their severity
]

#v(1em)

== Objectives

#v(1em)

This session aims to:
- Identify and classify *business values* (informational assets) critical to Novatics
- Map *supporting assets* (IS components) that sustain these values
- Characterize *feared events* and assess their severity
- Evaluate the current *security baseline* against applicable frameworks
- Define *recovery objectives* (MTD/RTO/RPO) for business continuity planning

#v(1em)

== Methodology

#v(1em)

The analysis combines two complementary approaches:

#v(1em)

#modern-table(
  columns: (18%, 38%, 44%),
  caption: [Dual Methodology Approach],
  [Framework], [Focus], [Deliverables],
  [EBIOS RM], [Risk identification from threat perspective], [Business values, feared events, security baseline],
  [BIA (NIST)], [Impact analysis from business perspective], [Recovery objectives, process priorities],
)

#v(1em)

== EBIOS RM Workshop 1: Scope and Security Baseline

#v(1em)

The EBIOS Risk Manager methodology, developed by ANSSI, provides a structured approach to cybersecurity risk assessment. Workshop 1 establishes the foundation by identifying business values, supporting assets, feared events, and the current security posture.

#landscape[

  === Study Framework

  #v(1em)

  #modern-table-compact(
    inset-y: 18pt,
    columns: (30%, 50%),
    caption: [EBIOS RM Study Parameters],
    font-size: 10pt,
    [Parameter], [Value],
    [Study Object], [Novatics SI - Global Perimeter + DR Lab],
    [Nature], [Hybrid Industrial Information System (IT/OT/Cloud/Product)],
    [Owner], [Alexandre DUBOIS, CEO],
    [Security Officer], [Mei Lin ZHAO, CISO],
    [Geographic Scope], [Toulouse (HQ), Chambéry (Factory), International Offices],
    [Organizational Scope], [6 Trust Zones (IT, R&D, OT, Cloud, Product, DR)],
    [Strategic Cycle], [3 years (2026-2028)],
    [Operational Cycle], [Annual review],
  )

  #v(1em)

  === Organizational Missions

  #v(1em)

  The missions represent the fundamental purposes of Novatics whose failure could compromise its strategic objectives. Six missions were identified and prioritized:

  #v(1em)

  #modern-table-compact(
    columns: (6%, 24%, 50%, 20%),
    caption: [Novatics Mission Inventory],
    inset-y: 11pt,
    font-size: 10pt,
    [ID], [Mission], [Description], [Priority],
    [M1], [Design rescue robots], [Develop and continuously improve N-Eye, N-Seeker, and N-Sonar robots for victim search in hostile environments], chip("critical"),
    [M2], [Produce and deliver robots], [Manufacture robots with required quality (IP68, MIL-STD-810H) and deliver to clients on time], chip("critical"),
    [M3], [Provide operational support], [Deliver 24/7 technical support to operators during rescue missions], chip("critical"),
    [M4], [Protect intellectual property], [Secure SLAM/AI algorithms, patents, and differentiating know-how], chip("high"),
    [M5], [Honor contractual commitments], [Fulfill client contracts, especially DGA N-RECON (€4.8M)], chip("high"),
    [M6], [Ensure regulatory compliance], [Comply with NIS2, GDPR, II 901 (DR perimeter), export control], chip("high"),
  )

  #v(1em)

  #warning(title: "Critical Mission Justification")[
    Missions M1, M2, and M3 are rated *Critical* because they directly impact human lives. A failure during a rescue operation could have lethal consequences. Mission M3 requires RTO < 4 hours.
  ]

  == Business Values (Valeurs Métier)

  #v(1em)

  Business values represent the informational assets that a threat source would target to achieve its objectives. Eight essential business values were identified based on their importance to organizational missions.

  #v(1em)

  === Business Value Inventory

  #v(1em)

  #modern-table-compact(
    columns: (5%, 18%, 52%, 12%, 13%),
    caption: [Business Value Register with DICP Classification],
    inset-y: 9pt,
    font-size: 10pt,
    [ID], [Business Value], [Description], [Owner], [Criticality],
    [VM1], [SLAM and AI Algorithms], [Source code for autonomous navigation (SLAM) and victim detection (AI). Core technological differentiator. 4+ years of R&D, 3 international patents.], [CTO], chip("critical"),
    [VM2], [Embedded Firmware], [Robot firmware source code (N-Eye, N-Seeker, N-Sonar) and signing keys. Integrity critical for operational safety.], [CTO], chip("critical"),
    [VM3], [Field Mission Data], [Telemetry, 3D maps, video/thermal recordings from rescue missions. Some missions generate classified data.], [COO], chip("critical"),
    [VM4], [Production Plans], [Bill of materials, assembly procedures, robot calibration parameters. Industrial know-how.], [COO], chip("high"),
    [VM5], [Client Data], [Contractual information, contacts, order history, support records. Odoo CRM database.], [CCO], chip("medium"),
    [VM6], [DR Information], [Restricted Diffusion classified data related to DGA N-RECON contract. DR Lab under deployment.], [CISO], chip("critical"),
    [VM7], [Secrets and Credentials], [Cryptographic keys, API secrets, PKI certificates, access credentials. Stored in HashiCorp Vault.], [CISO], chip("critical"),
    [VM8], [Mission Control Process], [Ability to coordinate robots in real-time during rescue interventions via NCC.], [COO], chip("critical"),
  )

  === DICP Security Requirements

  Each business value has been characterized according to the four security dimensions:

  #modern-table-compact(
    columns: (10%, 30%, 15%, 15%, 15%, 15%),
    caption: [DICP Matrix - Business Values Security Requirements],
    inset-y: 15pt,
    font-size: 10pt,
    [ID], [Business Value], [D], [I], [C], [P],
    [VM1], [SLAM/AI Algorithms], [3], [4], [4], [3],
    [VM2], [Embedded Firmware], [3], [4], [4], [4],
    [VM3], [Field Mission Data], [4], [4], [3], [4],
    [VM4], [Production Plans], [3], [4], [3], [2],
    [VM5], [Client Data], [3], [3], [3], [3],
    [VM6], [DR Information], [3], [4], [4], [4],
    [VM7], [Secrets/Credentials], [4], [4], [4], [4],
    [VM8], [Mission Control], [4], [4], [3], [4],
  )

  #note(title: "DICP Scale")[
    *D* = Availability, *I* = Integrity, *C* = Confidentiality, *P* = Proof (Traceability). Scale: 1 (low) to 4 (critical).
  ]

  #pagebreak()

  == Supporting Assets (Biens Supports)

  #v(1em)

  Supporting assets are the IS components on which business values rely. The identification is based on the critical asset inventory and Capella architecture analysis from Session 1.

  #v(1em)

  === Critical Supporting Assets

  #v(1em)

  Eleven critical supporting assets were identified that underpin the business values.

  #v(1em)

  #modern-table-compact(
    columns: (6%, 16%, 20%, 12%, 18%, 28%),
    caption: [Supporting Assets Inventory],
    inset-y: 5pt,
    font-size: 9pt,
    [ID], [Name], [Type], [Zone], [Business Values], [Criticality],
    [BS01], [fondcombe], [GitLab CE], [R&D], [VM1, VM2], chip("critical"),
    [BS02], [fangorn], [GPU Cluster], [R&D], [VM1], chip("high"),
    [BS03], [anneau-unique], [HSM Thales Luna], [R&D], [VM2, VM7], chip("critical"),
    [BS04], [miroir-galadriel], [HashiCorp Vault], [Transverse], [VM7], chip("critical"),
    [BS05], [Novatics Cloud], [AWS EKS/RDS/S3], [Cloud], [VM3, VM8], chip("critical"),
    [BS06], [telperion], [NCC Backend], [Cloud], [VM8], chip("critical"),
    [BS07], [gandalf], [Keycloak IAM], [Transverse], [VM7], chip("critical"),
    [BS08], [dale / khazad-dum], [MES / SCADA], [OT], [VM4], chip("high"),
    [BS09], [Robots N-Series], [Products (fleet)], [Product], [VM3, VM8], chip("critical"),
    [BS10], [Lab DR (projet)], [Classified Zone], [DR], [VM6], chip("critical"),
    [BS11], [bree], [ERP Odoo], [IT], [VM5], chip("medium"),
  )

  === Business Value to Supporting Asset Matrix

  #v(1em)

  #modern-table-compact(
    columns: (19%, 7%, 7%, 7%, 7%, 7%, 7%, 7%, 7%, 7%, 7%, 7%),
    caption: [VM/BS Correspondence Matrix - Mapping Business Values to Supporting Assets],
    inset-y: 18pt,
    font-size: 11pt,
    [VM \\ BS], [BS01], [BS02], [BS03], [BS04], [BS05], [BS06], [BS07], [BS08], [BS09], [BS10], [BS11],
    [VM1 - SLAM/AI], [●], [●], [], [], [], [], [], [], [], [], [],
    [VM2 - Firmware], [●], [], [●], [], [], [], [], [], [], [], [],
    [VM3 - Mission Data], [], [], [], [], [●], [], [], [], [●], [], [],
    [VM4 - Production], [], [], [], [], [], [], [], [●], [], [], [],
    [VM5 - Client Data], [], [], [], [], [], [], [], [], [], [], [●],
    [VM6 - DR Info], [], [], [], [], [], [], [], [], [], [●], [],
    [VM7 - Secrets], [], [], [●], [●], [], [], [●], [], [], [], [],
    [VM8 - Mission Ctrl], [], [], [], [], [●], [●], [], [], [●], [], [],
  )

  #v(1cm)

  #figure(
    image(img.ebios-vm-bs, width: 78%),
    caption: [Business Values to Supporting Assets Mapping - Visual Representation],
  )

#pagebreak()

  === External Dependencies

  #v(1em)

  #modern-table(
    columns: (22%, 28%, 28%, 22%),
    caption: [Third-Party Dependencies],
    [Third Party], [Nature], [Business Values], [Criticality],
    [AWS (eu-west-3)], [Cloud hosting], [VM3, VM8], chip("critical"),
    [Safyra.io], [IoT SaaS Platform], [VM8], chip("critical"),
    [Thales], [HSM maintenance, DR training], [VM2, VM6, VM7], chip("high"),
    [Orange Business], [MPLS Connectivity], [All], chip("high"),
  )

  #v(1em)

  #danger(title: "Single Points of Failure")[
    The dependency analysis reveals critical SPOFs:
    - *AWS eu-west-3*: Hosts all mission-critical services (NCC, telemetry)
    - *Safyra.io*: Essential for robot fleet management, no fallback
    - *Orange MPLS*: Single WAN provider connecting all sites
  ]


  #pagebreak()

  == Feared Events and Severity Assessment

  #v(1em)

  Feared events represent the negative impacts on business values that threat sources could cause. Twelve feared events were identified, with severity assessed on a 4-level scale.

  #v(1em)

  === Severity Scale Definition

  #v(1em)

  #modern-table-compact(
    columns: (6%, 11%, 45%, 40%),
    caption: [Severity Scale - Novatics Context],
    inset-y: 20pt,
    font-size: 10pt,
    [Level], [Label], [Generic Description], [Novatics Example],
    [G4], [Critical], [Irreversible impacts, life endangerment, organizational survival threat], [Robot failure causing injury/death, SLAM algorithm theft],
    [G3], [Serious], [Significant reversible impacts, major sanctions, key client loss], [DR data disclosure, NIS2 fine, DGA contract loss],
    [G2], [Significant], [Limited impacts, temporary disruption, remediation costs], [Temporary production unavailability, minor leak],
    [G1], [Negligible], [Minor impacts, manageable through standard processes], [Spam, isolated incident without operational impact],
  )

  #pagebreak()

  === Feared Events Register

  #v(1em)

  #modern-table-compact(
    columns: (5%, 6%, 40%, 12%, 37%),
    caption: [Feared Events Inventory with Severity Assessment],
    inset-y: 8pt,
    font-size: 10pt,
    [ID], [VM], [Feared Event], [Severity], [Potential Impacts],
    [ER01], [VM1], [Disclosure of SLAM/AI algorithms to competitor or hostile state], chip("critical"), [Loss of competitive advantage, patent compromise],
    [ER02], [VM1], [Malicious alteration of AI models (backdoor, bias)], chip("critical"), [Defective robots, failed rescue missions, lives at risk],
    [ER03], [VM2], [Firmware compromise (malicious code injection)], chip("critical"), [Robot takeover, sabotage, weaponization],
    [ER04], [VM2], [Theft of firmware signing keys (HSM compromise)], chip("critical"), [Fraudulent signed firmware, supply chain attack],
    [ER05], [VM3], [Mission data unavailability during intervention], chip("critical"), [Failed rescue, victims not located],
    [ER06], [VM3], [Disclosure of classified mission data], chip("high"), [ANSSI sanctions, clearance loss, market exclusion],
    [ER07], [VM4], [Production plan theft and industrial know-how], chip("high"), [Counterfeiting, unfair competition, market loss],
    [ER08], [VM5], [Massive client data breach (GDPR)], chip("high"), [CNIL sanctions (4% revenue), reputation damage],
    [ER09], [VM6], [DR information compromise (DGA contract)], chip("critical"), [DGA contract termination, criminal sanctions],
    [ER10], [VM7], [Secrets and credentials theft (Vault compromise)], chip("critical"), [Generalized unauthorized access, total SI compromise],
    [ER11], [VM8], [Loss of robot control during mission], chip("critical"), [Mission failure, injuries/deaths, liability],
    [ER12], [VM8], [Malicious takeover of robot during mission], chip("critical"), [Sabotage, weaponization, international incident],
  )

  #pagebreak()

  #figure(
    image(img.ebios-er-gravite, width: 89%),
    caption: [Feared Events Severity Distribution - Visual Analysis],
  )
]

=== Feared Events Summary

#v(1em)

The analysis reveals a concentration of critical risks (G4) on business values related to rescue operations and intellectual property:

#v(1em)

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #block(
      fill: rgb("#FEF2F2"),
      stroke: (left: 3pt + rose),
      inset: (left: 10pt, right: 10pt, y: 16pt),
    )[
      #text(fill: rgb("#DC2626"), weight: 700, size: 10pt)[G4 Critical Events (9)]
      #v(6pt)
      #text(fill: gray700, size: 10pt)[
        - 2 related to SLAM/AI algorithms (VM1)
        - 2 related to embedded firmware (VM2)
        - 1 related to mission data (VM3)
        - 1 related to DR information (VM6)
        - 1 related to secrets/credentials (VM7)
        - 2 related to mission control (VM8)
      ]
    ]
  ],
  [
    #block(
      fill: rgb("#FFFBEB"),
      stroke: (left: 3pt + amber),
      inset: (left: 10pt, right: 10pt, y: 16pt),
    )[
      #text(fill: rgb("#B45309"), weight: 700, size: 10pt)[G3 Serious Events (3)]
      #v(6pt)
      #text(fill: gray700, size: 10pt)[
        - 1 related to classified mission data (VM3)
        - 1 related to production plans (VM4)
        - 1 related to client data / GDPR (VM5)
      ]
    ]
  ],
)

#v(1em)

#rect(width: 100%, height: 2pt, fill: cyan)

#v(1em)

#danger(title: "Risk Profile Analysis")[
  The ratio of 9 critical events / 12 total events (75%) reflects Novatics' high-risk profile, consistent with its positioning on sensitive markets (Defense, civil security). This concentration of G4 events will be prioritized in subsequent analysis workshops.
]

#landscape[

  == Security Baseline Assessment

  #v(1em)

  The security baseline represents security measures that the organization must apply regardless of risk analysis. It provides the first level of protection against "common" risks.

  #v(1em)

  === Applicable Reference Frameworks

  #v(1em)

  #modern-table-compact(
    columns: (18%, 25%, 15%, 42%),
    caption: [Security Reference Framework Applicability],
    inset-y: 18pt,
    font-size: 10pt,
    [Type], [Framework], [Applicability], [Novatics Scope],
    [EU Regulatory], [NIS2 Directive], [Mandatory], [Important Entity - Manufacturing Sector],
    [EU Regulatory], [GDPR], [Mandatory], [Client/employee personal data processing],
    [FR Regulatory], [II 901], [Mandatory], [DR Lab - DGA N-RECON contract],
    [FR Regulatory], [IGI 1300], [Mandatory], [Clearances, DR information protection],
    [Normative], [ISO 27001:2022], [Target Q4 2026], [ISMS - Global perimeter],
    [Normative], [IEC 62443], [Recommended], [OT Zone - Chambéry production],
    [Best Practice], [ANSSI Hygiene Guide], [Recommended], [42 rules - Global perimeter],
  )

  #pagebreak()

  === Compliance Status Summary

  #v(1em)

  #modern-table-compact(
    columns: (30%, 12%, 12%, 12%, 12%, 22%),
    caption: [Security Baseline Compliance Status by Framework],
    inset-y: 13pt,
    font-size: 10pt,
    [Framework], [Compliance], [Gaps], [Priority], [Target], [Notes],
    [ANSSI Hygiene Guide (42 rules)], [74%], [11 rules], chip("high"), [85%], [Network segmentation gaps],
    [NIS2 - Art. 21 (10 measures)], [65%], [4 partial], chip("critical"), [100%], [Mandatory by Oct 2024],
    [GDPR (11 key articles)], [85%], [3 partial], chip("medium"), [95%], [DPO appointed],
    [II 901 (18 requirements)], [25%], [14 to implement], chip("critical"), [100%], [DR Lab project],
    [ISO 27001:2022 (7 clauses)], [60%], [Gap analysis], chip("high"), [80%], [Certification Q4 2026],
    [IEC 62443 (6 parts)], [40%], [Gap analysis], chip("high"), [70%], [OT security plan],
    [*Global Average*], [*58%*], [], [], [*80%*], [],
  )

  #v(1em)

  #warning(title: "Compliance Gap Analysis")[
    The global compliance rate of *58%* is below the *80%* target for ISO 27001 certification (Q4 2026). Key improvement levers: *II 901* (+50 pts via DR Lab), *IEC 62443* (+30 pts via OT security plan), *ISO 27001* (+20 pts via ISMS program).
  ]

  #pagebreak()

  #figure(
    image(img.ebios-socle-ecarts, width: 100%),
    caption: [Security Baseline Compliance Gaps - Radar Visualization],
  )

  #v(0.5cm)

  #pagebreak()

  === Critical Gaps Identified

  #v(1em)

  #modern-table(
    columns: (6%, 28%, 36%, 15%, 15%),
    caption: [Major Security Gaps and Corrective Actions],
    [ID], [Gap], [Corrective Action], [Owner], [Deadline],
    [E01], [Backup policy not formalized], [Draft and validate ISSP backup chapter], [CISO], [Q1 2026],
    [E02], [Default passwords on OT equipment], [Systematic audit and change + documentation], [IT Mgr], [Q1 2026],
    [E03], [Incident procedure not tested], [Organize cyber crisis exercise], [CISO], [Q1 2026],
    [E04], [Developer security training missing], [Deploy Secure Coding program], [CTO], [Q2 2026],
    [E05], [ISO 27001 gap (40%)], [ISMS compliance plan], [CISO], [Q4 2026],
    [E06], [IEC 62443 gap - OT zone], [OT security audit + remediation plan], [COO], [Q2 2026],
    [E07], [DR Lab not II 901 compliant], [DR Lab project (design → homologation)], [CISO], [Q2 2026],
    [E08], [NIS2 compliance partial], [Registration + Art. 21 compliance plan], [CISO], [Q4 2025],
  )

  #v(1em)

  #success(title: "Study Continuation Decision")[
    The identified gaps (Hygiene Guide: 74% compliant, ISO 27001: 60%) are significant but do not block study continuation. Risk scenarios will exploit these vulnerabilities to assess their actual severity.

    *Exception*: The DR Lab perimeter (II 901) is not yet operational. Risk analysis will focus on system design to ensure compliance before production deployment.
  ]

  #pagebreak()

  == Business Impact Analysis (BIA)

  #v(1em)

  The Business Impact Analysis provides a complementary perspective by focusing on business processes, their resource requirements, and recovery priorities. This NIST-based approach helps define quantitative recovery objectives.

  #v(1em)

  === Mission/Business Processes

  #v(1em)

  #modern-table-compact(
    columns: (8%, 22%, 70%),
    caption: [Critical Mission/Business Processes],
    inset-y: 16pt,
    font-size: 11pt,
    [ID], [Process], [Description],
    [PM-01], [Field Mission Control], [Real-time coordination of robots during rescue operations via NCC. Requires 24/7 availability and sub-second latency.],
    [PM-02], [R&D Development], [SLAM algorithm enhancement, AI model training, firmware development. Core innovation engine.],
    [PM-03], [Robot Production], [Manufacturing, assembly, calibration, and quality testing at Chambéry facility.],
    [PM-04], [24/7 Client Support], [Technical assistance to operators during missions. Critical for mission success.],
    [PM-05], [Commercial Management], [Sales pipeline, contracts, client relationship management via Odoo CRM.],
  )

  === System Resource Components

  #v(1em)

  #modern-table-compact(
    columns: (8%, 25%, 22%, 45%),
    caption: [System Resource Components for BIA],
    inset-y: 18pt,
    font-size: 11pt,
    [ID], [Resource/Component], [Platform/Version], [Description],
    [SR-01], [NCC Backend], [AWS EKS / Kubernetes], [Mission control platform - telemetry, commands, storage],
    [SR-02], [GitLab CI/CD], [GitLab CE 16.x], [Source code repository, CI/CD pipelines],
    [SR-03], [GPU Cluster], [NVIDIA DGX A100], [AI model training infrastructure],
    [SR-04], [SCADA/MES], [Siemens / Custom], [Factory automation and production tracking],
    [SR-05], [Keycloak IAM], [Keycloak 22.x], [Identity federation, SSO, access management],
    [SR-06], [HashiCorp Vault], [Vault Enterprise], [Secrets management, PKI, encryption keys],
    [SR-07], [Robot Fleet], [N-Eye/N-Seeker/N-Sonar], [Deployed autonomous robots with embedded systems],
    [SR-08], [Starlink Gateway], [Starlink Business], [Satellite communication relay for field operations],
  )

  === Recovery Objectives Matrix

  #v(1em)

  #modern-table-compact(
    inset-y: 16pt,
    font-size: 11pt,
    columns: (10%, 35%, 15%, 15%, 25%),
    caption: [Recovery Time and Point Objectives by Process],
    [Process], [Description], [MTD], [RTO], [RPO],
    [PM-01], [Field Mission Control], [4 hours], [2 hours], [15 min (real-time)],
    [PM-02], [R&D Development], [72 hours], [48 hours], [4 hours (last commit)],
    [PM-03], [Robot Production], [48 hours], [24 hours], [8 hours (last batch)],
    [PM-04], [24/7 Client Support], [4 hours], [2 hours], [1 hour],
    [PM-05], [Commercial Management], [72 hours], [48 hours], [24 hours],
  )

  #v(1em)

  #note(title: "Recovery Objective Definitions")[
    - *MTD* (Maximum Tolerable Downtime): Maximum time before business impact becomes unacceptable
    - *RTO* (Recovery Time Objective): Target time to restore service after disruption
    - *RPO* (Recovery Point Objective): Maximum acceptable data loss measured in time
  ]

  === Recovery Priority Matrix

  #v(1em)

  #modern-table(
    columns: (10%, 32%, 38%, 20%),
    caption: [System Resource Recovery Priorities],
    [Priority], [System Resource], [Justification], [RTO Target],
    [1], [NCC Backend (SR-01)], [Mission-critical - human lives depend on availability], [2 hours],
    [2], [Keycloak IAM (SR-05)], [Authentication required for all system access], [2 hours],
    [3], [Starlink Gateway (SR-08)], [Field communication - no alternative during missions], [4 hours],
    [4], [HashiCorp Vault (SR-06)], [Secrets required for system operations], [4 hours],
    [5], [SCADA/MES (SR-04)], [Production continuity], [24 hours],
  )

]

== Session 2 Summary

#v(1em)

=== EBIOS RM Workshop 1 Deliverables

#v(1em)

#success(title: "Workshop 1 Completed Items")[
  - *6 missions* identified (3 critical, 3 elevated)
  - *8 business values* inventoried with DICP classification
  - *11 supporting assets* mapped to business values
  - *12 feared events* characterized (9 G4, 3 G3)
  - *Security baseline* evaluated at 58% compliance
  - *8 major gaps* identified with corrective action plan
]

#v(1em)

=== Business Impact Analysis Deliverables

#v(1em)

#success(title: "BIA Completed Items")[
  - *5 mission/business processes* identified and prioritized
  - *8 system resource components* inventoried
  - *5 recovery priorities* established with RTO/RPO objectives
  - *MTD/RTO/RPO matrix* defined for each critical process
]

#v(1em)

=== Key Findings for BCRP Planning

#v(1em)

#danger(title: "Critical Risks Requiring Immediate Attention")[
  1. *Mission Control Availability*: PM-01 requires RTO < 2h with 99.9% availability
  2. *Single Points of Failure*: AWS eu-west-3, Safyra.io, Orange MPLS
  3. *Intellectual Property Protection*: SLAM/AI algorithms (VM1) highest value target
  4. *DR Lab Compliance*: II 901 at 25% - blocking for DGA contract
  5. *OT Security Gap*: IEC 62443 at 40% - Chambéry factory exposed
]

#landscape[

  === Inputs for Next Sessions
  
  #v(1em)

  The value identification and feared events analysis provides essential inputs for subsequent BCRP activities:

  #v(1em)

  #modern-table(
    columns: (22%, 43%, 35%),
    caption: [Session 2 Outputs for BCRP Continuation],
    [Output], [Content], [Usage],
    [Business Values], [8 VM with DICP classification], [Prioritization of protection measures],
    [Supporting Assets], [11 BS with criticality levels], [Technical architecture design],
    [Feared Events], [12 ER with severity assessment], [Continuity scenario development],
    [Recovery Objectives], [MTD/RTO/RPO per process], [Technical solution sizing],
    [Security Gaps], [8 major gaps identified], [Risk treatment planning],
  )
]

#v(1em)


// =============================================================================
// SESSION 3 — FAULT TREE ANALYSIS & RELIABILITY METRICS
// BCRP Project - Novatics System
// Horizon: 5 years (43,800 hours)
// =============================================================================

= Deliverable 1 - Session 3: Fault Tree Analysis & Reliability

#v(1em)

== Introduction

#v(0.5em)

This session establishes the quantitative reliability framework for the Novatics system's Business Continuity and Recovery Planning (BCRP). Building upon the risk analysis from Sessions 1 and 2, we now quantify the probability of occurrence for each feared event using Fault Tree Analysis (FTA) with justified MTBF (Mean Time Between Failures) and MTTR (Mean Time To Repair) parameters.

#v(0.5em)

#info(title: "Session 3 Deliverables")[
  - *5 Feared Events* with complete Fault Tree Analysis
  - *System lifetime definition*: 5 years = 43,800 hours
  - *Probability models*: GLM (repairable) and Gamma (one-time events)
  - *Justified MTBF/MTTR values* with budget decomposition
  - *Arbre Analyst files* (.opsa) for each feared event
]

#v(1em)

== Reliability Fundamentals

#v(0.5em)

=== Key Metrics Definitions

#v(0.5em)

#modern-table-compact(
  columns: (10%, 28%, 62%),
  caption: [Reliability Metrics Definitions],
  inset-y: 8pt,
  font-size: 9pt,
  [Metric], [Full Name], [Definition],
  [*MTBF*], [Mean Time Between Failures], [Average operating time between consecutive failures (hours). For exponential model: MTBF = 1/λ],
  [*MTTF*], [Mean Time To (first) Failure], [Average time to first failure for non-repairable items],
  [*MTTR*], [Mean Time To Repair], [Average time to restore system after failure. Includes detection, diagnosis, repair, and validation],
  [*MUT*], [Mean Up Time], [Average operational time after a repair cycle],
  [*MDT*], [Mean Down Time], [Average downtime per failure occurrence],
  [*λ*], [Failure Rate], [Number of failures per hour. λ = 1/MTBF],
  [*μ*], [Repair Rate], [Number of repairs per hour. μ = 1/MTTR],
)

#v(0.5em)

=== Probability Models Used

#v(0.5em)

==== GLM Model (Repairable Systems)

The Generalized Linear Model (GLM) is used for repairable components that can fail and be restored multiple times over the system lifetime. The instantaneous unavailability is given by:

#align(center)[
  #box(
    fill: gray100,
    inset: 12pt,
    radius: 4pt,
  )[
    #set text(size: 15pt)
    $Q(t) = frac(lambda, lambda + mu) (1 - e^(-(lambda + mu)t)) + gamma dot e^(-(lambda + mu)t)$
  ]
]

Where:
- *$lambda$* = failure rate (1/MTBF)
- *$mu$* = repair rate (1/MTTR)
- *$gamma$* = initial unavailability (default: 0)
- *$t$* = mission time (hours)

#v(1em)

*Asymptotic unavailability* (steady-state) :
#align(center)[
  #box(
    fill: gray100,
    inset: 12pt,
    radius: 4pt,
  
  )[
    #set text(size: 15pt)
    $Q_infinity = frac(lambda, lambda + mu) = frac("MTTR", "MTBF" + "MTTR")$
  ]
]

#v(1em)

==== Gamma Model (One-Time Events)

For events that occur at most once over the system lifetime (e.g., security compromises, insider threats), we use a constant probability *$gamma$* (constant over mission) representing the likelihood of occurrence over the entire horizon:

#align(center)[
  #box(
    fill: gray100,
    inset: 12pt,
    radius: 4pt,
  )[
    #set text(size: 15pt)
    $Q(t) = gamma$
  ]
]

#v(1em)

=== MTTR Budget Decomposition

#v(1em)

#warning(title: "Critical Point - Session 3")[
  The MTTR used in FTA *must include* the Time To Detect (TTD). This is often overlooked but essential for accurate availability calculations.
  
  *MTTR (FTA) = TTD + Diagnosis + Remediation + Validation = RTO + WRT*
]

#v(1em)

#modern-table-compact(
  columns: (18%, 20%, 62%),
  caption: [MTTR Budget Components],
  inset-y: 11pt,
  font-size: 9pt,
  [Component], [Typical Range], [Description],
  [*TTD*], [5 min – 2 hours], [Time To Detect: Monitoring alerts, incident detection, initial triage],
  [*Diagnosis*], [15 min – 4 hours], [Root cause analysis, impact assessment, decision making],
  [*Remediation*], [30 min – 72 hours], [Actual repair: restart, failover, replacement, restore, rebuild],
  [*Validation*], [10 min – 8 hours], [Functional testing, security verification, return to nominal],
)

#v(1em)

*The relationship with PCA/PRA metrics:*
- *RTO* (Recovery Time Objective) ≈ TTD + Diagnosis + Remediation
- *WRT* (Work Recovery Time) ≈ Validation phase
- *MTTR* = RTO + WRT


#landscape[


  #figure(
    image(img.fta-concepts, width: 110%),
    caption: [MTBF/MTTR/RTO/WRT definitions and relationships. The MTTR used in FTA includes TTD (Time To Detect). Novatics context: 5-year horizon (43,800h), 99.9% availability target, critical RTO (PM-01) = 2 hours.],
  ) <fig-mtbf-mttr-concepts>



  == System Lifetime and Assumptions

  #v(0.5em)

  #success(title: "Novatics System Parameters")[
    - *Analysis horizon*: T = 5 years = *43,800 hours*
    - *Initial state*: All systems fully operational at t=0 (γ₀ = 0)
    - *Operating regime*: Normal operational domain (constant λ)
    - *Target availability*: 99.9% for mission-critical functions (PM-01)
  ]

  #v(1em)

  === Alignment with Session 2 Recovery Objectives

  #v(1em)

  #modern-table-compact(
    columns: (20%, 20%, 20%, 40%),
    caption: [Recovery Objectives from BIA (Session 2)],
    inset-y: 14pt,
    font-size: 11pt,
    [Process], [RTO], [RPO], [MTTR Constraint for FTA],
    [PM-01 (Mission Control)], [2 hours], [15 min], [MTTR ≤ 2h for critical path components],
    [PM-02 (R&D)], [48 hours], [4 hours], [MTTR ≤ 48h acceptable],
    [PM-03 (Production)], [24 hours], [8 hours], [MTTR ≤ 24h for OT systems],
    [PM-04 (Support)], [2 hours], [1 hour], [MTTR ≤ 2h for IAM/communications],
    [PM-05 (Commercial)], [48 hours], [24 hours], [MTTR ≤ 48h acceptable],
  )

  == Feared Events and Fault Tree Analysis

  #v(0.5em)

  === Overview of Analyzed Feared Events

  #v(0.5em)

  #modern-table-compact(
    columns: (8%, 32%, 25%, 35%),
    caption: [Summary of 5 Feared Events with FTA],
    inset-y: 5pt,
    font-size: 9pt,
    [ID], [Feared Event], [Primary Model], [Key Parameters],
    [ER11], [Loss of robot control during mission], [GLM (repairable)], [MTBF: 5,000–100,000h, MTTR: 0.2–100h],
    [ER05], [Unavailability of mission data], [GLM + Gamma], [MTBF: 10,000–100,000h, MTTR: 2–80h],
    [ER12], [Malicious takeover of robot], [GLM + Gamma], [MTBF: 10,000h, Gamma: 1e-4 to 2e-4],
    [ER04], [Theft of firmware signing keys], [Gamma + MTTR], [Gamma: 1e-4 to 3e-4, MTTR: 48–96h],
    [ER02], [Malicious alteration of AI models], [Gamma + MTTR], [Gamma: 1e-4 to 3e-4, MTTR: 48–96h],
  )

  #v(0.5em)

  === ER11 — Loss of Robot Control During Mission

  #v(0.5em)

  #danger(title: "Feared Event ER11")[
    - *Description*: Loss of the ability to control one or more robots during a mission, resulting in mission failure and potential safety risk to personnel.
    - *Severity*: G4 (Critical) — Direct impact on Safety of Life (SoL) missions
    - *Business Impact*: PM-01 (Field Mission Control) with RTO = 2 hours
  ]

  #v(0.5em)

  #figure(
    image(img.fta-er11, width: 100%),
    caption: [ER11 Fault Tree: Loss of robot control during mission. Severity G4 (Critical). $Q(T) approx 2.31%$. OR-gate structure with 4 intermediate events (IE1-IE4).],
  ) <fig-er11-fta>
  
  ==== Fault Tree Structure

  The top event "Loss of robot control" is modeled as an OR gate combining four intermediate events:

  #v(0.5em)

  #modern-table-compact(
    columns: (12%, 35%, 53%),
    caption: [ER11 - Intermediate Events Structure],
    inset-y:6pt,
    font-size: 9pt,
    [ID], [Intermediate Event], [Description],
    [IE1], [Loss of command & control link], [C2 link unavailable due to network, relay, or security device failure],
    [IE2], [Robot autonomy unavailable], [Robot cannot execute safety/navigation functions autonomously],
    [IE3], [Mission control backend unavailable], [Backend systems for supervision and mission piloting are down],
    [IE4], [Critical credentials unavailable], [Keys, certificates, or secrets required for secure operation are invalid or inaccessible],
  )

  ==== Basic Events and MTBF/MTTR Justification

  #v(1em)


  #modern-table-compact(
    columns: (24%, 12%,32%, 32%),
    caption: [ER11 - Basic Events with MTBF/MTTR Justification],
    font-size: 8pt,
    inset-y: 3pt,
    [Basic Event], [Parameters], [MTBF Justification], [MTTR Budget],

    [BE_Primary_comm_link_failure], [- MTBF=10,000h
    - MTTR=4h], [Critical network: ~0.9 incidents/year (8760/10000). Enterprise-grade SLA assumption.], [TTD 0.25h + Diag 0.75h + Failover 2h + Validation 1h],

    [BE_Ground_relay_failure], [- MTBF=5,000h
    - MTTR=8h], [Field equipment more exposed (power/environment) → lower MTBF. Starlink gateway or ground station.], [TTD 0.5h + Diag 1.5h + Field intervention 4h + Tests 2h],

    [BE_Network_security_device_outage], [- MTBF=10,000h
    - MTTR=5h], [Enterprise firewall/VPN appliance stable; incidents often config/firmware related.], [TTD 0.25h + Diag 1h + Restart/rollback 2.5h + Validation 1.25h],

    [BE_DNS_or_PKI_resolution_failure], [- MTBF=5,000h
    - MTTR=1h], [DNS/PKI incidents possible (chain validation, ACME renewal, resolution issues).], [TTD 0.1h + Diag 0.2h + Fix 0.5h + Validation 0.2h],

    [BE_Safety_controller_failure], [- MTBF=20,000h
    - MTTR=20h], [Certified safety-critical hardware → higher MTBF (SIL-rated).], [Diag 2h + Replacement/intervention 16h + Recalibration 2h],

    [BE_Navigation_stack_failure], [- MTBF=5,000h
    - MTTR=0.2h], [Software crash plausible (edge cases, sensor data anomalies). Auto-restart enabled.], [Detection 5min + Restart 5min + Validation 2min],

    [BE_Sensor_suite_failure], [- MTBF=10,000h
    - MTTR=50h], [Sensors exposed (shocks, dust, humidity) → hardware failures possible.], [Diag 2h + Logistics/return 40h + Recalibration 8h],

    [BE_Power_subsystem_failure], [- MTBF=10,000h
    - MTTR=100h], [Conservative assumption (battery/BMS + mission constraints).], [Diag 4h + Logistics/replacement 80h + Safety tests 16h],

    [BE_Mission_control_app_outage], [- MTBF=5,000h
    - MTTR=1h], [Application incidents several times/year (assumption).], [Alert 0.1h + Diag 0.2h + Restart/rollback 0.5h + Validation 0.2h],

    [BE_Database_or_storage_outage], [- MTBF=10,000h
    - MTTR=5h], [Data layer stable but failures longer (failover/restore).], [TTD 0.25h + Diag 0.75h + Failover/restore 3h + Validation 1h],

    [BE_IAM_or_IdP_outage], [- MTBF=10,000h
    - MTTR=2h], [IAM stable; incidents rare but impactful (auth dependency).], [Alert 0.1h + Diag 0.4h + Restart/failover 1h + Validation 0.5h],

    [BE_Failed_deployment_or_change], [- MTBF=20,000h
    - MTTR=20h], [Major change incident assumed rare (~0.4/year).], [Detection 1h + Diag 3h + Rollback/hotfix 12h + Revalidation 4h],

    [BE_Cloud_region_or_DC_outage], [- MTBF=100,000h
    - MTTR=80h], [Very rare (multi-year scale). AWS eu-west-3 historical data.], [Alert 1h + Decision 3h + DR site recovery 72h + Validation 4h],

    [BE_Vault_service_unavailable], [- MTBF=10,000h
    - MTTR=5h], [Critical service dependent on storage/network; average stability.], [TTD 0.25h + Diag 0.75h + Restore/failover 3h + Validation 1h],

    [BE_Certificates_expired], [- Gamma=2e-4
    - MTTR=1h], [Process event (expiration): low probability if automation/monitoring.], [Alert 0.1h + Renewal 0.4h + Deploy/validation 0.5h],

    [BE_Key_management_service_unavailable], [- MTBF=10,000h
    - MTTR=5h], [Crypto service with dependencies (HSM/storage).], [TTD 0.25h + Diag 0.75h + Restore/failover 3h + Validation 1h],

    [BE_HSM_unavailable], [- MTBF=20,000h
    - MTTR=20h], [HSM robust, failures rare. Luna Network HSM specifications.], [Diag 1h + Exchange/maintenance 16h + Revalidation/sync 3h],
  )

]

==== ER11 Quantitative Results

#v(1em)

#modern-table-compact(
  columns: (40%, 15%, 15%, 30%),
  caption: [ER11 - Unavailability Calculation at T=43,800h],
  inset-y: 8pt,
  font-size: 10pt,
  [Basic Event], [Q∞], [Q(T)], [Downtime/5y],
  [BE_Primary_comm_link_failure], [4.00e-4], [4.00e-4], [17.5h],
  [BE_Ground_relay_failure], [1.60e-3], [1.60e-3], [70h],
  [BE_Network_security_device_outage], [5.00e-4], [5.00e-4], [22h],
  [BE_DNS_or_PKI_resolution_failure], [2.00e-4], [2.00e-4], [8.8h],
  [BE_Safety_controller_failure], [1.00e-3], [1.00e-3], [44h],
  [BE_Navigation_stack_failure], [4.00e-5], [4.00e-5], [1.8h],
  [BE_Sensor_suite_failure], [4.98e-3], [4.98e-3], [218h],
  [BE_Power_subsystem_failure], [9.90e-3], [9.90e-3], [434h],
  [BE_Mission_control_app_outage], [2.00e-4], [2.00e-4], [8.8h],
  [BE_Database_or_storage_outage], [5.00e-4], [5.00e-4], [22h],
  [BE_IAM_or_IdP_outage], [2.00e-4], [2.00e-4], [8.8h],
  [BE_Failed_deployment_or_change], [1.00e-3], [1.00e-3], [44h],
  [BE_Cloud_region_or_DC_outage], [8.00e-4], [8.00e-4], [35h],
  [BE_Vault_service_unavailable], [5.00e-4], [5.00e-4], [22h],
  [BE_Certificates_expired], [2.00e-4], [2.00e-4], [8.8h],
  [BE_KMS_unavailable], [5.00e-4], [5.00e-4], [22h],
  [BE_HSM_unavailable], [1.00e-3], [1.00e-3], [44h],
  [*ER11 TOTAL (OR)*], [], [*2.33e-2*], [*≈1,020h (42.5 days)*],
)

#v(1em)

#danger(title: "ER11 Analysis")[
  The calculated unavailability of *2.31%* over 5 years corresponds to approximately *42.5 days* of cumulative downtime. The main contributors are:
  
  1. *Power subsystem failure* (434h) — Hardware logistics dominant
  2. *Sensor suite failure* (218h) — Field equipment exposure
  3. *Ground relay failure* (70h) — Remote infrastructure

  *Recommendation*: Implement redundancy for robot power systems and sensor suites. Consider spare parts inventory for field operations.
]

// =============================================================================
// ER05 — Unavailability of mission data
// =============================================================================

#landscape[

  === ER05 — Unavailability of Mission Data During Operation

  #v(0.5em)

  #danger(title: "Feared Event ER05")[
    *Description*: Unavailability of data required to conduct an ongoing mission (telemetry, maps, mission parameters).
    
    *Severity*: G3 (Significant) — Mission degradation, potential safety impact
    
    *Business Impact*: PM-01 with RTO = 2 hours, RPO = 15 minutes
  ]

  #v(0.5em)

  #figure(
    image(img.fta-er05, width: 100%),
    caption: [ER05 Fault Tree: Unavailability of mission data during operation. Severity G3 (Significant). $Q(T) approx 0.22%$. OR-gate with 5 basic events (GLM model).],
  ) <fig-er05-fta>

  #v(0.5em)

  ==== Basic Events and MTBF/MTTR Justification

  #v(0.5em)

  #modern-table-compact(
    columns: (26%, 14%, 30%, 30%),
    caption: [ER05 - Basic Events with MTBF/MTTR Justification],
    inset-y: 14pt,
    font-size: 10pt,
    [Basic Event], [Parameters], [MTBF/Gamma Justification], [MTTR Budget],

    [BE_Mission_data_store_unavailable], [- MTBF=10,000h
    - MTTR=5h], [Data store stable; incidents possible (service/cluster failure).], [Alert 0.25h + Diag 0.75h + Restore/failover 3h + Validation 1h],

    [BE_Network_path_down], [- MTBF=10,000h
    - MTTR=4h], [Critical network: occasional incidents (operator, route, equipment).], [TTD 0.25h + Diag 0.75h + Recovery 2h + Validation 1h],

    [BE_Access_control_outage], [- MTBF=10,000h
    - MTTR=2h], [IAM/Vault/PKI critical; incidents rare but blocking.], [Alert 0.1h + Diag 0.4h + Remediation 1h + Validation 0.5h],

    [BE_Data_corruption_requires_stop], [- Gamma=3e-4
    - MTTR=24h], [Corruption rare but plausible (bug, human error, integrity issue).], [Triage 2h + Restore/rollback 8h + Integrity checks 10h + Validation 4h],

    [BE_Cloud_region_or_DC_outage], [- MTBF=100,000h
    - MTTR=80h], [Very rare, high impact (single-site dependency).], [Alert 1h + Decision 3h + DR recovery 72h + Validation 4h],
  )

  #v(1em)

  ==== ER05 Quantitative Results

  #v(0.5em)

  #modern-table-compact(
    columns: (40%, 20%, 20%, 20%),
    caption: [ER05 - Unavailability Calculation at T=43,800h],
    inset-y: 16pt,
    font-size: 10pt,
    [Basic Event], [Q∞ / Gamma], [Q(T)], [Downtime/5y],
    [BE_Mission_data_store_unavailable], [5.00e-4], [5.00e-4], [22h],
    [BE_Network_path_down], [4.00e-4], [4.00e-4], [17.5h],
    [BE_Access_control_outage], [2.00e-4], [2.00e-4], [8.8h],
    [BE_Data_corruption_requires_stop], [3.00e-4], [3.00e-4], [13h],
    [BE_Cloud_region_or_DC_outage], [8.00e-4], [8.00e-4], [35h],
    [*ER05 TOTAL (OR)*], [], [*2.20e-3*], [*≈96h (4 days)*],
  )

  #v(1em)

  #success(title: "ER05 Analysis")[
    Unavailability of *0.22%* over 5 years (≈4 days cumulative) is acceptable given the PM-01 RTO of 2 hours *per incident*. The dominant risk is cloud region outage which requires DR site capability.
  ]

  #pagebreak()

  // =============================================================================
  // ER12 — Malicious takeover of a robot
  // =============================================================================

  === ER12 — Malicious Takeover of Robot During Mission

  #v(0.5em)

  #danger(title: "Feared Event ER12")[
    *Description*: Intentional takeover of a robot by an attacker during a mission, allowing malicious commands or data exfiltration.
    
    *Severity*: G4 (Critical) — Safety risk, potential weaponization
    
    *Business Impact*: Immediate mission abort, reputational damage, regulatory consequences
  ]

  #v(0.5em)

  #figure(
    image(img.fta-er12, width: 100%),
    caption: [ER12 Fault Tree: Malicious takeover of robot during mission. Severity G4 (Critical). $Q(T) approx 0.29%$. Mixed GLM + Gamma model with 5 basic events.],
  ) <fig-er12-fta>

  #v(0.5em)

  ==== Basic Events and Parameter Justification

  #v(0.5em)

  #modern-table-compact(
    columns: (26%, 16%, 29%, 29%),
    caption: [ER12 - Basic Events with GLM/Gamma Justification],
    inset-y: 14pt,
    font-size: 10pt,
    [Basic Event], [Parameters], [MTBF/Gamma Justification], [MTTR Budget],

    [BE_Command_channel_compromise], [- MTBF=10,000h
    - MTTR=4h], [Treated as availability loss of secure channel (auth/VPN).], [Alert 0.25h + Diag 0.75h + Recovery 2h + Validation 1h],

    [BE_Robot_endpoint_compromise], [- MTBF=10,000h
    - MTTR=20h], [Conservative: incident requiring reflash/hardening + tests.], [Triage 2h + Image restore/reflash 12h + Tests/requalification 6h],

    [BE_Firmware_compromise], [- Gamma=2e-4
    - MTTR=48h], [Rare intentional event if robust signature chain.], [Analysis 6h + Rollback 18h + Re-sign/redeploy 18h + Validation 6h],

    [BE_Key_impersonation], [- Gamma=2e-4
    - MTTR=72h], [Rare if HSM+rotation, but major impact (impersonation).], [Investigation 8h + Key rotation 24h + Re-enrollment 24h + Validation 16h],

    [BE_Operator_workstation_compromise], [- Gamma=1e-4
    - MTTR=24h], [Admin/operator workstation: residual risk low but non-zero.], [Detection 2h + Workstation remediation 8h + Access rotation 8h + Validation 6h],
  )

]

==== ER12 Quantitative Results

#v(0.5em)

#modern-table-compact(
  columns: (38%,18%, 18%, 26%),
  caption: [ER12 - Unavailability/Probability Calculation at T=43,800h],
  inset-y: 14pt,
  font-size: 9pt,
  [Basic Event], [Q∞ / Gamma], [Q(T)], [Impact/5y],
  [BE_Command_channel_compromise], [4.00e-4], [4.00e-4], [17.5h downtime],
  [BE_Robot_endpoint_compromise], [2.00e-3], [2.00e-3], [87.6h downtime],
  [BE_Firmware_compromise], [2.00e-4], [2.00e-4], [Low probability event],
  [BE_Key_impersonation], [2.00e-4], [2.00e-4], [Low probability event],
  [BE_Operator_workstation_compromise], [1.00e-4], [1.00e-4], [Low probability event],
  [*ER12 TOTAL (OR)*], [], [*2.89e-3*], [*≈127h (5.3 days)*],
)

#v(1em)

#warning(title: "ER12 Analysis")[
  The *0.29%* probability combines both availability-based failures (command channel, endpoint) and security events (firmware, key, operator compromise). The security events use Gamma model because they represent deliberate attacks that occur at most once but have extended recovery times.
]

// =============================================================================
// ER04 — Theft of firmware signing keys
// =============================================================================

#landscape[

  === ER04 — Theft of Firmware Signing Keys

  #v(0.5em)

  #danger(title: "Feared Event ER04")[
    *Description*: Compromise of firmware signing keys enabling creation of fraudulent firmware that could be deployed to robots.
    
    *Severity*: G4 (Critical) — Enables persistent, undetectable compromise of entire fleet
    
    *Business Impact*: Complete loss of firmware integrity assurance, potential supply chain attack
  ]

  #v(0.5em)

  #figure(
    image(img.fta-er04, width: 100%),
    caption: [ER04 Fault Tree: Theft of firmware signing keys enabling fraudulent firmware creation. Severity G4 (Critical). $Q(T) approx 0.09%$. Gamma model with 5 basic events.],
  ) <fig-er04-fta>

  #v(0.5em)

  ==== Basic Events and Gamma/MTTR Justification

  All basic events use the Gamma model as they represent intentional security compromise events.

  #v(0.5em)

  #modern-table-compact(
    columns: (28%, 8%, 8%, 28%, 28%),
    caption: [ER04 - Basic Events with Gamma/MTTR Justification],
    inset-y: 14pt,
    font-size: 9pt,
    [Basic Event], [Gamma], [MTTR], [Gamma Justification], [MTTR Budget],

    [BE_HSM_compromise], [2e-4], [72h], [Rare (HSM + access control + audit logging).], [Investigation + key rotation + re-sign + deploy + validation],

    [BE_Key_backup_compromise], [1e-4], [72h], [Rare if encrypted backups, offsite, role separation.], [Rotation + audit + regeneration + revalidation],

    [BE_CICD_signing_pipeline_compromise], [2e-4], [48h], [Supply chain risk / CI/CD tokens (larger attack surface).], [Patch pipeline + rotate secrets + rebuild + validation],

    [BE_Admin_credential_theft_enabling_export], [3e-4], [48h], [Identity attack surface more probable than direct HSM attack.], [Rotate accounts + MFA + invalidate sessions + audit + validation],

    [BE_Insider_misuse_privileged_operator], [1e-4], [96h], [Low if SoD/4-eyes, but residual risk remains.], [Investigation + HR/legal measures + requalification + validation],
  )

]

==== ER04 Quantitative Results

#v(0.5em)

#modern-table-compact(
  columns: (50%, 15%, 35%),
  caption: [ER04 - Probability Calculation],
  inset-y: 14pt,
  font-size: 10pt,
  [Basic Event], [Gamma], [Recovery Impact],
  [BE_HSM_compromise], [2.00e-4], [72h full key rotation],
  [BE_Key_backup_compromise], [1.00e-4], [72h backup audit + rotation],
  [BE_CICD_signing_pipeline_compromise], [2.00e-4], [48h pipeline rebuild],
  [BE_Admin_credential_theft_enabling_export], [3.00e-4], [48h identity remediation],
  [BE_Insider_misuse_privileged_operator], [1.00e-4], [96h investigation + remediation],
  [*ER04 TOTAL (OR)*], [*9.00e-4*], [*≈39h weighted average*],
)

#v(0.5em)

#info(title: "ER04 Analysis")[
  The *0.09%* probability over 5 years is acceptable given the critical nature of firmware signing keys. The dominant attack vector is *admin credential theft* (3e-4), highlighting the importance of:
  - Strong MFA for all privileged accounts
  - Separation of duties for key operations
  - Regular access reviews and audit logging
]

#landscape[

  // =============================================================================
  // ER02 — Malicious alteration of AI models
  // =============================================================================

  === ER02 — Malicious Alteration of AI Models (Backdoor/Bias)

  #v(0.5em)

  #danger(title: "Feared Event ER02")[
    *Description*: Intentional alteration of AI models (SLAM, victim detection) introducing backdoors or biases that could cause mission failures or safety incidents.
    
    *Severity*: G4 (Critical) — Subtle, hard-to-detect compromise affecting core autonomy
    
    *Business Impact*: Loss of AI model integrity, potential regulatory consequences for safety-critical AI
  ]

  #v(0.5em)

  #figure(
    image(img.fta-er02, width: 100%),
    caption: [ER02 Fault Tree: Malicious alteration of AI models (backdoor/bias) affecting SLAM or victim detection. Severity G4 (Critical). $Q(T) approx 0.09%$. Gamma model with 5 basic events.],
  ) <fig-er02-fta>

  #v(0.5em)

  ==== Basic Events and Gamma/MTTR Justification

  #v(0.5em)

  #modern-table-compact(
    columns: (28%, 8%, 8%, 28%, 28%),
    caption: [ER02 - Basic Events with Gamma/MTTR Justification],
    inset-y: 14pt,
    font-size: 9pt,
    [Basic Event], [Gamma], [MTTR], [Gamma Justification], [MTTR Budget],

    [BE_Model_registry_compromise], [2e-4], [48h], [Rare if registry isolated + access control + audit.], [Rollback version + rotate secrets + revalidation + redeploy],

    [BE_Training_pipeline_poisoning], [3e-4], [72h], [Larger surface (data + pipeline) → higher probability.], [Purge dataset + retrain + tests + redeploy + validation],

    [BE_Artifact_signing_bypass], [1e-4], [48h], [Low if systematic signatures, but misconfiguration possible.], [Restore controls + re-sign + audit + validation],

    [BE_Insider_model_injection], [1e-4], [96h], [Low if dual validation/SoD, but critical impact.], [Investigation + remove model + full requalification + validation],

    [BE_Dependency_supply_chain_compromise], [2e-4], [72h], [Third-party risk (packages, containers, runners).], [Patch/upgrade + rebuild images + tests + validation],
  )

]
==== ER02 Quantitative Results

#v(0.5em)

#modern-table-compact(
  columns: (50%, 15%, 35%),
  caption: [ER02 - Probability Calculation],
  inset-y: 14pt,
  font-size: 10pt,
  [Basic Event], [Gamma], [Recovery Impact],
  [BE_Model_registry_compromise], [2.00e-4], [48h model rollback + validation],
  [BE_Training_pipeline_poisoning], [3.00e-4], [72h full retrain cycle],
  [BE_Artifact_signing_bypass], [1.00e-4], [48h signature restoration],
  [BE_Insider_model_injection], [1.00e-4], [96h investigation + requalification],
  [BE_Dependency_supply_chain_compromise], [2.00e-4], [72h dependency remediation],
  [*ER02 TOTAL (OR)*], [*9.00e-4*], [*≈39h weighted average*],
)

#v(0.5em)

#warning(title: "ER02 Analysis")[
  The *0.09%* probability is identical to ER04, reflecting similar attack patterns. The dominant risk is *training pipeline poisoning* (3e-4) due to the large attack surface of ML training infrastructure.
  
  *Recommendations*:
  - Data provenance tracking for training datasets
  - Model integrity verification before deployment
  - Reproducible training pipelines with artifact signing
]

#pagebreak()

// =============================================================================
// Summary and Conclusions
// =============================================================================

== Summary and Risk Synthesis

#v(0.5em)

=== Unavailability Summary

#v(0.5em)

#modern-table(
  columns: (9%, 30%, 21%, 22%, 18%),
  caption: [Feared Events - Unavailability Summary over 5 Years],
  [FE], [Description], [Unavailability], [Downtime], [Severity],
  [ER11], [Loss of robot control], [*2.31%*], [≈1,020h (42.5d)], chip("critical"),
  [ER05], [Mission data unavailable], [*0.22%*], [≈96h (4d)], chip("high"),
  [ER12], [Malicious robot takeover], [*0.29%*], [≈127h (5.3d)], chip("critical"),
  [ER04], [Firmware key theft], [*0.09%*], [≈39h (1.6d)], chip("critical"),
  [ER02], [AI model alteration], [*0.09%*], [≈39h (1.6d)], chip("critical"),
)

#v(1em)

=== Risk Prioritization Matrix

#v(0.5em)

#modern-table(
  columns: (14%, 12%, 44%, 30%),
  caption: [Risk Prioritization Based on FTA Results],
  [Priority], [Feared Event], [Key Risk Drivers], [Action],
  [1], [ER11], [- Power subsystem (434h)
  - Sensors (218h)
  - Ground relay (70h)], [Redundancy + spares],
  [2], [ER12], [- Robot endpoint (87h)
  - Command channel (17h)], [Hardening + monitoring],
  [3], [ER05], [- Cloud region outage (35h)
  - Data store (22h)], [DR site + replication],
  [4], [ER04], [- Admin credentials (3e-4)
  - CI/CD (2e-4)], [MFA + SoD],
  [5], [ER02], [- Training pipeline (3e-4)
  - Supply chain (2e-4)], [ML security program],
)

#v(1em)

=== Alignment with Session 2 Recovery Objectives

#v(0.5em)

#success(title: "FTA vs BIA Consistency Check")[
  The FTA results are consistent with Session 2 BIA requirements:
  
  - *PM-01 (Mission Control)*: RTO = 2h → Most ER11 components have MTTR ≤ 4h (compatible)
  - *Critical path*: Power subsystem (MTTR=100h) and sensors (MTTR=50h) exceed RTO → *Redundancy required*
  - *Security events* (ER02, ER04, ER12): Extended MTTR (48-96h) acceptable as these are rare, one-time events
]

#v(1em)

== Deliverables Checklist

#v(0.5em)

#modern-table-compact(
  columns: (5%, 49%, 17%, 27%),
  caption: [Session 3 Deliverables Status],
  inset-y: 12pt,
  [✓], [Deliverable], [Format], [Location],
  [✓], [5 Feared Events with FTA], [OPSA files], [ER02/04/05/11/12_FTA\*.opsa],
  [✓], [System lifetime definition], [Text], [T = 43,800h (5 years)],
  [✓], [Probability models (GLM + Gamma)], [Text], [This document],
  [✓], [MTBF/MTTR values with justification], [Tables], [This document + OPSA labels],
  [✓], [MTTR budget decomposition], [Tables], [TTD + Diag + Repair + Validation],
  [✓], [Arbre Analyst files], [OPSA], [5 files provided],
  [✓], [Concept diagram (MTBF/MTTR/RTO/WRT)], [Draw.io], [NOV-BCRP-Session3-\*.drawio],
)

#pagebreak()

== Appendix: Parameter Verification

#v(0.5em)

=== Mathematical Consistency Check

For all GLM-based basic events, the following relationships must hold:

#align(center)[
  #box(fill: gray100, inset: 12pt, radius: 4pt)[
    $lambda = 1/"MTBF"$ #h(2em) $mu = 1/"MTTR"$ #h(2em) $Q_infinity = lambda/(lambda + mu)$
  ]
]

#v(0.5em)

#info(title: "Verification Results")[
  All 17 basic events for ER11 have been verified for mathematical consistency between MTBF/MTTR values stated in labels and the λ/μ parameters used in GLM calculations. No discrepancies found.
  
  Example verification for BE_Primary_comm_link_failure:
  - MTBF = 10,000h → λ = 1/10,000 = 1.0×10⁻⁴ ✓
  - MTTR = 4h → μ = 1/4 = 2.5×10⁻¹ ✓
  - Q∞ = λ/(λ+μ) = 1.0×10⁻⁴/(1.0×10⁻⁴ + 2.5×10⁻¹) ≈ 4.0×10⁻⁴ ✓
]
