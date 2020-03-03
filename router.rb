
class Router
  def initialize(controllers = {})
    @rover_controller = controllers[:rover]
    @running = true
  end

  def run
    @rover_controller.list_all_final_positions
  end
end
