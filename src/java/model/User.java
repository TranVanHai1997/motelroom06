/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author admin
 */
public class User {
    private String userId;
    private String userName;
    private String userBirth;
    private boolean userGenter;
    private String userPhone;
    private String userAddress;
    private String userEmail;
    private String userFacebook;
    private String userImage;
    private String userCreated;
    private String userUpdated;
    private String persionId;
    private String userPassword;

    public User() {
    }

    public User(String userId, String userName, String userBirth, boolean userGenter, String userPhone, String userAddress, String userEmail, String userFacebook, String userImage, String userCreated, String userUpdated, String persionId) {
        this.userId = userId;
        this.userName = userName;
        this.userBirth = userBirth;
        this.userGenter = userGenter;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
        this.userEmail = userEmail;
        this.userFacebook = userFacebook;
        this.userImage = userImage;
        this.userCreated = userCreated;
        this.userUpdated = userUpdated;
        this.persionId = persionId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserBirth() {
        return userBirth;
    }

    public void setUserBirth(String userBirth) {
        this.userBirth = userBirth;
    }

    public boolean getUserGenter() {
        return userGenter;
    }

    public void setUserGenter(boolean userGenter) {
        this.userGenter = userGenter;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserFacebook() {
        return userFacebook;
    }

    public void setUserFacebook(String userFacebook) {
        this.userFacebook = userFacebook;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }

    public String getUserCreated() {
        return userCreated;
    }

    public void setUserCreated(String userCreated) {
        this.userCreated = userCreated;
    }

    public String getUserUpdated() {
        return userUpdated;
    }

    public void setUserUpdated(String userUpdated) {
        this.userUpdated = userUpdated;
    }

    public String getPersionId() {
        return persionId;
    }

    public void setPersionId(String persionId) {
        this.persionId = persionId;
    }
    
    
}

