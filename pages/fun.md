---
layout: page
title: Fun
permalink: /fun/
---

# Fun

This is where I share content that doesn't fit neatly into other categories - opinion pieces, jokes, random thoughts, and other fun stuff that's on my mind.

Check back for entertaining content that breaks from the technical focus of other sections!

## Recent Fun Posts

{% assign fun_posts = site.posts | where: "categories", "fun" %}
{% for post in fun_posts %}
<div class="post-preview">
  <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
  <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
  <p>{{ post.excerpt }}</p>
  <a href="{{ post.url }}">Read more...</a>
  <hr>
</div>
{% endfor %}
