Bureaucrat.start(
  writer: Bureaucrat.MarkdownWriter,
  default_path: "docs/api-v1.md",
  paths: [],
  titles: [],
  env_var: "DOC"
 )
ExUnit.start(formatters: [ExUnit.CLIFormatter, Bureaucrat.Formatter])
Ecto.Adapters.SQL.Sandbox.mode(Collab.Repo, :manual)
