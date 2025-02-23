package org.company.model;

import jakarta.persistence.*;

@Entity
@DiscriminatorValue("cc")
@SecondaryTable(name = "credit_cards")
public class CreditCard extends BillingDetails {
    @Column(table = "credit_cards")
    private String number;
    @Column(table = "credit_cards", name = "exp_month")
    private String expMonth;
    @Column(table = "credit_cards", name = "exp_year")
    private String expYear;

    public CreditCard (){}

    public CreditCard(String number, String expMonth, String expYear) {
        this.number = number;
        this.expMonth = expMonth;
        this.expYear = expYear;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getExpMonth() {
        return expMonth;
    }

    public void setExpMonth(String expMonth) {
        this.expMonth = expMonth;
    }

    public String getExpYear() {
        return expYear;
    }

    public void setExpYear(String expYear) {
        this.expYear = expYear;
    }

    @Override
    public String toString() {
        return String.format("[%d, %s]", id, number);
    }
}
