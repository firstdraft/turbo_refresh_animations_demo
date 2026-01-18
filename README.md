# Turbo Refresh Animations Demo

This is a companion demo app for the [Turbo Refresh Animations walkthrough](https://firstdraft.com/lessons/809-turbo-refresh-animations).

## Setup

```bash
bundle install
rails db:migrate
rails db:seed
bin/dev
```

## About

This todo list app demonstrates the [turbo-refresh-animations](https://www.npmjs.com/package/turbo-refresh-animations) library, which adds:

- **Enter/exit/change animations** during Turbo morphs
- **Stream-only protection** to preserve form state during broadcasts while still allowing navigation morphs
- **Version tracking** for reliable change detection and stale data warnings
