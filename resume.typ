#show heading: it => [
  #set align(left)
  #set text(13pt, weight: "regular")
  #block(smallcaps(it.body))
  #v(-1em)
  #line(length: 100%, stroke: (dash: "dotted"))
]

#let contact_info(items) = {
  align(center, text(8pt)[
    #{items.map(item => emph(item)).join([ #h(0.6em) | #h(0.6em) ])}
  ])
}

#let experience(company, position, dates, description) = box[
  #let sz = 10.5pt
  #set align(left)
  #block(below: 0.75em)[
    #grid(
      columns: (1fr, auto),
      [#set text(sz); #smallcaps[#text(weight: "bold")[#company]: #text(weight: "regular")[#position]]],
      [#set text(sz, style: "italic"); #{dates}]
    )
  ]
  #set text(sz, weight: "regular")
  #description
]

// CONTENT

#align(center, text(17pt)[
  *#smallcaps[Mateusz Nawara]*
])

#v(-1.3em)

#align(center, text(11pt)[
  Senior Software Engineer / Architect
])

#v(-0.65em)

#contact_info(("m@mknaw.biz", "github.com/mknaw", "linkedin.com/in/mknaw"))

= Technical Skills

- *Languages*: Python, Rust, Typescript / Javascript, Haskell, SQL, HTML, CSS
- *Tools/Tech*: PostgreSQL, git, vim, Kibana, DataDog, RabbitMQ, Elasticsearch, AWS, Github Actions, Docker
- *Frameworks/Libraries*: Django, Celery, pytest, Django Rest Framework, pandas, React, next.js, FastAPI

= Work Experience

#experience("Maxio", "Senior Software Engineer / Architect", "Nov 2023 - Present", list(
  [Shit man],
  [I dunno],
  [Developed *important feature* that improved performance],
))

#experience("Maxio", "Software Team Lead", "Feb 2022 - Nov 2023", list(
  [Oversee a team of 6 engineers as the designated architect, coordinating the life-cycle of large efforts.],
  [Formulated a proposal on integrating two monolithic applications post-merger via an event-based architecture.],
  [Mentor  my team in an effort to and maintain high quality code by conducting ongoing by overall quality by performing regular and thorough code reviews.],
  [Successfully lobbied for a greater emphasis on automated testing by educating my peers, authoring a significant portion of the test suite, and creating Github actions pipelines for pyright and ruff static analysis and code coverage reporting, leading to increased organizational maturity, caught typing errors, easier reviews.],
))

#experience("Maxio", "Software Engineer", "July 2019 - Feb 2022", list(
  [Engineered an innovative suite for inputting “open balance” financial aggregates, a solution unprecedented within the company, leveraging accounting and mathematical techniques to lessen onboarding effort.],
  [Created automated data correction wizards that have saved users countless hours of manually matching their accounting revenue streams with historical invoice records or customers between different systems.],
  [Overhauled the platform’s primary financial report to improve execution speed 7x by reducing the number of queries being performed via smarter aggregation and application of accounting arithmetic identities.],
  [Streamlined multiple codebases using object-oriented abstractions, exemplified by refactoring the CSV data import functionality which resulted in a reduction of over 4.5k lines of code.],
  [Enhanced page load speeds by up to 30% and developer productivity by genericizing and improving list page code to avoid n+1 queries, add database-calculated columns, and programmatically render HTML.],
  [Improved and standardized synchronization functionality with general ledgers: QuickBooks, NetSuite (SOAP), and Xero. Developed generic framework code for synchronization with any third party integration.],
  [Implemented a Dropbox integration allowing users to coordinate and sync file attachments between the records in the Maxio platform and their Dropbox stores, including a frontend JS file browser widget.],
  [Developed public Django Rest Framework public API by creating endpoints, serializers, and automated OpenAPI documentation. Implemented an automated test suite that programmatically tests all endpoints.],
))

= Education

#experience("University of Warsaw", "Warsaw, Poland", "September 2017", [
  MA in Quantitative Finance (Honors) at the Faculty of Economic Sciences. \
  Dissertation topic: Downside Risk Premia in Exchange-Traded Funds.
])

#experience("Emory University", "Atlanta, GA", "May 2014", 
  "BS Applied Mathematics, Double Major: Economics.",
)
