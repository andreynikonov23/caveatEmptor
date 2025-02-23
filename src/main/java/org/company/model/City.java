package org.company.model;

import jakarta.persistence.Embeddable;

@Embeddable
public class City {
    private int zipcode;
    private String name;
    private transient String country;

    @Override
    public String toString() {
        return String.format("[%d, %s, %s]", zipcode, name, country);
    }
}
