import csv
import json
import sys

def read_csv(file_path):
    with open(file_path, mode='r') as file:
        csv_reader = csv.DictReader(file)
        users = [row for row in csv_reader]
        return users

if __name__ == "__main__":
    file_path = sys.argv[1]
    users = read_csv(file_path)
    # Convert the list of users to a JSON object with a single key
    output = {"users": json.dumps(users)}
    print(json.dumps(output))