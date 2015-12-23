require 'rubygems'
require 'sinatra'
require 'trello'
require 'haml'

configure do
  # constants
  TRELLO_DEVELOPER_PUBLIC_KEY=ENV['TRELLO_DEVELOPER_PUBLIC_KEY']
  TRELLO_MEMBER_TOKEN=ENV['TRELLO_MEMBER_TOKEN']
  TRELLO_BOARD_ID=ENV['TRELLO_BOARD_ID']
  TRELLO_PROJECT_ID=ENV['TRELLO_PROJECT_ID']

  Trello.configure do |config|
    config.developer_public_key = TRELLO_DEVELOPER_PUBLIC_KEY # The "key" from step 1
    config.member_token = TRELLO_MEMBER_TOKEN # The token from step 3.
  end

end

get '/' do
  pmm_board = Trello::Board.find(TRELLO_BOARD_ID)

  sprint_lists = (pmm_board.lists(:filter => :all)).select { |list| list.name.downcase.include? "sprint" }

  haml :index, :format => :html5, :locals => {:sprint_lists => sprint_lists}, :layout_engine => :erb
end

