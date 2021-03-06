CatSqueel is an app with a simple premise: you achieve more when you have to work for your rewards.

## Concepts

### Flow

In this app, you are an Achiever. Every achiever has Manado (mana-doo as in mana-for-doing).
Your Manado changes in several ways:

 * You get Manado by completing Achievements (an action that you want to reinforce doing)
 * You lower Manado by using a Reward (ie something pleasurable for you)
 * You lower Manado by tripping a Punisher (an action that you want to weed out)

Thats it!

### Status

VERSION: 0.0.0.0.1

Currently being ported from the older [SIG](https://github.com/GregPK/sig) project.

The repo is useless right now

### Cat Squeel? Really?

**Kociokwik** *(polish) - (en. cat squeel)* - a period/circumstance of intense activity,
especially when the activity load in question leads to urgent tasks overshadowing the
important ones. To be avoided.


## Features

### Done

 * Login system :)
 * The rest is being ported from SIG

### Planned

#### v 0.1
In both the API and Web Client:

 * ability to lower/raise Manadoo by triggering Rewards, Punishments
   and Achievements
 * Asana integration built in

#### v 0.2

##### Features

#### v 0.3 - TBA

### Later

I don't want to fall prey to future creep, but there are some fun things that I might work on when I have some spare time.

 * add experience and levels - just as as fun thing, 1XP = 1 Manadoo
   (but it doesn't deteriorate ever)
 * challenges and badges - I feel that offering the player progressively
   more challenging chains of achievements can have a positive effect
   (ie. if you are stuck in a rut, the system will challenge you to acquire
   100 points within 7 days.  Or it can detect that you've been letting yourself    go lately and offer you a challenge for a "bounce back" badge or something.

## Other considerations

### Why not HabitRPG

 * HabitRPG has gold, silver, experience, health and so on, which in my mind
   muddles the direct correlation of achievement=reward.
 * HabitRPG sometimes loses data (happened to me more that once)
   or kills you off if you forget to tend to it, which is one more similiarity
   to a cow clicker that I can handle.
 * It is a bit infantile, which isn't really a bad thing per se, but in
   this case it ticked me off.

### Add-ons

 * Asana API as a source of achievements - This was actually the idea that
   started this project off. I wanted to get an overall view of how productive
   I was in terms of tasks done per day, and decided it wasn't that hard to
   build something that would moderate my reward as a result of that.

## Deployment

### Ruby version

Deveped using Ruby 2.0, but I hadn't used any version specific things, so should probably run on 1.9.3 (not tested)

### Deploy hooks

There is some development infrastructure setup alongside the project in the form of git hooks. Currently this
functionality is:

 * `pre-commit`:
 ** Run rubocop to enforce good coding practice
 * `post-commit`:
 ** Save current sandi_meter start for later analysis

To setup all hooks run the following in the project root:

```bash
ln development/hooks/post-commit.rb .git/hooks/post-commit
chmod +x .git/hooks/post-commit
ln development/hooks/pre-commit.sh .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
```

## Changelog (old)

### 0.2.0

 * allow for manado markers to be entered into asana task titles (not just notes)
 * added short syntax for manado in asana (^5^) - introduced mainly for task title usage

