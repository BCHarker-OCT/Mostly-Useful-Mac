# README

A list of mostly useful apps that I use on macOS that make things easier to get done. I try to stick to one-time purchases or free.

## General Quickness

- Clipboard Manager: [maccy](https://maccy.app)
- Typing automator: [Rocket Typist](https://www.witt-software.com/rockettypist/)
  - One-time fee, but a big time saver. I can have it replace text with small shortcuts, as well as templates to make things go faster. This is useful for typing out Linux commands that are very long, repetitive, or for always typing someone's name correctly in Slack.
  - Example:  `!H` types `hostname -f`
- Text expansion: [espanso](https://espanso.org)
  - Free, open-source text expander that works across all applications. Similar to Rocket Typist but lighter weight and highly customizable.
- Screenshot tool: [shottr](https://shottr.cc) (one time fee, but worth it!)
- Spotlight on steroids: [Raycast](https://www.raycast.com/)
  - Extensible launcher with powerful extensions. Includes a [Project Manager extension](https://www.raycast.com/stellarsky/project-manager) for easily opening GitHub repos and projects.
- Updates: [MacUpdater](https://macupdater.net/)
- [Leader Key](https://github.com/mikker/LeaderKey.app)
  - This is the app that makes Raycast better. I disable the Spotlight shortcut and now use this for spotlight and it makes things so much faster!

## Notes

I have a mix of a few.
- Apple Notes 📔

## Terminal Emulators

- [iTerm2](https://iterm2.com)

## Applications CLI and GUI

- [Moves](https://github.com/mikker/Moves.app)
  - Mac struggles with good window management. The hot keys are intuitive and the result is great. Oh and it's FREE!
- [LeaderKey](https://github.com/mikker/LeaderKey.app)
  - This app just makes it a piece of cake to do things!
  - See the author's [config](https://github.com/mikker/dotfiles/blob/master/leader_key/config.json)
- [LICEcap](https://www.cockos.com/licecap/)
  - Funny name, but it helps make GIFs.
- [PopClip](https://www.popclip.app)
  - Start looking at their extensions, this app is so simple, but a magnificent time-saver.
- [Latest](https://max.codes/latest/)
  - Updates for applications in macOS.
- [TextSniper](https://textsniper.app)
  - A one-time fee, but well worth it. While macOCR is free, this app does better at keeping the text on different lines and can speed up OCR on-screen capture.
- [Better Touch Tool](https://folivora.ai)
  - Powerful automation tool for custom gestures, shortcuts, and window management. Great for power users who want to streamline their workflow.
- [pyenv](https://github.com/pyenv/pyenv)
  - A simple way to manage multiple versions of Python. So easy I don't even know how I got it to work and how it's still working.
- [homebrew](https://brew.sh)

## Utilities & Maintenance

- [mac_software_updater](https://github.com/pr-fuzzylogic/mac_software_updater)
  - A helpful utility to manage and automate updates for Homebrew applications. Keeps your brew packages up to date easily.


## 🧓 Retired

Apps I no longer use for one reason or another...

- [Wins](https://wins.cool)
  - An app for Window management.
  - My main issue with this app is the license didn't transfer when I upgraded my mac.
  - Leader Key and Moves also filled the need with less mouse fiddling.
- [PagerDuty CLI](https://github.com/martindstone/pagerduty-cli)
  - Easy way to interact with PagerDuty. You can use it to find out who is oncall, or also to ack incidents and get incident stats. Documentation is good enough to get things done, but more examples would be nice.
  - See HomeBrew installation `brew install zph/zph/pagerduty-cli`
  - PD retired this one, what a mistake! 😔
- [mas](https://github.com/mas-cli/mas)
  - Command line macOS app store. Still experimenting with it, not sure how useful it is.
  - `mas list`
  - `mas outdated`
  - `mas upgrade`
- [mailsy](https://github.com/BalliAsghar/Mailsy)
  - Generate command line disposable e-mails `mailsy g` and `mailsy m`
  - `mailsy -help`
- [macOCR](https://github.com/schappim/macOCR)
  - Allows you to type `ocr` and have the text output to your terminal. Apple has a similar feature for images, but it's nice to not need to take a screenshot to quickly grab some text on screen that is not copyable. It does have some problems with special characters at times.
  - TextSniper fills this need, so I don't have much use for this anymore. The simple key command makes it more useful than the CLI alone.

## Kubernetes

- [kubens](https://github.com/ahmetb/kubectx)
- [stern](https://kubernetes.io/blog/2016/10/tail-kubernetes-with-stern/)
- [popeye](https://popeyecli.io)
