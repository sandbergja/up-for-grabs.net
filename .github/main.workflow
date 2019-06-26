workflow "Every Day" {
  resolves = ["Sweep Projects"]
  on = "schedule(0 19 * * *)"
}

action "Sweep Projects" {
  uses = "./.github/actions/cleanup-archived-projects"
  secrets = ["GITHUB_TOKEN"]
}