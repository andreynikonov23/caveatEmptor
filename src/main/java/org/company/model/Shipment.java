package org.company.model;

import jakarta.persistence.*;

@Entity
@Table(name = "shipments")
public class Shipment {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @OneToOne (fetch = FetchType.LAZY)
    @JoinTable(
            name = "item_shipment",
            joinColumns = @JoinColumn(name = "shipment_id"),
            inverseJoinColumns = @JoinColumn(name = "item_id", nullable = false, unique = true)
    )
    private Item item;

    public Shipment(){}
    public Shipment(Item item) {
        this.item = item;
    }

    @Override
    public String toString() {
        return "Shipment: " + id;
    }
}
