package models;

public class UserModel {
    private String firstName;
    private String lastName;
    private String userName;
    private String password;

    /*
            * @param firstName the users firstname
     * @param lastName the users lastname
     * @param userName the users email .e.g., example@example.com
     * @param password the users password: we usually encrypt it in the database but thats for you to figure out :)
            */
    public UserModel(String firstName, String lastName, String userName, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.password = password;
    }

    /*
            * GETTERS AND SETTERS!
            */

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }



    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}