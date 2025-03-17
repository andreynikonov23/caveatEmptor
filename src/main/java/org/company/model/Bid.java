package org.company.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;

import java.util.Date;

@Entity
@Table (name = "bids")
public class Bid {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private double amount;
    @Column (name = "create_on")
    @Temporal(TemporalType.DATE)
    private Date createOn;
    @Transient
    private User bidder;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "item")
    @NotNull
    private Item item;

    public Bid(long id, double amount, Date createOn, User bidder, Item item) {
        this.id = id;
        this.amount = amount;
        this.createOn = createOn;
        this.bidder = bidder;
        this.item = item;
    }

    public Bid() {}

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Date getCreateOn() {
        return createOn;
    }

    public void setCreateOn(Date createOn) {
        this.createOn = createOn;
    }

    public User getBidder() {
        return bidder;
    }

    public void setBidder(User bidder) {
        this.bidder = bidder;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    @Override
    public String toString() {
        return String.format("Bid{%d, %s, %f}", id, createOn, amount);
    }
}
