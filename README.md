titanic-analysis/
├── README.md               # Documentazione del progetto
├── data/                   # Dataset originali
│   ├── train.csv
│   ├── test.csv
│   ├── gendersubmission.csv
## Struttura della cartella `data/`

Questa cartella contiene i dataset originali utilizzati nel progetto.

- `train.csv`: Dataset di addestramento, include le informazioni sui passeggeri e il loro stato di sopravvivenza.
- `test.csv`: Dataset di test, include informazioni sui passeggeri senza il loro stato di sopravvivenza.
- `gendersubmission.csv`: Esempio di submission basato sul genere dei passeggeri.

**Nota:** Questi file provengono dal dataset [Titanic - Machine Learning from Disaster](https://www.kaggle.com/c/titanic/overview) su Kaggle.

├── scripts/                # Script per il database e la pulizia dei dati
│   ├── 01_create_tables.sql
│   ├── 02_data_analysis.sql
│   ├── data_cleaning.py

Descrizione degli Script

01_create_tables.sql

Questo script SQL è utilizzato per creare le tabelle necessarie nel database MySQL per l'analisi dei dati del Titanic. Contiene le istruzioni per:
Creare le tabelle Train e Test con la struttura appropriata.
Definire i tipi di dati e le chiavi primarie per ogni tabella.

02_data_cleaning.py

Questo script Python esegue la pulizia preliminare dei dataset originali. Le principali operazioni includono:
Rimozione di spazi bianchi aggiuntivi nei campi.
Salvataggio dei file puliti nella cartella data/ come clean_train.csv e clean_test.csv

Come usare gli script

Pulizia dei dati:
Esegui lo script Python per pulire i dataset:
python scripts/data_cleaning.py

Creazione delle tabelle:
Importa lo script SQL nel tuo database MySQL per creare le tabelle:
mysql -u <username> -p titanicdb < scripts/01_create_tables.sql

Script di analisi (scripts/03_data_analysis.sql)

Questo file contiene una serie di query SQL per analizzare il dataset Titanic. 

Esecuzione:

Importa i dati nel database seguendo le istruzioni di 01_create_tables.sql.
Esegui le query contenute in 02_data_analysis.sql utilizzando MySQL Workbench o un'interfaccia simile.

└── visuals/                # Visualizzazioni e grafici
    ├── survival_by_class.png
    ├── survival_by_sex.png

