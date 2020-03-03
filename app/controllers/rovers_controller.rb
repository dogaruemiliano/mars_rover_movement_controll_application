# frozen_string_literal: true

require_relative "../views/rover_view"

class RoverController
  def initialize(repository)
    @repo = repository
    @view = RoverView.new
  end


end
