// ═══════════════════════════════════════════════════════════════════════════════
// BCRP PROJECT TEMPLATE - Modern Edition
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
  logo-ynov: "images/logos/logo-ynov.png",
  logo-airbus: "images/logos/logo-airbus.png",
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
    
    #v(1.5cm)
    
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

This document presents the comprehensive analysis of the BCRP (Business Continuity & Recovery Planning) project conducted as part of the Master in Cybersecurity Experts program. Our methodological approach relies on recognized standards and frameworks for business continuity and risk management.

== Project Context

The project is structured around several key phases, utilizing proven methodologies to ensure a thorough and relevant analysis of business continuity challenges.

#note(title: "Methodologies Used")[
  - *Capella* — System modeling and architecture design
  - *EBIOS RM* — Cybersecurity risk analysis framework
  - *ISO 22301* — Business continuity management standard
]

== Objectives

The main objectives of this project are:

+ Identify and map critical business processes
+ Assess potential risks and threats
+ Define continuity and recovery strategies
+ Propose appropriate technical solutions

= Capella Analysis

== System Modeling

Capella modeling provides a complete view of the system architecture and interactions between the various components.

=== Functional Architecture

The functional architecture describes the main components and their relationships within the system being studied.

#modern-table(
  columns: (auto, 1fr, auto),
  caption: [Main System Components],
  [ID], [Component], [Criticality],
  [C01], [Production Server], chip("critical"),
  [C02], [Database Cluster], chip("high"),
  [C03], [User Interface], chip("medium"),
  [C04], [Backup System], chip("low"),
)

== Data Flows

#warning(title: "Key Consideration")[
  Data flows between critical components must be encrypted and continuously monitored to ensure integrity and confidentiality.
]

= EBIOS RM Analysis

== Risk Identification

The EBIOS RM analysis enables the identification and assessment of cybersecurity risks using a structured approach based on threat scenarios.

#risk-table(
  caption: [Identified Risk Matrix],
  [R01], [Ransomware Attack], chip("critical"), chip("high"), chip("critical"),
  [R02], [Data Loss], chip("high"), chip("medium"), chip("high"),
  [R03], [Network Unavailability], chip("medium"), chip("high"), chip("high"),
  [R04], [Human Error], chip("low"), chip("high"), chip("medium"),
)

== Threat Scenarios

=== Scenario 1: Targeted Attack

This scenario describes a sophisticated targeted attack and its potential impacts on the organization's operations and data integrity.

#danger(title: "Critical Risk")[
  This scenario presents a major risk to business continuity. Priority mitigation measures are strongly recommended.
]

= Business Continuity Plan

== Continuity Strategies

#success(title: "Recommendation")[
  Implementing a redundant architecture can guarantee 99.9% availability of critical services.
]

== Recovery Procedures

#modern-table(
  columns: (auto, 1fr, auto, auto),
  caption: [Recovery Objectives by Service],
  [Service], [Description], [RTO], [RPO],
  [Production], [Application Servers], [4h], [1h],
  [Data], [Critical Databases], [2h], [15min],
  [Communication], [Email Services], [8h], [4h],
  [Support], [Ticketing Tools], [24h], [8h],
)

= Conclusion

This BCRP project has established a comprehensive analysis of risks and business continuity strategies. The recommendations provided form a solid foundation for strengthening the organization's resilience against potential incidents.

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
