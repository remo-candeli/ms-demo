package org.remo.organization.repositories;

import java.util.Optional;

import org.remo.organization.models.Organization;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface OrganizationRepository extends CrudRepository<Organization,String>  {
    Optional<Organization> findById(String organizationId);
}