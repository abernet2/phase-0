##How does tracking and adding changes make developers' lives easier?

If someone else makes a change, you can easily compare and figure out what changes they made. Also if an unexpected bug arises, you can revert to former working code while you fix the issue and you can also isolate areas of the code that have changed. I think there i also the potential for, if you want to try implementing something using radically different methods, you can easily try both and compare without going through a lot of undos, editing and changing file names.

##What is a commit?

A commit is a save point in a branch. Git stages changes you have made temporarily on your computer, a commit saves them to the actual branch. We comment commits so you understand what each save point is.

##What are the best practices for commit messages?

Use the imperative voice, restrict to 72 columns, put spaces between all paragraphs and treat the title like an email header. The header line should provide a short summary and title, the rest elaborates upon the header line.

##What does the HEAD^ argument mean?

Previous commit.

##What are the 3 stages of a git change and how do you move a file from one stage to the other?

Committed, modified and staged. Modified means that changes have been made since you checked something out. Staged means that changes have been made and are ready for commit, but have not yet been updated to the Github branch. Committed means that the file or directory is synced with the github branch, so there are no differences at all.

##Write a handy cheatsheet of the commands you need to commit your changes:

clone: copy a repo to a local location
fork: copy a repository into your github, this will include all branches and will work independently of the original repo.
checkout: request a copy of a specific branch, or create a new branch if the name you provide doesnt exist.
add: There is a staging area for changes, you have to ADD your changes to that area if they are new files/directories.
commit: commit the changes to your branch. Include a message using the correct style.

##What is a pull request and how do you create and merge one?

A pull request is a request to update your code with other changes that may have been made. The pull is the first half of that process: getting the new changes. In order to update your code, you need to also merge that pull request with your code.

##Why are pull requests preferred when working with teams?

Pull requests are preferred so that multiple people see changes that have been made. It was mentioned in a video that it is a good practice to have someone else merge your code into the master for you. This helps in the process of reviewing code.