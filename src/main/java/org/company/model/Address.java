package org.company.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;

@Embeddable
public class Address {
    private String street;
    @Embedded
    @AttributeOverrides({
            @AttributeOverride(name = "name", column = @Column(name = "city", nullable = false))
    })
    private City city;

    public Address(){}

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }


    @Override
    public String toString() {
        return String.format("[%s, %s]", street, city);
    }
}
