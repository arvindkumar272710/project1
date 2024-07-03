import os

environment = os.getenv('ENVIRONMENT', 'blue')  # Default to 'blue' if ENVIRONMENT is not set
if environment == 'blue':
    # Load blue configuration
    ...
elif environment == 'green':
    # Load green configuration
    ...

