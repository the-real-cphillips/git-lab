# A Git Lab... not GitLab ...


!!! warning "This doc assumes a few things"

    * You're on a Mac or Linux environment
        * If you're running windows, you CAN either run `docker` or tryout WSLv2!
        * `docker run -it --rm ubuntu` as an example setup your SSH Keys and then you can `git` at it... (Sorry, I couldn't help myself)
    * You have `git` installed in some capacity.
    * You have a [GitHub](https://www.github.com) account
    * You've setup SSH Keys for that account on your local machine
        * If you haven't done this, please visit [SETUP](SETUP.md) for SSH setup

---

## Overview

Alright, so you feel like messing around with some `git`?! 

You don't NEED GitHub (or GitLab) for that, you can toy around with most of `git` right on your command-line.

First, make sure you have `git` installed ( you likely do )


```bash
╰─ which git
/usr/bin/git

╰─ git
usage: git [--version] [--help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           <command> [<args>]
```

!!! danger "No Git?"
    If you have no `git` installed, please check out how to do that for your respective Operating System:
    * [Git Downloads](https://git-scm.com/downloads)


Next up I'm gonna have some tasks that you'll want to step through and see if you can complete.  
Before we go on I'd like to point you to some reading materials or references; use them how you like.

!!! important "Recommended Reading"
    * [Git SCM](https://git-scm.com/book/en/v2)
        * This is THE book, the resource of resources
    * [Learn Git in Y Minutes](https://learnxinyminutes.com/docs/git/)
        * This is Cliff/Spark Notes for `git`

---

## Tasks to Try

### Basics

* [ ] Clone this repository (`git clone`)
* [ ] Checkout a new branch, be short, but descriptive when naming a branch. (`git checkout`)
* [ ] Add A File, name it what you like, be creative.
    * Run `git status` note what you see...
* [ ] Stage/Commit that new File, don't forget a commite message!
    * Highly recommend reading this: [How To Write a Commit Message][git-commits]
* [ ] Edit `file1.txt` to say something other than what it does.
* [ ] Stage/Commit these changes
    * Make sure that commit message is clear
* [ ] Push your changes to the remote branch from your local
* [ ] Open a Pull Request
* [ ] Get Approval
* [ ] Merge Pull Request

### Things to try

* [ ] After you modify `file1.txt` play around with `git diff`
* [ ] After you've made a few commits see what `git log` does
* [ ] Change the content of `file2.txt` but don't commit.  How can we revert this? (`git checkout`)
* [ ] Once you've done the above steps, delete the repository locally, and try Forking the repo(on github)
    * Take note of what happens when you do that
    * How is cloning different now? 
* [ ] Repeat the above "Things to do" Tasks with your fork.
    * Take note of how this is different.

---

## Handling Conflicts


---

## Other Docs

* [How To Write a Commit Message][git-commits]
* [DevOps Git Commit Best Practices][2u-good-commits]
* [DevOps Pull Request Best Practices][2u-pr]

---

[git-commits]: https://cbea.ms/git-commit/
[2u-good-commits]: https://devops.techdocs.2u.com/best-practices/git/committing/
[2u-pr]: https://devops.techdocs.2u.com/best-practices/git/pull-request-creation/
