Projects and Sprints Report
====

This repo is a Ruby/Sinatra app that interfaces with Trello in a very
specific way. If you have lists called "Sprint" and use a particular label to
mark "projects", this app can produce a simple table report of which projects
were completed in which sprint.

Env Vars
====

Successful use of this app requires that you set certain environment variables:

* `TRELLO_DEVELOPER_PUBLIC_KEY`: your Trello Developer API key
* `TRELLO_MEMBER_TOKEN`: your Trello member token
* `TRELLO_BOARD_ID`: the ID of the Trello board you want to search
* `TRELLO_PROJECT_ID`: the ID of the label on the board

Misc
====

This app uses the [Trello gem](https://github.com/jeremytregunna/ruby-trello)
which has instructions for how to obtain your keys and tokens.

It was also inspired by [Sinatra
Bootstrap](https://github.com/bootstrap-ruby/sinatra-bootstrap), as you can see
from the commit history.
