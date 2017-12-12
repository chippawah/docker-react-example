express = require 'express'
body_parser = require 'body-parser'
helmet = require 'helmet'
morgan = require 'morgan'
# Instantiate the app
react_express_app = express()

# Protect ourselves in the laziest most generic way
react_express_app.use helmet()

# Log out all the requests to the server
react_express_app.use morgan 'dev'

# Parse the requests
react_express_app.use body_parser.json()


# Suffix URL is likely going to be the first entry for VIRTUAL_HOST
REACT_URL_SUFFIX = process.env.REACT_URL_SUFFIX ? '/'

# Set the path where the built React files are
default_react_file_path = "#{__dirname}/../../frontend/build"
REACT_APP_FILE_PATH = process.env.REACT_APP_FILE_PATH ? default_react_file_path

# Set the app to serve the static React files
react_express_app.use REACT_URL_SUFFIX, express.static REACT_APP_FILE_PATH

module.exports = react_express_app
