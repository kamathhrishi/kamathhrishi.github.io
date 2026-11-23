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
  {% assign posts_per_page = 10 %}
  {% assign post_count = site.data.blog_posts | size %}
  {% assign page_count = post_count | plus: posts_per_page | minus: 1 | divided_by: posts_per_page %}
  <ul class="post-list">
    {% for post in site.data.blog_posts %}
      {% assign post_page = forloop.index0 | divided_by: posts_per_page | plus: 1 %}
      <li class="post" data-page="{{ post_page }}">
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
  {% if page_count > 1 %}
    <nav class="pager" aria-label="Post pages" hidden>
      <a class="pager-prev" href="{{ page.url | relative_url }}">← Newer</a>
      {% for n in (1..page_count) %}
        <a class="pager-num" href="{% if n == 1 %}{{ page.url | relative_url }}{% else %}?page={{ n }}{% endif %}" data-page="{{ n }}">{{ n }}</a>
      {% endfor %}
      <a class="pager-next" href="?page=2">Older →</a>
    </nav>
    <script src="{{ '/assets/js/pager.js' | relative_url | bust_file_cache }}"></script>
  {% endif %}
</section>

<p class="page-outro">Subscribe on <a href="https://kamathhrishi.substack.com" target="_blank" rel="noopener">Substack</a> for more posts on software engineering, AI, and financial markets.</p>
