{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Tomasz Mieszkowicz";
        email = "tommieszkowicz@gmail.com";
      };

      core = {
        compression = 9;
        whitespace = "error";
        preloadindex = true;
      };

      init = {
        defaultBranch = "main";
      };

      log = {
        abbrevCommit = true;
        graphColors = "blue,yellow,cyan,magenta,green,red";
      };

      status = {
        short = true;
        branch = true;
        showStash = true;
        showUntrackedFiles = "all";
      };

      diff = {
        context = 3;
        renames = "copies";
        interHunkContext = 10;
      };

      push = {
        autoSetupRemote = true;
        default = "current";
        followTags = true;
      };

      pull = {
        default = "current";
        rebase = true;
      };

      rebase = {
        autoStash = true;
        missingCommitCheck = "warn";
      };
    };
  };

  programs.diff-so-fancy = {
    enable = true;
    enableGitIntegration = true;
    settings = {
      markEmptyLines = true;
    };
  };
}
