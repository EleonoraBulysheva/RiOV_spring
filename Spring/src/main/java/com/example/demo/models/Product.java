package com.example.demo.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "products")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "title")
    private String title;
    @Column(name = "description", columnDefinition = "text")
    private String description;
//    @Column(name = "price")
//    private int price;
    @Column(name = "city")
    private String city;
    @Column(name = "author")
    private String author;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY,
            mappedBy = "product")
    public List<Image> images = new ArrayList<>();
    public Long previewImageId;
    private LocalDateTime dateOfCreated;

    @PrePersist
    private void init() {
        dateOfCreated = LocalDateTime.now();
    }


    public void addImageToProduct(Image image) {
        image.setProduct(this);
        images.add(image);
    }

    public void deleteAllImageToProduct() {
        images.clear();
    }

    public void deleteImageToProduct(Image image) {
        image.setProduct(this);
        images.remove(image);
    }

    public void AddAllImageToProduct(Image image, Image image2) {
        image.setProduct(this);
        image2.setProduct(this);

        images.clear();
        images.add(image);
        images.add(image);
    }

}
