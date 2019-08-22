package repositories;

import org.springframework.data.repository.CrudRepository;

import models.Language;

public interface LanguageRepository extends CrudRepository<Language, Long> {

}