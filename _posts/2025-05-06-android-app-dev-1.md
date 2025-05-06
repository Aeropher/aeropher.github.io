---
layout: post
title: "App Part 1: Vibe Coding and Android Development"
description: "Alex tries to write an app but doesn't know how so Vibe Coding to the rescue!"
date: 2025-04-16
image:  '/images/theme_projects.jpg'
tags:   [project, android, app, flutter, development, coding]
categories: projects
---

# Diving Into App Development: My 3-Week Flutter Journey

After years of working in backend DevOps and infrastructure automation, I decided to step out of my comfort zone and build something I've been thinking about for a while: a better todo app.

## Why Build Another Todo App?

I've been using TickTick for my task management, and while it's good, there are a few things that just drive me nuts:

1. The notification system is bulky and gets in the way. Yes, notifications should be noticeable, but they need better dismiss/snooze options.

2. The concept of lists vs. tags feels limiting. I want a single list with powerful tagging capabilities (including potential geo-tagging). The right task should appear at the right moment in my life.

3. There aren't enough tools to help users groom their backlog. Let's face it - we all create more tasks than we complete, and managing that growing list is crucial.

## The "Vibe Coding" Experience

I've been hearing all this hype about "vibe coding" with AI assistants like GitHub Copilot, and to be honest, I was skeptical. Is it really transforming development like everyone claims?

After three weeks, I have some thoughts.

I'm mightily impressed with what I've been able to achieve, but I remain cautious. I don't understand all the code in my app - and that's the important bit - but I'm confident I can figure it out because I'm a damn good coder and problem solver at heart.

My concern is for juniors or hobbyists who might not have that foundational knowledge. They could end up producing garbage in their full-time jobs or struggle indefinitely with their projects.

My approach evolved over time:
- Initially, I was very targeted with prompts (which honestly gets the best results)
- Later, I got bolder with requests like "write all the unit tests" - these broad prompts aren't as effective but provide useful starting points
- I actually restarted the app once because I felt the AI had engineered the class structure poorly

I've used both Claude 3.7 Sonnet and Gemini 2.5 Pro (Preview). Claude tends to write more code without interruption, while Gemini wants constant approval. Tradeoffs everywhere.

## Flutter: The Cross-Platform Dream

Platform independence is absolutely critical for my vision. I own Google Homes, a Pixel phone, a Pixel watch - and these devices should integrate better than they currently do. Add Google Calendar and Gmail to the mix, and there's massive potential for a truly integrated productivity system.

I'm even thinking about incorporating clock and alarm features so I don't get notifications on days my calendar knows are holidays.

Flutter seemed like the natural choice to achieve this cross-platform dream.

## The Roadmap Evolution

What started as a simple target document on day one has become an integral development tool. It's not just for task management but for tracking progress and capturing ideas.

Interestingly, it's also become part of my workflow with AI assistants. The AI can examine both my codebase and roadmap to confirm what has and hasn't been accomplished, as well as expand on ideas I add to the document.

The roadmap grows with almost every coding session as new ideas emerge. But I'm trying to be disciplined - get an MVP out that isn't buggy before adding all the bells and whistles. Walk before you run.

## The Google Platform Puzzle

After three weeks of coding for 1-2 hours most days, I finally have a version in the internal track of the Android app store. But let me tell you - I'm not sure how Google Console, the Play Store, Firebase, and Google Cloud all hang together. It's all a bit confusing.

I've set up a GitHub repo with GitHub Actions that automatically creates a build with each push to main - this is bread and butter stuff from my day job, though I typically use Azure DevOps there.

But the Google ecosystem has its quirks:
- Google Cloud is where I need to create a service account for my app (which is set up in Google Play Console)
- Firebase created additional resources in Google Cloud I didn't know about
- Now I have two service accounts - one I created and one by Firebase
- I need these credentials for my GitHub Action to authenticate and push new packages
- It can't find the app that clearly exists in Google Console

Why can't I do the Google Cloud stuff directly from Firebase or Google Console? Or the Firebase stuff from Google Console? It all feels disjointed despite these services supposedly integrating with each other.

## What's Next?

While I'm not ready to reveal the name of my app just yet, I'm excited about where this is headed. The internal Play Store version is a huge milestone, and I'm learning tons about Flutter, Firebase, and the Google ecosystem along the way.

As a backend infrastructure guy diving into frontend territory, this has been refreshingly challenging. Sometimes you need to step outside your comfort zone to build something truly useful.

I'll keep you updated as the app progresses. Next up: fixing that CI/CD pipeline to get automatic deployments to the internal track working properly.

*Have you ever built an app to scratch your own itch? Or used AI coding assistants for development? I'd love to hear about your experiences in the comments.*