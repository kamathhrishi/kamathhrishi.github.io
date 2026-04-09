---
layout: page
title: projects
permalink: /projects/
nav: true
nav_order: 1
hide_title: true
---

<style>
.project-list {
  display: flex;
  flex-direction: column;
  gap: 16px;
  margin: 32px 0;
}

.project-card {
  border: 1px solid #e0e0e0;
  border-radius: 8px;
  padding: 20px 24px;
  background: #fff;
  display: flex;
  flex-direction: row;
  gap: 0;
}

.project-left {
  flex: 0 0 210px;
  display: flex;
  flex-direction: column;
  gap: 6px;
  border-right: 1px solid #ececec;
  padding-right: 24px;
  margin-right: 24px;
}

.project-title {
  font-size: 1rem;
  font-weight: 600;
  color: #333;
  margin: 0;
}

.project-year {
  font-size: 0.78rem;
  color: #999;
}

.project-tagline {
  font-size: 0.82rem;
  color: #666;
  font-style: italic;
  line-height: 1.5;
  margin: 0;
}

.project-right {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.project-desc {
  font-size: 0.87rem;
  color: #444;
  line-height: 1.65;
  margin: 0;
}

.project-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 6px;
}

.tag {
  font-size: 0.73rem;
  background: #f4f4f4;
  color: #555;
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 2px 8px;
}

.project-link {
  display: inline-block;
  margin-top: auto;
  font-size: 0.78rem;
  color: #b509ac;
  border: 1px solid #b509ac;
  border-radius: 4px;
  padding: 3px 10px;
  text-decoration: none;
  width: fit-content;
}

.project-link:hover {
  background: #b509ac;
  color: #fff;
}

.section-title {
  text-align: center;
  font-weight: bold;
  margin: 48px 0 8px 0;
  font-size: 1.3rem;
  color: #222;
}

.section-divider {
  border: none;
  border-top: 1px solid #e0e0e0;
  margin: 0 auto 32px auto;
  width: 60px;
}

@media (max-width: 640px) {
  .project-card {
    flex-direction: column;
    gap: 12px;
  }

  .project-left {
    flex: none;
    border-right: none;
    border-bottom: 1px solid #ececec;
    padding-right: 0;
    margin-right: 0;
    padding-bottom: 12px;
  }

  .section-title {
    margin-top: 32px;
  }
}
</style>

<p class="section-title">Live Projects</p>
<hr class="section-divider">

<div class="project-list">

<div class="project-card">
  <div class="project-left">
    <p class="project-title">TheMarketCast.ai</p>
    <span class="project-year">2025</span>
    <p class="project-tagline">3,000+ organic weekly users tracking private fundraising activity</p>
    <a class="project-link" href="https://themarketcast.ai" target="_blank">↗ Visit Site</a>
  </div>
  <div class="project-right">
    <p class="project-desc">Built a <strong>Python/PostgreSQL</strong> platform parsing and analyzing <strong>450,000+ SEC Form D filings</strong> with <strong>sub-second query latency</strong> via Redis caching and query optimization, attracting <strong>3,000+ organic weekly users</strong>. Acquired by <strong><a href="https://www.smartkarma.com/home/" target="_blank">Smartkarma</a></strong>, a global investment research and analysis platform.</p>
    <div class="project-tags">
      <span class="tag">Python</span>
      <span class="tag">PostgreSQL</span>
      <span class="tag">Redis</span>
    </div>
  </div>
</div>

<div class="project-card">
  <div class="project-left">
    <p class="project-title">StrataLens AI</p>
    <span class="project-year">2025</span>
    <p class="project-tagline">Equity research agent with 91% accuracy on FinanceBench</p>
    <a class="project-link" href="https://stratalens.ai" target="_blank">↗ Visit Site</a>
  </div>
  <div class="project-right">
    <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; border-radius: 6px;">
      <iframe src="https://www.youtube.com/embed/3KwY8c-m2nc?start=2" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: none;" allowfullscreen></iframe>
    </div>
    <p class="project-desc">Equity research platform for financial analysts. Designed <strong>multi-agent system</strong> across <strong>4 specialized sub-agents</strong> (SEC filings, earnings calls, news, stock screener) using <strong>Qwen3-235B</strong> with web search and text-to-SQL interfaces via <strong>Tavily</strong>, and agent observability via <strong>Logfire</strong>. SEC filings sub-agent achieved <strong>91% accuracy on FinanceBench</strong> via latency-optimized RAG over <strong>100,000+ vectorized filings in Qdrant</strong>, evaluated with an <strong>LLM-as-judge</strong> pipeline measuring relevance, accuracy, and citation quality. Built end-to-end with <strong>React/TypeScript</strong> frontend and <strong>FastAPI/PostgreSQL/S3</strong> backend.</p>
    <div class="project-tags">
      <span class="tag">Python</span>
      <span class="tag">FastAPI</span>
      <span class="tag">React</span>
      <span class="tag">TypeScript</span>
      <span class="tag">PostgreSQL</span>
      <span class="tag">Qdrant</span>
      <span class="tag">Logfire</span>
    </div>
  </div>
</div>

<div class="project-card">
  <div class="project-left">
    <p class="project-title">CommunityNoted</p>
    <span class="project-year">2026</span>
    <p class="project-tagline">Searchable leaderboard of X accounts with the most Community Notes</p>
    <a class="project-link" href="https://communitynoted-production.up.railway.app/" target="_blank">↗ Visit Site</a>
  </div>
  <div class="project-right">
    <p class="project-desc">Helps X users know which accounts to trust by surfacing <strong>fake news</strong> and <strong>engagement bait</strong> patterns. First step: making <strong>200,000+ Community Notes</strong> searchable and ranking accounts by how many they've received.</p>
    <div class="project-tags">
      <span class="tag" style="background:#fff8e1;border-color:#f5c842;color:#8a6d00; font-weight:600;">🤫 you're seeing this before it launches</span>
    </div>
  </div>
</div>

</div>

<p class="section-title">Technical Projects</p>
<hr class="section-divider">

<div class="project-list">

<div class="project-card">
  <div class="project-left">
    <p class="project-title">Web Search Engine</p>
    <span class="project-year">2026</span>
    <p class="project-tagline">Distributed crawler over 30M+ pages at 350k pages/hour for &lt;$100/month</p>
  </div>
  <div class="project-right">
    <p class="project-desc">Built <strong>fault-tolerant distributed web crawlers in Rust</strong> across <strong>10 instances</strong> with <strong>Redis</strong> queue coordination (lease management, domain locking, dead-letter queues, per-domain rate limiting), crawling <strong>350,000 pages/hour</strong> for <strong>&lt;$100/month</strong>. Built full-text search over <strong>30M+ pages (1 TB+)</strong> using <strong>Tantivy</strong> inverted index with <strong>BM25 ranking</strong> and <strong>ReAct agent-driven</strong> query decomposition and reasoning, with a <strong>React/TypeScript</strong> frontend.</p>
    <div class="project-tags">
      <span class="tag">Rust</span>
      <span class="tag">Redis</span>
      <span class="tag">Tantivy</span>
      <span class="tag">React</span>
      <span class="tag">TypeScript</span>
    </div>
  </div>
</div>

<div class="project-card">
  <div class="project-left">
    <p class="project-title">Financial Podcast Platform</p>
    <span class="project-year">2025</span>
    <p class="project-tagline">50+ early beta users, personalized portfolio podcasts on-demand</p>
  </div>
  <div class="project-right">
    <p class="project-desc">Real-time AI podcast platform using <strong>OpenAI Whisper</strong> and <strong>GPT-4o</strong> with <strong>Celery</strong> workers for async audio generation. <strong>React</strong> frontend with <strong>WebSocket streaming</strong> for live audio updates, backend deployed on <strong>AWS</strong>. Organically acquired <strong>50+ users in early beta</strong> with portfolio-based personalized podcast generation on-demand. Market data pipeline processing <strong>9,000 tickers every 20 minutes</strong> using <strong>SERP API</strong> and Redis caching.</p>
    <div class="project-tags">
      <span class="tag">Python</span>
      <span class="tag">React</span>
      <span class="tag">Celery</span>
      <span class="tag">WebSocket</span>
      <span class="tag">OpenAI Whisper</span>
      <span class="tag">GPT-4o</span>
      <span class="tag">AWS</span>
    </div>
  </div>
</div>

<div class="project-card">
  <div class="project-left">
    <p class="project-title">SourceMapR</p>
    <span class="project-year">2025</span>
    <p class="project-tagline">One line of code to add observability to your RAG pipelines</p>
    <a class="project-link" href="https://github.com/kamathhrishi/sourcemapr" target="_blank">↗ GitHub</a>
  </div>
  <div class="project-right">
    <p class="project-desc">Drop-in observability library for <strong>RAG pipelines</strong>. Traces <strong>retrieval quality, latency, and relevance</strong> with minimal instrumentation, designed so engineers can monitor and debug RAG systems without changing their existing pipeline code. Provides observability from the <strong>source documents</strong> with citations to detect <strong>broken chunking, incorrect parsing</strong>, and other ingestion-level failures that are otherwise invisible at query time.</p>
    <div class="project-tags">
      <span class="tag">Python</span>
      <span class="tag">RAG</span>
      <span class="tag">Observability</span>
      <span class="tag">LLM</span>
    </div>
  </div>
</div>

</div>

<p class="section-title">Open Source</p>
<hr class="section-divider">

<div class="project-list">

<div class="project-card">
  <div class="project-left">
    <p class="project-title">PySyft, OpenMined</p>
    <span class="project-year">2019–2022</span>
    <p class="project-tagline">Core contributor to one of the most widely used privacy-preserving ML libraries</p>
    <a class="project-link" href="https://github.com/OpenMined/PySyft" target="_blank">↗ GitHub</a>
  </div>
  <div class="project-right">
    <p class="project-desc">Implemented <strong>FALCON protocol</strong> operations, the <strong>first Python implementation</strong> of an honest-majority maliciously secure framework for private deep learning. Planned the <strong>SyMPC library</strong> roadmap and performed code reviews for the secure multi-party computation library. Contributed to core privacy-preserving ML infrastructure using <strong>PyTorch</strong>, <strong>TensorFlow</strong>, and <strong>differential privacy</strong>.</p>
    <div class="project-tags">
      <span class="tag">Python</span>
      <span class="tag">PyTorch</span>
      <span class="tag">TensorFlow</span>
      <span class="tag">SMPC</span>
      <span class="tag">Differential Privacy</span>
    </div>
  </div>
</div>

<div class="project-card">
  <div class="project-left">
    <p class="project-title">GreyNSights</p>
    <span class="project-year">2021</span>
    <p class="project-tagline">Privacy-preserving data analysis framework for Pandas</p>
    <a class="project-link" href="https://github.com/kamathhrishi/GreyNSights" target="_blank">↗ GitHub</a>
  </div>
  <div class="project-right">
    <p class="project-desc">Framework for <strong>privacy-preserving data analysis</strong> using <strong>Pandas</strong> with a pointer-based architecture for flexible EDA on private data without direct access. Implements <strong>differential privacy</strong> for individual row protection and <strong>federated analytics</strong> using secure multi-party computation.</p>
    <div class="project-tags">
      <span class="tag">Python</span>
      <span class="tag">Pandas</span>
      <span class="tag">Differential Privacy</span>
      <span class="tag">SMPC</span>
    </div>
  </div>
</div>

</div>
