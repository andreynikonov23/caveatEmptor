package org.company.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import org.company.converters.MonetaryAmountConverter;

import java.time.LocalTime;
import java.util.*;

@Entity
@Table (name = "items")
public class Item {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private long id;
    @NotNull
    private String name;
    @NotNull
    @Column (name = "initial_price")
    private double initialPrice;
    @NotNull
    @Column(name = "auction_end")
    private Date auctionEnd;

    @OneToMany(mappedBy = "item", fetch = FetchType.LAZY)
    private Set<Bid> bids = new HashSet<>();

    @OneToOne(mappedBy = "item", fetch = FetchType.LAZY)
    private Shipment shipment;
    @Transient
    private User seller;
    @Column(name = "buy_now_price")
    @Convert (converter = MonetaryAmountConverter.class, disableConversion = false)
    private MonetaryAmount buyNowPrice;

    public Item(){}

    public Item(String name, double initialPrice, Date auctionEnd, User seller, MonetaryAmount buyNowPrice, Set<Bid> bids, Shipment shipment) {
        this.name = name;
        this.initialPrice = initialPrice;
        this.auctionEnd = auctionEnd;

        this.seller = seller;
        this.buyNowPrice = buyNowPrice;
        this.bids = bids;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getInitialPrice() {
        return initialPrice;
    }

    public void setInitialPrice(double initialPrice) {
        this.initialPrice = initialPrice;
    }

    public Date getAuctionEnd() {
        return auctionEnd;
    }

    public void setAuctionEnd(Date auctionEnd) {
        this.auctionEnd = auctionEnd;
    }

//    public Set<Image> getImages() {
//        return images;
//    }
//
//    public void setImages(Set<Image> images) {
//        this.images = images;
//    }

    public User getSeller() {
        return seller;
    }

    public void setSeller(User seller) {
        this.seller = seller;
    }

    public MonetaryAmount getBuyNowPrice() {
        return buyNowPrice;
    }

    public void setBuyNowPrice(MonetaryAmount buyNowPrice) {
        this.buyNowPrice = buyNowPrice;
    }

    @Override
    public String toString() {
        return String.format("[id: %d, %s, %s, %s. %s]", id, name, buyNowPrice, bids, shipment);
    }
}
