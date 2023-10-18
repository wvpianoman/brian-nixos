{pkgs, ...}: {

  # Github related

  environment = {
    systemPackages = with pkgs; [ 

      # git-extras    # GIT utilities -- repo summary, repl, changelog population, author commit percentages and more
      # git-my        # List remote branches if they're merged and/or available locally
      # gitg          # GNOME GUI client to view git repositories
      # gitlab        # GitLab Community Edition
      # gitless       # Version control system built on top of Git
      # gitlint       # Linting for your git commit messages
      # glab          # GitLab CLI tool bringing GitLab to your command line

      #Git related

      #gh             # GitHub CLI tool

      # gitFull       # Distributed version control system
                      # provides: git git-jump git-upload-pack git-credential-libsecret git-receive-pack git-upload-archive 
                      #           git-cvsserver scalar git-shell gitk git-http-backend git-credential-netrc
                      
      git            # Distributed version control system
      hut            # A CLI tool for Sourcehut / sr.ht

    ];
  };
}