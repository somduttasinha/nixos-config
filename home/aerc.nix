{ ... }: {
  programs.aerc = {
    enable = true;
    extraConfig = {
      general.unsafe-accounts-conf = true;
      ui = {
        index-format = "%-20.20n %Z %s";
        timestamp-format = "%Y-%m-%d %H:%M";
        mouse-enabled = false;
      };
      viewer.pager = "nvim -R -";
      compose.editor = "nvim";
      compose.edit-headers = true;
      filters = {
        "text/plain" = "cat";
        "text/html" = "w3m -dump -T text/html";
      };
    };
    extraAccounts = {
      Gmail = {
        source = "imaps://somdutta.sinha@longshotsystems.co.uk:eelfvoihnqubfmfj@imap.gmail.com:993";
        outgoing = "smtps+plain://somdutta.sinha@longshotsystems.co.uk:eelfvoihnqubfmfj@smtp.gmail.com:587";
        default = "INBOX";
        copy-to = "Sent";
        from = "Som Sinha <somdutta.sinha@longshotsystems.co.uk>";
      };
    };
    extraBinds = {
      global = {
        "<C-p>" = ":prev-tab<Enter>";
        "<C-n>" = ":next-tab<Enter>";
        "q" = ":quit<Enter>";
      };
      messages = {
        "j" = ":next<Enter>";
        "k" = ":prev<Enter>";
        "g" = ":select 0<Enter>";
        "G" = ":select -1<Enter>";
        "d" = ":trash<Enter>";
        "D" = ":delete<Enter>";
        "r" = ":reply -a<Enter>";
        "R" = ":reply<Enter>";
        "c" = ":compose<Enter>";
        "/" = ":search<space>";
        "n" = ":next-result<Enter>";
        "N" = ":prev-result<Enter>";
        "<Enter>" = ":view<Enter>";
      };
      view = {
        "q" = ":close<Enter>";
        "J" = ":next<Enter>";
        "K" = ":prev<Enter>";
        "r" = ":reply -a<Enter>";
        "R" = ":reply<Enter>";
      };
    };
  };
}
