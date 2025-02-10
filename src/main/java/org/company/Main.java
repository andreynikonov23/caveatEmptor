package org.company;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
import org.company.model.Image;


import java.util.List;

public class Main {
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("caveatemptor");
        EntityManager entityManager = emf.createEntityManager();

        try {
            entityManager.getTransaction().begin();
            Query jpqlQuery = entityManager.createQuery("SELECT imges from org.company.model.Image imges");
            List<Image> resultList = jpqlQuery.getResultList();

            for (Image img : resultList) {
                System.out.println(img.getId() + "--" + img.getFilename());
            }
            Image newImage = new Image("test", "C://test");
            entityManager.persist(newImage);

            entityManager.getTransaction().commit();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            entityManager.close();
            emf.close();
        }
    }
}