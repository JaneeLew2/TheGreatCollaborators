def login(username, password):
    # Sample users for testing
    users = {
        "admin": "admin123",
        "analyst": "data123",
        "user": "password123"
    }

    if username in users and users[username] == password:
        return "Login successful!"
    else:
        return "Invalid username or password."


def main():
    print("Data Governance Readiness Analyzer")
    print("----------------------------------")

    username = input("Username: ")
    password = input("Password: ")

    result = login(username, password)
    print(result)


if __name__ == "__main__":
    main()
