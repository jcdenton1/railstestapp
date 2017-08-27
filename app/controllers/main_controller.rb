class MainController < ApplicationController
  layout "main"

  def index
    @hello_world_props = { name: "Stranger" }
  end
end
