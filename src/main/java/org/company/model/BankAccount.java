package org.company.model;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;

@Entity
@DiscriminatorValue("ba")
public class BankAccount extends BillingDetails{
    private String account;
    private String bankname;
    private String swift;
    private String owner;

    public BankAccount() {}

    public BankAccount(String account, String bankname, String swift, String owner) {
        this.account = account;
        this.bankname = bankname;
        this.swift = swift;
        this.owner = owner;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getBankname() {
        return bankname;
    }

    public void setBankname(String bankname) {
        this.bankname = bankname;
    }

    public String getSwift() {
        return swift;
    }

    public void setSwift(String swift) {
        this.swift = swift;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    @Override
    public String toString() {
        return String.format("[%d, s, %s]", id, account, bankname);
    }
}
