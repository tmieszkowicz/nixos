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

      # --- COLORS ---------
      "color \"blame\"" = {
        highlightRecent = "black bold,1 year ago,white,1 month ago,default,7 days ago,blue";
      };
      "color \"branch\"" = {
        current = "magenta";
        local = "default";
        remote = "yellow";
        upstream = "green";
        plain = "blue";
      };
      "color \"diff\"" = {
        meta = "black bold";
        frag = "magenta";
        context = "white";
        whitespace = "yellow reverse";
        old = "red";
      };
      "color \"decorate\"" = {
        HEAD = "red";
        branch = "blue";
        tag = "yellow";
        remoteBranch = "magenta";
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
