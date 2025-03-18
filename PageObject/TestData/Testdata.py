import os
from dotenv import load_dotenv

load_dotenv()

user_name = os.getenv("USER_NAME")
password = os.getenv("PASSWORD")
