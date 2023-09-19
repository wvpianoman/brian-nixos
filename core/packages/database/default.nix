{ pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [
      with libsForQt5; [
  #####################################
  # Database related
  #####################################

        dbeaver         # Universal SQL Client. Supports MySQL, PostgreSQL, MariaDB, SQLite, and more
        pgmodeler       # A database modeling tool for PostgreSQL
        sqlitebrowser   # DB Browser for SQLite
      ];
  };
}
