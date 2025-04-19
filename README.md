# bouncerr
`bouncerr` is a simple pre-commit hook to ensure your code follows coding best practices.

# Setup
1. Install `pre-commit` with `brew install pre-commit`
2. [Install Docker](https://docs.docker.com/engine/install/) on your machine (if you haven't already)
3. Initialize a Git repository for your project with `git init`
4. Install the contents of `github.com/jeremyalv/bouncerr` using curl (no need to Git clone)

   ```bash
      curl -L https://github.com/jeremyalv/bouncerr/releases/download/1.0.0/bouncerr-1.0.0.zip -o bouncerr-1.0.0 && \
      unzip bouncerr-1.0.0 && \
      rm -r bouncerr-1.0.0
   ```

# Usage
1. Add the files to the staging area of your project using `git add`
2. Install pre-commits from the yaml config into your ./git/hooks using `pre-commit install`
3. Running the `https://github.com/gherynos/pre-commit-java` hook requires you to start Docker daemon on your machine (open Docker app). If you wish to disable this behavior, feel free to comment the hook in the config yaml file.
4. When you're ready to commit your changes, run `git commit` as usual and bouncerr will perform checks to ensure your project fulfills the established code quality
5. If you add any other pre-commit repo to the config, update using `pre-commit autoupdate`

# Notes
If the `pre-commit-java` hook failed even while starting docker, check if your docker has adaquate permisisons. To grant the permissions, run `sudo chown -R $(whoami) ~/.docker`
