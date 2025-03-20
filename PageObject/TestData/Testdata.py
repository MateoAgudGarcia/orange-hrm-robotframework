import os
from faker import Faker
from dotenv import load_dotenv

load_dotenv()
faker = Faker()

user_name = os.getenv("USER_NAME")
password = os.getenv("PASSWORD")

# Variables
first_name = faker.first_name()
middle_name = faker.first_name()
last_name = faker.last_name()
employee_id = faker.random_number(digits=4)
