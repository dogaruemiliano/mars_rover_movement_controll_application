# Require all the files we need
require_relative "app/controllers/rover_controller"
require_relative "app/model/rover"
require_relative "app/repositories/rovers_repository"

require_relative "router"

# Store path to input file in a variable
path_to_input_file = File.join(__dir__, "data/input_file")

# Initialize rover repository
rover_repo = RoverRepository.new(path_to_input_file)

rover_controller = RoverController.new(rover_repo)

router = Router.new(rover_controller)

router.run

