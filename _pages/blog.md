---
layout: paper
permalink: /blog/
title: blog
description: Essays by Hrishikesh Kamath on AI agents, retrieval, web search, and investing, published on Substack.
nav: true
nav_order: 2
---

<h1 class="page-title">Writing on Tech, AI &amp; Markets</h1>
<p class="page-intro">I write about financial markets, tech, and AI on <a href="https://kamathhrishi.substack.com" target="_blank" rel="noopener">Substack</a>. Here are my recent posts:</p>

<section class="section" aria-labelledby="posts">
  <div class="section-head">
    <h2 class="section-title" id="posts">Posts</h2>
    <p class="legend">
      <span><span class="dot dot-ai" aria-hidden="true"></span>AI</span>
      <span><span class="dot dot-markets" aria-hidden="true"></span>Markets</span>
      <span><span class="dot dot-web" aria-hidden="true"></span>Web data</span>
    </p>
  </div>
  <ul class="post-list">
    {% for post in site.data.blog_posts %}
      <li class="post">
        <span class="post-date">{{ post.date | date: '%Y · %m' }}</span>
        <span class="dot {% if post.topic %}dot-{{ post.topic }}{% else %}dot-none{% endif %}" aria-hidden="true"></span>
        <div class="post-body">
          <a class="post-title" href="{{ post.url }}" target="_blank" rel="noopener">{{ post.title }}</a>
          {%- if post.venue %}<span class="post-venue">{{ post.venue }}</span>{% endif %}
          {% if post.description != '' %}
            <p class="post-desc">{{ post.description | strip_html }}</p>
          {% endif %}
        </div>
      </li>
    {% endfor %}
  </ul>
</section>

<p class="page-outro">Subscribe on <a href="https://kamathhrishi.substack.com" target="_blank" rel="noopener">Substack</a> for more posts on software engineering, AI, and financial markets.</p>
