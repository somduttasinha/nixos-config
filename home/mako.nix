{ ... }: {
  services.mako = {
    enable = true;
    settings = {
      background-color = "#1e1e2e";
      text-color = "#cdd6f4";
      border-color = "#33ccff";
      border-radius = 10;
      border-size = 2;
      font = "monospace 13";
      width = 400;
      padding = "15";
      margin = "10";
      default-timeout = 5000;
    };
  };
}
