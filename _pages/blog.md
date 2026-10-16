---
layout: page
permalink: /blog/
title: blog
description: Essays by Hrishikesh Kamath on AI agents, retrieval, web search, and investing, published on Substack.
nav: true
nav_order: 2
hide_title: true
---

## Writing on Tech, AI & Markets

I write about financial markets, tech, and AI on [Substack](https://kamathhrishi.substack.com). Here are my recent posts:

---

{% for post in site.data.blog_posts %}
### [{{ post.title }}]({{ post.url }})
*{{ post.date | date: '%B %Y' }}{% if post.venue %} · {{ post.venue }}{% endif %}*

{{ post.description }}

---
{% endfor %}

**Subscribe on [Substack](https://kamathhrishi.substack.com) for more posts on software engineering, AI, and financial markets.**
