Titanic Data Analysis Project

Introduzione

Questo progetto ha l'obiettivo di analizzare il famoso dataset del Titanic, utilizzando diverse tecniche di pulizia, trasformazione, e visualizzazione dei dati. Abbiamo esplorato le caratteristiche principali dei passeggeri, identificando i fattori che influenzano la probabilità di sopravvivenza.

Le analisi sono state condotte attraverso Python, SQL e Power BI, creando un flusso di lavoro completo: dalla preparazione dei dati, all’analisi esplorativa, fino alla creazione di dashboard interattive

Obiettivi del Progetto

Pulizia e preparazione dei dati del Titanic.
Analisi dei dati con tecniche SQL e Python.
Creazione di metriche e visualizzazioni interattive tramite Power BI.

Struttura del Progetto
La cartella del progetto è organizzata come segue:

titanic-analysis/
├── README.md                 # Descrizione del progetto
├── data/                     # Dataset originale e pulito
│   ├── train.csv             # Dataset di training originale
│   ├── test.csv              # Dataset di test originale
│   ├── clean_train.csv       # Dataset di training pulito
│   ├── clean_test.csv        # Dataset di test pulito
├── scripts/                  # Script per la gestione dei dati
│   ├── 01_data_cleaning.py      # Script Python per la pulizia dei dati
│   ├── 02_create_tables.sql  # Script SQL per la creazione delle tabelle
│   ├── 03_data_analysis.sql  # Query SQL per analisi
├── visuals/                  # Risultati visuali
    ├── dashboard.pbix        # File Power BI contenente le dashboard


Dettagli delle Fasi del Progetto

1. Pulizia dei Dati

Ho iniziato con i dataset forniti (train.csv e test.csv) e abbiamo eseguito una serie di operazioni di pulizia:

Rimozione di spazi extra e valori mancanti.
Normalizzazione delle variabili categoriali.
Calcolo di nuove colonne utili per l’analisi con DAX in PowerBi:
        Totale_Famiglia: somma di SibSp (fratelli/coniugi a bordo) e Parch (genitori/figli a bordo).
        Fascia_Età: categorizzazione delle età in Bambini, Adulti, e Anziani.
        Fascia_Tariffa: suddivisione delle tariffe in fasce (alta, media, economica).
        Percentuale Sopravvivenza: percentuale con cui si sono salvati i passaggeri

I file puliti sono stati salvati come clean_train.csv e clean_test.csv nella cartella data/.

2. Analisi dei Dati con SQL

Ho importato i dataset puliti in un database SQL e creato tabelle con lo script 01_create_tables.sql. Le query di analisi sono contenute in 03_data_analysis.sql, dove ho  esplorato per esempio:

Il numero totale di passeggeri per sesso, classe e porto di imbarco.
Percentuali di sopravvivenza suddivise per variabili come sesso, fascia tariffaria, ed età.
Relazioni tra le dimensioni delle famiglie e la probabilità di sopravvivenza.

3. Dashboard in Power BI

Ho sviluppato due dashboard interattive in Power BI per presentare i risultati in modo visivo e intuitivo.
Dashboard Principale

Scopo: Rispondere alla domanda "Chi sono i sopravvissuti del Titanic?"
Filtri principali: Sesso, cabina, fascia d’età.

Metriche principali:
    Totale passeggeri e sopravvissuti.
    Percentuale di sopravvivenza per classe tariffaria.
    Passeggeri totali per porto di imbarco.
    
Grafici interattivi:
    Passeggeri totali per fascia tariffaria e fascia d’età.
    Passeggeri per porto di imbarco.

Dashboard Famiglie

Scopo: Analizzare l'impatto delle famiglie sulla sopravvivenza.
Filtri principali: Fascia tariffaria, sesso.

Metriche principali:
    Numero medio di familiari a bordo.
    Percentuale di sopravvivenza per dimensione delle famiglie.
    Relazione tra il numero di familiari e la sopravvivenza.
    
Grafici:
    Media di familiari per sesso e Parch.
    Percentuale di sopravvivenza per totale familiari.

I file .pbix sono inclusi nella cartella visuals/.


Risultati Principali

Sesso: Le donne hanno avuto una probabilità di sopravvivenza significativamente maggiore rispetto agli uomini.
Classe: I passeggeri in prima classe hanno avuto più probabilità di sopravvivere rispetto a quelli in seconda e terza classe.
Famiglie: I passeggeri con 2-3 familiari hanno avuto un tasso di sopravvivenza maggiore rispetto a quelli senza familiari o con famiglie numerose.
Fascia d’età: Bambini e adulti avevano maggiori probabilità di sopravvivenza rispetto agli anziani.
Porto di Imbarco: I passeggeri che sono saliti a bordo a Cherbourg (C) avevano una probabilità di sopravvivenza leggermente più alta rispetto agli altri porti.

Tecnologie Utilizzate

Python: Per la pulizia e trasformazione iniziale dei dati.
SQL: Per analisi tabellari e calcoli più complessi.
Power BI: Per creare visualizzazioni interattive e dashboard.
Librerie Python:
        pandas per la manipolazione dei dati.
        os per la gestione dei file.
    


**Nota:** Questi file provengono dal dataset [Titanic - Machine Learning from Disaster](https://www.kaggle.com/c/titanic/overview) su Kaggle.

