from git import Repo
import os

cwd = os.getcwd()
repo = Repo(cwd)


def git_activities(repo):
    if repo.is_dirty():
        repo.git.add(A=True)
        repo.git.commit('-m', 'Some commit')
        repo.git.push('origin')


git_activities(repo)
