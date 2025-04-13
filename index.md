---
layout: home
title: Home
---

# Welcome to AeropherHQ

Technical expertise and creative projects from Aeropher. Explore articles and resources on DevOps, 3D printing, productivity, and more.

## Explore Topics

- [DevOps](/devops/) - Azure, Terraform, PowerShell automation, and more
- [3D Printing](/3d-printing/) - Projects, tutorials, and resources
- [Productivity](/productivity/) - Systems, tools, and workflow optimization
- [Projects](/projects/) - Featured technical projects
- [About](/about/) - More about me and my background

## Recent Posts

{% for post in site.posts %}
<div class="post-preview">
  <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
  <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
  <p>{{ post.excerpt }}</p>
  <a href="{{ post.url }}">Read more...</a>
  <hr>
</div>
{% endfor %}
