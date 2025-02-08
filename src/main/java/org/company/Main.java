package org.company;

import org.company.model.Image;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("test");
        EntityManager entityManager = emf.createEntityManager();

        try {
            entityManager.getTransaction().begin();
            Query jpqlQuery = entityManager.createQuery("SELECT img from Image img");
            List<Image> resultList = jpqlQuery.getResultList();

            for (Image img : resultList) {
                System.out.println(img.getId() + "--" + img.getFilename());
            }

            entityManager.getTransaction().commit();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            entityManager.close();
            emf.close();
        }
    }
}