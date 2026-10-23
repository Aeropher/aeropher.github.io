---
layout: page
title: RightNow
permalink: /rightnow/
---

RightNow is a time-blocking app with a place to park everything else. You plan each day around the hours you actually have, and the app tells you when the day is full instead of letting the list grow forever.

I started it in spring 2024 to scratch my own itch, and it's now the biggest thing I've built outside work: 40,000+ lines of Dart with 10,000 lines of tests.

## Get it

- [iPhone and iPad, on the App Store](https://apps.apple.com/gb/app/rightnow/id6747011987)
- [Web, at rtnw.app](https://rtnw.app)
- Android is in testing

## What it does

- Set how much time you have today; a capacity bar fills as you commit it, and RightNow warns you when the day is full.
- Every task carries a time estimate, and the app compares estimates with actuals so you get better at planning.
- Quick swipe games give tasks honest sizes and priorities, so the backlog stays actionable.
- Yesterday's unfinished tasks float to the top today, then drift back to normal priority.
- Focus mode runs a timer for the task you're on, and Google Calendar events sit alongside your tasks.

## How it's built

Flutter and Dart, Riverpod for state, Hive for offline-first storage, Firebase behind it, and CI/CD on GitHub Actions. I build it in public: news and the dev blog are at [blog.rtnw.app](https://blog.rtnw.app), and bug reports and feature requests go to [GitHub](https://github.com/aeropher/rtnwapp).

## Support

- [Privacy policy](/rightnow-privacy-policy/)
- [Delete your account](/rightnow-delete-account/)
