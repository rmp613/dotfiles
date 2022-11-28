{
  programs.vscode.userSettings = {
    "whichkey.sortOrder" = "alphabetically";
    "whichkey.bindings" = [
      {
        key = "/";
        name = "Toggle Line Comment";
        type = "command";
        command = "editor.action.commentLine";
      }

      {
        key = ";";
        name = "Command Palette";
        type = "command";
        command = "workbench.action.showCommands";
      }

      {
        key = "c";
        name = "Close Buffer";
        type = "command";
        command = "workbench.action.closeActiveEditor";
      }

      {
        key = "e";
        name = "Explorer";
        type = "command";
        command = "workbench.view.explorer";
      }

      {
        key = "b";
        name = "Find File";
        type = "command";
        command = "workbench.action.quickOpen";
      }

      {
        key = "h";
        name = "No Highlight";
        type = "command";
        command = "vscode-neovim.send";
        args = ":noh<CR>";
      }

      {
        key = "q";
        name = "Quit";
        type = "command";
        command = "workbench.action.quit";
      }

      {
        key = "w";
        name = "Save";
        type = "command";
        command = "workbench.action.files.save";
      }

      # Git
      {
        key = "g";
        name = "+Git";
        type = "bindings";
        bindings = [
          {
            key = "s";
            name = "Switch branch";
            type = "command";
            command = "gitlens.gitCommands.switch";
          }

          {
            key = "C";
            name = "Checkout commit (for current file)";
            type = "command";
            command = "gitlens.quickOpenFileHistory";
          }

          {
            key = "c";
            name = "Checkout commit";
            type = "command";
            command = "gitlens.showCommitSearch";
          }

          {
            key = "b";
            name = "Blame";
            type = "command";
            command = "gitlens.toggleFileBlame";
          }
        ];
      }

      # Search
      {
        key = "s";
        name = "Search";
        type = "command";
        command = "vscode-neovim.send";
        args = "/";
      }
      {
        key = "S";
        name = "Search Workspace";
        type = "command";
        command = "workbench.view.search";
      }
    ];
  };
}
