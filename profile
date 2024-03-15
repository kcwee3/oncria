#include <iostream>
#include <string>

using namespace std;

// Define a structure to represent a user profile
struct UserProfile {
    string username;
    string email;
    int age;
};

// Function to create a new user profile
UserProfile createProfile() {
    UserProfile profile;
    cout << "Enter username: ";
    getline(cin >> ws, profile.username); // Read username with spaces
    cout << "Enter email: ";
    cin >> profile.email;
    cout << "Enter age: ";
    cin >> profile.age;
    return profile;
}

// Function to update an existing user profile
void updateProfile(UserProfile& profile) {
    cout << "Updating profile...\n";
    cout << "Enter new email: ";
    cin >> profile.email;
    cout << "Enter new age: ";
    cin >> profile.age;
    cout << "Profile updated successfully!\n";
}

// Function to display a user profile
void displayProfile(const UserProfile& profile) {
    cout << "Username: " << profile.username << endl;
    cout << "Email: " << profile.email << endl;
    cout << "Age: " << profile.age << endl;
}

int main() {
    UserProfile user;

    // Create or load user profile
    user = createProfile();

    // Display user profile
    cout << "\nUser Profile:\n";
    displayProfile(user);

    // Update user profile
    updateProfile(user);

    // Display updated profile
    cout << "\nUpdated Profile:\n";
    displayProfile(user);

    return 0;
}