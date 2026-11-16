---
layout: paper
title: projects
description: Projects by Hrishikesh Kamath, including TheMarketCast.ai, StrataLens AI, a distributed web search engine in Rust, and PySyft.
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

<section class="section" aria-labelledby="live-projects">
  <h2 class="section-title" id="live-projects">Live projects</h2>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-markets" aria-hidden="true"></span><a href="https://themarketcast.ai" target="_blank" rel="noopener">TheMarketCast.ai</a></h3>
      <span class="project-year">2025</span>
    </div>
    <p class="project-tagline">3,000+ organic weekly users tracking private fundraising activity</p>
    <p class="project-desc">Built a <strong>Python/PostgreSQL</strong> platform parsing and analyzing <strong>450,000+ SEC Form D filings</strong> with <strong>sub-second query latency</strong> via Redis caching and query optimization, attracting <strong>3,000+ organic weekly users</strong>. Acquired by <a href="https://www.smartkarma.com/home/" target="_blank" rel="noopener">Smartkarma</a>, a global investment research and analysis platform.</p>
    <p class="project-tags">Python · PostgreSQL · Redis</p>
  </article>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-markets" aria-hidden="true"></span><a href="https://stratalens.ai" target="_blank" rel="noopener">StrataLens AI</a></h3>
      <span class="project-year">2025</span>
    </div>
    <p class="project-tagline">Equity research agent with 91% accuracy on FinanceBench</p>
    <div class="project-video">
      <iframe src="https://www.youtube.com/embed/3KwY8c-m2nc?start=2" title="StrataLens AI demo" loading="lazy" allowfullscreen></iframe>
    </div>
    <p class="project-desc">Equity research platform for financial analysts. Designed <strong>multi-agent system</strong> across <strong>4 specialized sub-agents</strong> (SEC filings, earnings calls, news, stock screener) using <strong>Qwen3-235B</strong> with web search and text-to-SQL interfaces via <strong>Tavily</strong>, and agent observability via <strong>Logfire</strong>. SEC filings sub-agent achieved <strong>91% accuracy on FinanceBench</strong> via latency-optimized RAG over <strong>100,000+ vectorized filings in Qdrant</strong>, evaluated with an <strong>LLM-as-judge</strong> pipeline measuring relevance, accuracy, and citation quality. Built end-to-end with <strong>React/TypeScript</strong> frontend and <strong>FastAPI/PostgreSQL/S3</strong> backend.</p>
    <p class="project-tags">Python · FastAPI · React · TypeScript · PostgreSQL · Qdrant · Logfire</p>
  </article>
</section>

<section class="section" aria-labelledby="technical-projects">
  <h2 class="section-title" id="technical-projects">Technical projects</h2>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-web" aria-hidden="true"></span>Web Search Engine</h3>
      <span class="project-year">2026</span>
    </div>
    <p class="project-tagline">Distributed crawler over 30M+ pages at 350k pages/hour for &lt;$100/month</p>
    <p class="project-desc">Built <strong>fault-tolerant distributed web crawlers in Rust</strong> across <strong>10 instances</strong> with <strong>Redis</strong> queue coordination (lease management, domain locking, dead-letter queues, per-domain rate limiting), crawling <strong>350,000 pages/hour</strong> for <strong>&lt;$100/month</strong>. Built full-text search over <strong>30M+ pages (1 TB+)</strong> using <strong>Tantivy</strong> inverted index with <strong>BM25 ranking</strong> and <strong>ReAct agent-driven</strong> query decomposition and reasoning, with a <strong>React/TypeScript</strong> frontend.</p>
    <p class="project-tags">Rust · Redis · Tantivy · React · TypeScript</p>
  </article>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-markets" aria-hidden="true"></span>Financial Podcast Platform</h3>
      <span class="project-year">2025</span>
    </div>
    <p class="project-tagline">50+ early beta users, personalized portfolio podcasts on-demand</p>
    <p class="project-desc">Real-time AI podcast platform using <strong>OpenAI Whisper</strong> and <strong>GPT-4o</strong> with <strong>Celery</strong> workers for async audio generation. <strong>React</strong> frontend with <strong>WebSocket streaming</strong> for live audio updates, backend deployed on <strong>AWS</strong>. Organically acquired <strong>50+ users in early beta</strong> with portfolio-based personalized podcast generation on-demand. Market data pipeline processing <strong>9,000 tickers every 20 minutes</strong> using <strong>SERP API</strong> and Redis caching.</p>
    <p class="project-tags">Python · React · Celery · WebSocket · OpenAI Whisper · GPT-4o · AWS</p>
  </article>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-ai" aria-hidden="true"></span><a href="https://github.com/kamathhrishi/sourcemapr" target="_blank" rel="noopener">SourceMapR</a></h3>
      <span class="project-year">2025</span>
    </div>
    <p class="project-tagline">One line of code to add observability to your RAG pipelines</p>
    <p class="project-desc">Drop-in observability library for <strong>RAG pipelines</strong>. Traces <strong>retrieval quality, latency, and relevance</strong> with minimal instrumentation, designed so engineers can monitor and debug RAG systems without changing their existing pipeline code. Provides observability from the <strong>source documents</strong> with citations to detect <strong>broken chunking, incorrect parsing</strong>, and other ingestion-level failures that are otherwise invisible at query time.</p>
    <p class="project-tags">Python · RAG · Observability · LLM</p>
  </article>
</section>

<section class="section" aria-labelledby="open-source">
  <h2 class="section-title" id="open-source">Open source</h2>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-ai" aria-hidden="true"></span><a href="https://github.com/OpenMined/PySyft" target="_blank" rel="noopener">PySyft, OpenMined</a></h3>
      <span class="project-year">2019–2022</span>
    </div>
    <p class="project-tagline">Core contributor to one of the most widely used privacy-preserving ML libraries</p>
    <p class="project-desc">Implemented <strong>FALCON protocol</strong> operations, the <strong>first Python implementation</strong> of an honest-majority maliciously secure framework for private deep learning. Planned the <strong>SyMPC library</strong> roadmap and performed code reviews for the secure multi-party computation library. Contributed to core privacy-preserving ML infrastructure using <strong>PyTorch</strong>, <strong>TensorFlow</strong>, and <strong>differential privacy</strong>.</p>
    <p class="project-tags">Python · PyTorch · TensorFlow · SMPC · Differential Privacy</p>
  </article>

  <article class="project">
    <div class="project-head">
      <h3 class="project-name"><span class="dot dot-ai" aria-hidden="true"></span><a href="https://github.com/kamathhrishi/GreyNSights" target="_blank" rel="noopener">GreyNSights</a></h3>
      <span class="project-year">2021</span>
    </div>
    <p class="project-tagline">Privacy-preserving data analysis framework for Pandas</p>
    <p class="project-desc">Framework for <strong>privacy-preserving data analysis</strong> using <strong>Pandas</strong> with a pointer-based architecture for flexible EDA on private data without direct access. Implements <strong>differential privacy</strong> for individual row protection and <strong>federated analytics</strong> using secure multi-party computation.</p>
    <p class="project-tags">Python · Pandas · Differential Privacy · SMPC</p>
  </article>
</section>
