{config, pkgs, ...}:

{
    programs.git = {
        enable = true;
        userName = "Твоё Имя";
        userEmail = "you@example.com";
    }
}
