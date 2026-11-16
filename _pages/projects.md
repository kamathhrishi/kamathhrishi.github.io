---
layout: paper
title: projects
description: Projects by Hrishikesh Kamath, including TheMarketCast.ai, StrataLens AI, a distributed web crawler and search engine, and PySyft.
permalink: /projects/
nav: true
nav_order: 1
---

<div class="title-row">
  <h1 class="page-title">Projects</h1>
  <p class="legend">
    <span><span class="dot dot-ai" aria-hidden="true"></span>AI</span>
    <span><span class="dot dot-markets" aria-hidden="true"></span>Markets</span>
    <span><span class="dot dot-web" aria-hidden="true"></span>Web data</span>
  </p>
</div>

<section class="section" aria-labelledby="built">
  <h2 class="section-title" id="built">Things I've built</h2>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-web" aria-hidden="true"></span>Distributed web crawler and search engine</h3>
      <span class="project-year">2026</span>
    </div>
    <p class="project-desc">My own web crawler and search engine, built from scratch. The index now covers 500M+ pages, stays fresh within <span class="nowrap">1–2 days</span> and runs for under $250 a month. Instead of a list of links, a query returns answers, closer to a spreadsheet of everything you asked for.</p>
    <p class="project-desc">Crawlers written in Rust run across a fleet of cheap cloud machines, with Redis as the coordination layer: URL dedupe, leases so a crashed worker's jobs get picked up again, per-domain locks and rate limits shared across every machine, and a dead-letter queue for failures. Pages are stored as markdown, and recrawls skip unchanged pages using content hashes and ETags. Search runs on a distributed full-text index of the crawled pages, ranked with BM25, with an agent that breaks a question down into searches.</p>
    <p class="project-tags">Rust · Redis · Tantivy · PostgreSQL · S3</p>
    <p class="project-links">
      <a href="https://kamathhrishi.substack.com/p/building-a-web-search-engine-1-crawling" target="_blank" rel="noopener">Part 1: Crawling →</a>
      <a href="https://kamathhrishi.substack.com/p/why-building-a-opinionated-web-crawler" target="_blank" rel="noopener">Why an opinionated crawler →</a>
    </p>
    <p class="project-note">These posts cover earlier versions, from 10M to 50M pages. It has grown a lot since.</p>
  </article>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-markets" aria-hidden="true"></span><a href="https://github.com/kamathhrishi/finance-agent" target="_blank" rel="noopener">StrataLens AI</a></h3>
      <span class="project-year">2025–2026</span>
    </div>
    <p class="project-desc">My attempt at a startup: an equity research agent for public markets. It covered 500+ tech companies with three years of earnings calls and 100,000+ SEC filings. The first version was a multi-agent RAG system with sub-agents for filings, earnings calls, news and stock screening, and its filings agent scored 91% on FinanceBench.</p>
    <p class="project-desc">I later rebuilt it as a single agent that works like an analyst at a terminal: it uses <code>ls</code>, <code>grep</code> and <code>read</code> on filings stored as markdown, with no vector database, and cites the exact line behind every number. The platform is no longer live, and I've open-sourced the code.</p>
    <p class="project-tags">Python · FastAPI · React</p>
    <div class="project-video">
      <iframe src="https://www.youtube.com/embed/3KwY8c-m2nc?start=2" title="StrataLens AI demo" loading="lazy" allowfullscreen></iframe>
    </div>
    <p class="project-links">
      <a href="https://github.com/kamathhrishi/finance-agent" target="_blank" rel="noopener">Code on GitHub →</a>
      <a href="https://kamathhrishi.substack.com/p/building-agentic-rag-for-financial" target="_blank" rel="noopener">How I got to 91% →</a>
    </p>
  </article>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-markets" aria-hidden="true"></span><a href="https://themarketcast.ai" target="_blank" rel="noopener">TheMarketCast.ai</a></h3>
      <span class="project-year">2025</span>
    </div>
    <p class="project-desc">A tracker for private fundraising, built on 450,000+ SEC Form D filings with sub-second queries thanks to Redis caching. It grew to 3,000+ weekly users and is now part of <a href="https://www.smartkarma.com/home/" target="_blank" rel="noopener">Smartkarma</a>.</p>
    <p class="project-tags">Python · PostgreSQL · Redis</p>
  </article>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-ai" aria-hidden="true"></span><a href="https://github.com/kamathhrishi/sourcemapr" target="_blank" rel="noopener">SourceMapR</a></h3>
      <span class="project-year">2025</span>
    </div>
    <p class="project-desc">One line of code to trace a RAG pipeline back to its source documents, so you can spot bad chunking or parsing.</p>
    <p class="project-tags">Python · RAG · Observability</p>
  </article>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-markets" aria-hidden="true"></span>Financial podcast platform</h3>
      <span class="project-year">2025</span>
    </div>
    <p class="project-desc">Personalized podcasts about the stocks in your portfolio, generated on demand with Whisper and GPT-4o and streamed over WebSockets. 50+ people used it in early beta.</p>
    <p class="project-tags">Python · Celery · React · WebSocket · AWS</p>
  </article>
</section>

<section class="section" aria-labelledby="open-source">
  <h2 class="section-title" id="open-source">Open source</h2>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-ai" aria-hidden="true"></span><a href="https://github.com/OpenMined/PySyft" target="_blank" rel="noopener">PySyft, OpenMined</a></h3>
      <span class="project-year">2019–2022</span>
    </div>
    <p class="project-desc">Core contributor to OpenMined's library for privacy-preserving ML. I implemented operations for FALCON, a secure multi-party computation protocol for private deep learning, its first implementation in Python.</p>
    <p class="project-tags">Python · PyTorch · SMPC · Differential Privacy</p>
  </article>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-ai" aria-hidden="true"></span><a href="https://github.com/kamathhrishi/GreyNSights" target="_blank" rel="noopener">GreyNSights</a></h3>
      <span class="project-year">2021</span>
    </div>
    <p class="project-desc">Privacy-preserving data analysis for Pandas, using differential privacy and secure multi-party computation.</p>
    <p class="project-tags">Python · Pandas · Differential Privacy · SMPC</p>
  </article>
</section>
