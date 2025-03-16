package org.company.model;

import jakarta.persistence.*;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name = "addresses")
public class Address {
    @Id
    @GeneratedValue(generator = "addressKeyGenerator")
    @GenericGenerator(
            name = "addressKeyGenerator",
            strategy = "foreign",
            parameters = @Parameter(name = "property", value = "user")
    )
    protected long id;
    @OneToOne
    @PrimaryKeyJoinColumn
    private User user;
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
