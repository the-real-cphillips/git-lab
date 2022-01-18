# Setting up Git for Github

This is a quick overview. More information can be found here: [Connecting to GitHub with SSH][github-ssh]

### `git` config

At a minimum please make sure you setup:

* `git config --global user.name "Your Name"`
* `git config --global user.email "your.email@domain.com"`

----

### If you have SSH Keys already

This assumes you already have an SSH Key and it's added to the SSH Agent.

* Copy the Contents of your SSH Key (`.pub`) 
  * NEVER EVER COPY OR TRANSMIT YOUR PRIVATE KEY (that's the one without the `.pub` extension)
* Go to https://github.com/settings/profile
* Login
* Navigate to [SSH and GPG Keys][github-key-config]
* Click `New SSH Key`
* Enter a Name for it so you can Identify it later in `Title`
* Paste the contents of your `.pub`
* Click `Add SSH Key`

Then follow: [Testing your SSH Connection][github-test-connection]

More Info: [Adding a new SSH key to your GitHub account][github-add-keys]

### If you don't have SSH Keys Already

Well if you don't already have an SSH Key... you best follow the Github Docs.
Starting with: [Generating a new SSH key and adding it to the ssh-agent][github-new-key]



----

[github-ssh]: https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh
[github-new-key]: https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
[github-add-key]: https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account
[github-key-config]: https://github.com/settings/keys
[github-test-connection]: https://docs.github.com/en/github/authenticating-to-github/testing-your-ssh-connection
