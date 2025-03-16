package org.company.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;

@Entity
@Table (name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    @NotNull
    private String username;
    private String firstname;
    private String lastname;
    @OneToOne(mappedBy = "user", cascade = CascadeType.PERSIST)
    private Address address;


    public User(){}

    public User(String username, String firstname, String lastname, Address address) {
        this.username = username;
        this.firstname = firstname;
        this.lastname = lastname;
        this.address = address;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return String.format("[id:%d, %s, %s, %s, %s, %s]", id, username, firstname, lastname, address);
    }
}
