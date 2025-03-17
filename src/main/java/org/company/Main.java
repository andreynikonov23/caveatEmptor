package org.company;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
import org.company.model.*;


import java.util.List;

public class Main {
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("caveatemptor");
        EntityManager entityManager = emf.createEntityManager();

        try {
            entityManager.getTransaction().begin();
            Query jpqlQuery = entityManager.createQuery("SELECT user FROM User user");
            List<User> resultList = jpqlQuery.getResultList();

            for (User user : resultList) {
                System.out.println(user);
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            entityManager.close();
            emf.close();
        }
    }
}