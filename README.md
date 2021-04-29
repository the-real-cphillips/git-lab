# Git Lab... not GitLab ...

Alright, so you feel like messing around with some `git`?! 

You don't NEED GitHub (or GitLab) for that, you can toy around with most of `git`  
right on your command-line.

First, make sure you have `git` installed ( you likely do )

```bash
╰─ git
usage: git [--version] [--help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           <command> [<args>]
```

Next up I'm gonna have some tasks that you'll want to step through and see if you can complete.  
Before we go on I'd like to point you to some reading materials or references; use them how you like.

* [Git SCM](https://git-scm.com/book/en/v2)
  * This is THE book, the resource of resources
* [Learn Git in Y Minutes](https://learnxinyminutes.com/docs/git/)
  * This is Cliff/Spark Notes for `git`

----

## Things to do:

- [] Clone this repository (`git clone`)
- [] Checkout a new branch, be short, but descriptive when naming a branch. (`git checkout`)
- [] Add A File, name it what you like, be creative.
  - Run `git status` note what you see...
- [] Stage/Commit that new File, don't forget a commite message!
  - Highly recommend reading this: [How To Write a Commit Message](https://chris.beams.io/posts/git-commit/)
- [] Edit `file1.txt` to say something other than what it does.
- [] Stage/Commit these changes
  - Make sure that commit message is clear
- [] Push your changes to the remote branch from your local
- [] Open a Pull Request
- [] Get Approval
- [] Merge Pull Request

## Things to try:

- [] After you modify `file1.txt` play around with `git diff`
- [] After you've made a few commits see what `git log` does
- [] Change the content of `file2.txt` but don't commit.  How can we revert this? (`git checkout`)
