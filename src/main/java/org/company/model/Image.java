package org.company.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Image {
    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    private long id;
    private String title;
    private String filename;

    public Image(){}

    public Image(long id, String title, String filename) {
        this.id = id;
        this.title = title;
        this.filename = filename;
    }

    public long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }
}
