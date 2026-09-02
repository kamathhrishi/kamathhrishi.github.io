---
layout: page
permalink: /portfolio/
title: portfolio
nav: true
nav_order: 3
hide_title: true
---

<style>
.domain-intro {
  max-width: 640px;
  margin: 0 auto 40px;
  text-align: center;
}
.domain-intro h2 {
  margin-bottom: 12px;
}
.domain-intro p {
  color: var(--global-text-color-light);
  line-height: 1.7;
  margin: 0;
}
.domain-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 16px;
  max-width: 860px;
  margin: 0 auto 40px;
}
.domain-card {
  display: block;
  background: var(--global-card-bg-color);
  border: 1px solid var(--global-divider-color);
  border-radius: 12px;
  padding: 22px 24px;
  text-decoration: none !important;
  transition: border-color 0.2s ease, transform 0.2s ease, box-shadow 0.2s ease;
}
.domain-card:hover {
  border-color: var(--global-theme-color);
  transform: translateY(-3px);
  box-shadow: 0 6px 18px rgba(0, 0, 0, 0.08);
}
.domain-card .domain-name {
  display: flex;
  align-items: baseline;
  justify-content: space-between;
  gap: 8px;
  font-weight: 600;
  font-size: 1.05rem;
  color: var(--global-text-color);
  margin-bottom: 6px;
}
.domain-card .domain-arrow {
  color: var(--global-theme-color);
  font-size: 0.9rem;
  opacity: 0;
  transition: opacity 0.2s ease;
}
.domain-card:hover .domain-arrow {
  opacity: 1;
}
.domain-card .domain-url {
  font-family: monospace;
  font-size: 0.85rem;
  color: var(--global-text-color-light);
}
.domain-footnote {
  text-align: center;
  font-style: italic;
  color: var(--global-text-color-light);
  font-size: 0.9rem;
}
</style>

<div class="domain-intro">
  <h2>Portfolio</h2>
  <p>I like investing in financial markets in general — but these are some alternative assets I own :P</p>
</div>

<div class="domain-grid">
  <a class="domain-card" href="https://themarketcast.ai" target="_blank" rel="noopener">
    <div class="domain-name">The Market Cast <span class="domain-arrow">↗</span></div>
    <div class="domain-url">themarketcast.ai</div>
  </a>
  <a class="domain-card" href="https://www.stratalens.ai" target="_blank" rel="noopener">
    <div class="domain-name">Strata Lens <span class="domain-arrow">↗</span></div>
    <div class="domain-url">www.stratalens.ai</div>
  </a>
  <a class="domain-card" href="https://noleaf.app" target="_blank" rel="noopener">
    <div class="domain-name">Noleaf <span class="domain-arrow">↗</span></div>
    <div class="domain-url">noleaf.app</div>
  </a>
  <a class="domain-card" href="https://communitynoted.com" target="_blank" rel="noopener">
    <div class="domain-name">Community Noted <span class="domain-arrow">↗</span></div>
    <div class="domain-url">communitynoted.com</div>
  </a>
  <a class="domain-card" href="https://theunsloppable.com" target="_blank" rel="noopener">
    <div class="domain-name">The Unstoppable <span class="domain-arrow">↗</span></div>
    <div class="domain-url">theunsloppable.com</div>
  </a>
  <a class="domain-card" href="https://asdisclosed.com" target="_blank" rel="noopener">
    <div class="domain-name">As Disclosed <span class="domain-arrow">↗</span></div>
    <div class="domain-url">asdisclosed.com</div>
  </a>
</div>

<p class="domain-footnote">Diversification is owning six domains instead of one.</p>
