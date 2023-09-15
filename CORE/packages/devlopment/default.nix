{ pkgs, ... }:{
  environment = {
    home.Packages = with pkgs; [

  #####################################
  # Clipboard Utilities:
  #####################################
  
      cliphist       # Wayland clipboard manager
      wl-clipboard   # Command-line copy/paste utilities for Wayland

  #####################################
  # Code Search and Analysis:
  #####################################

      ripgrep      # A utility that combines the usability of The Silver Searcher with the raw speed of grep
      ripgrep-all  # Ripgrep, but also search in PDFs, E-Books, Office documents, zip, tar.gz, and more

  #####################################
  # Development and Version Control:
  #####################################      

      direnv        # A shell extension that manages your environment
      graalvm17-ce  # High-Performance Polyglot VM
      mosh          # Mobile shell (ssh replacement)
      nix-direnv    # A fast, persistent use_nix implementation for direnv
      nixfmt        # An opinionated formatter for Nix
      nixos-option
      
      #vscode-with-extensions 
      #vscode-extensions.mkhl.direnv
      #vscode-extensions.brettm12345.nixfmt-vscode

  #####################################
  # Github related
  #####################################

      # git-extras # GIT utilities -- repo summary, repl, changelog population, author commit percentages and more
      # git-my     # List remote branches if they're merged and/or available locally
      # gitg       # GNOME GUI client to view git repositories
      # gitless    # Version control system built on top of Git
      # gitlint    # Linting for your git commit messages
      # glab       # GitLab CLI tool bringing GitLab to your command line
      # gh         # GitHub CLI tool
      #------------------------------------------------------------------------------------------------------------
      # gitfull provides: git-credential-libsecret, git, scalar, git-receive-pack, git-shell, git-upload-pack, gitk, 
      #                    git-cvsserver, git-http-backend git-upload-archive git-jump git-credential-netrc
      #------------------------------------------------------------------------------------------------------------
      gitFull      # Distributed version control system
      gitlab       # GitLab Community Edition
      hut          # A CLI tool for Sourcehut / sr.ht
      tig          # Text-mode interface for git
      delta        # A syntax-highlighting pager for git

  #####################################
  # Programming Languages and Tools:
  #####################################

      scala-cli
      python311Full   # idle3.11 python3.11-config idle python3-config pydoc pydoc3 pydoc3.11 idle3 2to3-3.11 2to3 python3.11 python3 python-config python
      python311Packages.pip

  #####################################
  # Scientific Computing
  #####################################
  
      julia           # High-level performance-oriented dynamical language for technical computing

  #####################################
  # Data Science Tools
  #####################################

      dvc        # Version Control System for Machine Learning Projects
      gnuplot    # A portable command-line driven graphing utility for many platforms
      iredis     # A Terminal Client for Redis with AutoCompletion and Syntax Highlighting
      litecli    # Command-line interface for SQLite
      luigi      # Python package that helps you build complex pipelines of batch jobs
      mpi        # Open source MPI-3 implementation
      quarto     # Open-source scientific and technical publishing system built on Pandoc
      root       # A data analysis framework
      visidata   # Interactive terminal multitool for tabular data

      with libsForQt5; [
  #####################################
  # Database related
  #####################################

        dbeaver         # Universal SQL Client. Supports MySQL, PostgreSQL, MariaDB, SQLite, and more
        pgmodeler       # A database modeling tool for PostgreSQL
        sqlitebrowser   # DB Browser for SQLite
      ];
    ];
  };
}
