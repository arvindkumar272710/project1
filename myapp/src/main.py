from dotenv import load_dotenv
import os

# Load environment variables from the specified file
def load_environment(env_file):
    load_dotenv(env_file)

# Determine which environment to load
environment = os.getenv('ENVIRONMENT', 'green')
env_file = f'config/{environment}.env'
load_environment(env_file)

# Access the environment variables
db_url = os.getenv('DB_URL')
api_endpoint = os.getenv('API_ENDPOINT')

# Your application logic here
print(f"DB URL: {db_url}")
print(f"API Endpoint: {api_endpoint}")

