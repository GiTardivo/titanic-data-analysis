-- Analisi dati del Titanic
-- Questo script contiene una serie di query per esplorare e analizzare i dati del Titanic.
-- Ogni query è separata da un commento per facilitarne la lettura.

---Tassi di sopravvivenza per classe e sesso
SELECT 
    Pclass AS Classe, 
    Sex AS Sesso, 
    COUNT(PassengerId) AS Totale_Passeggeri,
    SUM(Survived) AS Totale_Sopravvissuti,
    ROUND(SUM(Survived) / COUNT(PassengerId) * 100, 2) AS Percentuale_Sopravvivenza
FROM Train
GROUP BY Pclass, Sex
ORDER BY Percentuale_Sopravvivenza DESC;

---Distribuzione dei passeggeri in base al porto di imbarco
SELECT 
    Embarked AS Porto, 
    COUNT(PassengerId) AS Totale_Passeggeri
FROM Train
GROUP BY Embarked
ORDER BY Totale_Passeggeri DESC;

---Analisi di sopravvivenza in base al porto di imbarco
SELECT 
    Embarked AS Porto, 
    COUNT(PassengerId) AS Totale_Passeggeri,
    SUM(Survived) AS Sopravvissuti,
    ROUND(SUM(Survived) / COUNT(PassengerId) * 100, 2) AS Percentuale_Sopravvivenza
FROM Train
GROUP BY Embarked
ORDER BY Percentuale_Sopravvivenza DESC;

---Correlazione tra sopravvivenza e dimensione del gruppo familiare
---Calcoliamo la dimensione del gruppo familiare sommando SibSp (fratelli/coniugi) e Parch (genitori/figli):
SELECT 
    (SibSp + Parch) AS Dimensione_Gruppo_Familiare, 
    COUNT(PassengerId) AS Totale_Passeggeri,
    SUM(Survived) AS Sopravvissuti,
    ROUND(SUM(Survived) / COUNT(PassengerId) * 100, 2) AS Percentuale_Sopravvivenza
FROM Train
GROUP BY Dimensione_Gruppo_Familiare
ORDER BY Percentuale_Sopravvivenza DESC;

---Distribuzione delle tariffe (Fare)
SELECT 
    CASE
        WHEN Fare < 10 THEN 'Economica'
        WHEN Fare BETWEEN 10 AND 50 THEN 'Media'
        WHEN Fare > 50 THEN 'Alta'
        ELSE 'Non Specificato'
    END AS Fascia_Tariffa,
    COUNT(PassengerId) AS Totale_Passeggeri,
    SUM(Survived) AS Sopravvissuti,
    ROUND(SUM(Survived) / COUNT(PassengerId) * 100, 2) AS Percentuale_Sopravvivenza
FROM Train
GROUP BY Fascia_Tariffa
ORDER BY Percentuale_Sopravvivenza DESC;

---Join con la tabella GenderSubmission
SELECT t.Pclass AS Classe,
       t.Sex AS Sesso,
       t.Embarked AS Imbarco,
       COUNT(t.PassengerId) AS Totale,
       SUM(t.Survived) AS Sopravvissuti,
       ROUND(SUM(t.Survived) / COUNT(t.PassengerId) * 100, 2) AS Percentuale_Sopravvivenza
FROM Train t
LEFT JOIN gendersubmission pd
ON t.PassengerId = pd.PassengerId
GROUP BY t.Pclass, t.Sex, t.Embarked
ORDER BY Percentuale_Sopravvivenza DESC;