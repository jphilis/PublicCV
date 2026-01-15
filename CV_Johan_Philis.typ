#let skill_bubble(content) = box(
  pad(right: 4pt, bottom: 0pt)[ // This creates the automatic spacing
    #rect(
      fill: rgb("#e2e8f0"), 
      radius: 8pt,
      inset: (x: 6pt, y: 4pt),
      stroke: none,
      text(size: 8pt, weight: "medium", fill: rgb("#2c3e50"), content)
    )
  ]
)

#set page(
  margin: (x: 0cm, y: 0cm),
)

// Using Typst default font to avoid system-specific font errors
#set text(
  size: 12pt,
  fill: rgb("#333333"),
)

#let sidebar_color = rgb("#f0f0f0")
#let accent_color = rgb("#2c3e50")

#grid(
  columns: (185pt, 1fr),
  rows: (100%),
  // --- SIDEBAR ---
  rect(fill: sidebar_color, width: 100%, height: 100%)[
    #set align(center)
    #v(40pt)
    #block(
      radius: 50%,
      clip: true,
      width: 100pt,
      height: 100pt,
      stroke: 2pt + white,
      image("CV_photo.jpg")
    )

    #v(20pt)
    #text(size: 9pt, weight: "bold", fill: accent_color)[Johan Philis] \
    #text(size: 9pt, weight: "medium")[Engineering Mathematics]

    #v(25pt)
    #set align(left)
    #pad(x: 20pt)[
      #text(size: 9pt)[
        Gothenburg \
        +46703093070 \
        #link("mailto:johan.e.philis\@gmail.com")[johan.e.philis\@gmail.com] \
        #link("https://linkedin.com/in/johan-philis")[LinkedIn]
      ]

      #v(30pt)
      #text(weight: "bold", size: 12pt, fill: accent_color)[About me] \
      #v(5pt)
      #text(size: 9pt)[
        Studied programming and mathematics with a strong passion for computing, machine learning, and 
        algorithmic problem-solving. Enthusiastic about developing innovative software solutions and 
        continuously exploring new technologies and tools. Thrive in collaborative environments that 
        bring together diverse technical expertise.
      ]
      
      #v(30pt)
      #text(weight: "bold", size: 12pt, fill: accent_color)[Skills] \
      #v(10pt)
      // #text(size: 9pt)[
      //   Python #h(1fr) 5/6 \
      //   C/C++ #h(1fr) 4.5/6 \
      //   Linux #h(1fr) 4/6 \
      //   Zig #h(1fr) 3.5/6 \
      //   Rust #h(1fr) 3/6 \
      //   Docker #h(1fr) 2/6 \
      //   CI/CD #h(1fr) 2/6
      // ]
      //
      
      #block(width: 100%)[
        #skill_bubble[Python]
        #skill_bubble[C]
        #skill_bubble[Zig]
        #skill_bubble[Rust]
        #skill_bubble[C++]
        #skill_bubble[SQL]
        #skill_bubble[Git]
        #skill_bubble[Linux]
        #skill_bubble[CI/CD]
        #skill_bubble[Docker]
        #skill_bubble[MQTT]
        #skill_bubble[Modbus]
      ]
    ]
  ],

  // --- MAIN BODY ---
  pad(x: 30pt, y: 40pt)[
    //
    // Work Experience
    //
    #text(size: 16pt, weight: "bold", fill: accent_color)[Work Experience]
    
    *Software Developer* \
    #text(weight: "bold", size: 12pt)[Checkwatt] #h(1fr) 2025–2026 \
    #text(size: 10pt)[
      As a member of the embedded development team, I focused on improving the 
      handling of MQTT connections and integrating inverters using the Modbus protocol.
      - Developed a MQTT connection pool handler with TCP and message timeouts using a round-robin strategy.
      - Integrated new inverters using Python and Modbus.
      
      *Keywords:* Linux, RaspberryPi, MQTT, Modbus, TCP, OOP, Embedded
    ]

    #v(15pt)
    *Software Developer* \
    #text(weight: "bold", size: 12pt)[Micropower] #h(1fr) 2022–2024 \
    #text(size: 10pt)[
      Developed an integration test framework to simplify the testing of their modular Li-ion battery system.
      - Developed a library in Python for integration tests.
      - Developed tests in Pytest.
      - Developed CI/CD pipelines in Bitbucket.
      - Built an automation rig for integration with hardware.

      *Keywords:* CI/CD, Docker, Linux, RaspberryPi, Arduino, HIL, Automation, Electronics, Microcontroller
    ]

    #v(15pt)
    *Software Developer* - “Tekniksprånget” \
    #text(weight: "bold", size: 12pt)[Ericsson] #h(1fr) 2019 \
    #text(size: 10pt)[
      Developed automated irrigation using Raspberry Pi in greenhouses at Ericsson.
    ]

    //
    // Education
    //
    #v(30pt)
    #text(size: 16pt, weight: "bold", fill: accent_color)[Education]

    *Engineering Mathematics (5-year engineering degree)* \
    #text(weight: "bold")[Chalmers University of Technology] #h(1fr) 2020–2025 \
    #text(size: 10pt)[
      - *M.Sc in Complex Adaptive Systems (CAS).*
      - *Master Thesis:* Synthetic data generation for Driver Monitoring Systems 
        at *Zenseact* and building from-scratch deep learning models for validating AD/ADAS systems.
      - *B.Sc in Engineering Mathematics (ENM)*.
      - *Bachelor Thesis:* Machine learning for nuclear physics experiments at CERN.
    ]

    #v(10pt)
    #text(size: 12pt, weight: "bold", fill: accent_color)[Highlighted Courses]
    #columns(2, gutter: 12pt)[
      #set text(size: 9pt)
      - High performance computing
      - Neuro-Symbolic AI
      - Structured machine learning
      - Advanced machine learning
      - Statistical learning
      - Artificial neural networks
      - ML Algorithms & Inference
      - Advanced Python
      #colbreak()
      - Data structures & algorithms
      - Databases
      - Probability and statistics
      - Bayesian inference
      - Stochastic data processing
      - Stochastic optimization
      - Nonlinear optimization
    ]
  ]
)
