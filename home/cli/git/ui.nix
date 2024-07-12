{ pkgs, ... }:

{
  d.shell.aliases = {
    gi = "lazygit";
    gui = "gitui";
  };

  # https://github.com/jesseduffield/lazygit
  programs.lazygit = {
    enable = true;

    settings = {
      git.paging.colorArg = "always";
    };
  };
  # not a thing
  # programs.tig = {
  #   enable = true;
  # };
  programs.gitui = {
    enable = true;
# waiting on https://github.com/extrawurst/gitui/issues/2286
#     theme = ''
# (
#   selected_tab: "Reset",
#   command_fg: "#CDD6F4",
# 	selection_bg: "#585B70",
# 	cmdbar_bg: "#1E1E2E",
#   cmdbar_extra_lines_bg: "#1e2030",
#   disabled_fg: "#8087a2",
#   diff_line_add: "#a6da95",
#   diff_line_delete: "#ed8796",
#   diff_file_added: "#a6da95",
#   diff_file_removed: "#ee99a0",
#   diff_file_moved: "#c6a0f6",
#   diff_file_modified: "#f5a97f",
#   commit_hash: "#b7bdf8",
#   commit_time: "#b8c0e0",
#   commit_author: "#7dc4e4",
#   danger_fg: "#ed8796",
#   push_gauge_bg: "#8aadf4",
#   push_gauge_fg: "#24273a",
#   tag_fg: "#f4dbd6",
#   branch_fg: "#8bd5ca",
# )
#     '';
  };
}
