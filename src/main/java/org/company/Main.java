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
            Query jpqlQuery = entityManager.createQuery("SELECT ad FROM Address ad");
            List<Address> resultList = jpqlQuery.getResultList();

            for (Address address : resultList) {
                System.out.println(address);
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            entityManager.close();
            emf.close();
        }
    }
}