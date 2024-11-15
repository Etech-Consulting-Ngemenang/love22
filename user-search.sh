
Pull Requests:
A PR represents a proposal for changes to be integrated into the main codebase. 
In GitHub, developers make changes to the code on their local machine, push it 
to a branch in the repository, and then submit a pull request.


What is a branch in git?:
In Git, a "branch" is a separate line of development that allows you to work on
a specific set of changes to your project without affecting the main or "master" 
branch. It is essentially a pointer to a specific commit in the repository's   
history, and it allows you to isolate changes and collaborate with others on 
specific features or fixes.

what is the command to create a new branch in git from the command line?:
  $git branch --> to view branches
  $git branch $branchname --> create a new branch with the specified name, 
  but it will not switch to that branch.
  To switch to the new branch, you can use
  $git checkout $branchname or git switch $branchname
  Alternatively, you can combine the branch creation and checkout into a 
  single command using the "-b" flag
  $git checkout -b $branchname --> creates a branch and move you to it
  $git branch --> use to show the present branches 
- git branch -d $branchname --> use to delete a branch

Renaming a branch it git:
$git branch -m main prod --> This command renames the branch named main to prod
$git fetch origin --> This command fetches any updates that have been pushed to the origin remote repository
$git branch -u origin/prod prod --> This command sets the upstream branch for the prod branch to be origin/prod
$git remote set-head origin -a --> This command sets the default branch on the origin remote, where your local repo 
will point to when you clone or pull from the remote repo.




How to make changes to codes in github:
How do you contribute to a project in git?

 1. Clone the repository on your local machine --> git clone <repo url> #if you are working on that repo for the first time.
    But if you had worked on that repository before just do a git pull and continue
 2. create a new branch and switch to it --> git checkout -b $branchNmae
 3. make changes to the project (application code)
 4. commit the changes and write descriptive commit messages
 5. push the changes to the remote repository -->   git push #or git push --set-upstream origin $branchName
 6. create pull request and assign it to a senior engineer and wait for review and approval
 7. Merge into the main branch once approved.







