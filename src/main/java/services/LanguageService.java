package services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import models.Language;
import repositories.LanguageRepository;

@Service
public class LanguageService {
	private LanguageRepository languageRepository;

    public LanguageService(LanguageRepository languageRepository){
        this.languageRepository = languageRepository;
    }
    
    public List<Language> allLangs() {
        return (List<Language>) languageRepository.findAll();
    }
    
    public void addLang(Language lang) {
    		languageRepository.save(lang);
    }
    
    public Optional<Language> findLangById(Long id) {
    		return languageRepository.findById(id);
    }
    
    public void updateLang(Language lang) {
    		languageRepository.save(lang);
    }
    
    public void deleteLang(Long id) {
    		languageRepository.deleteById(id);
    }
}