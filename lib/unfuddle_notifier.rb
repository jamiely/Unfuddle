class UnfuddleNotifier
  require 'action_view'
  
  def initialize(app)
    @app = app
  end
  
  def call(env)
    status, headers, response = @app.call(env)
    [status, headers, ActionView::Template.new("panel", "views") + response.body]
  end
end