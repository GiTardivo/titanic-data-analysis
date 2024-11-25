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

**Nota:** Questi file provengono dalla competizione [Titanic - Machine Learning from Disaster](https://www.kaggle.com/c/titanic/overview) su Kaggle.

├── scripts/                # Script per il database e la pulizia dei dati
│   ├── 01_create_tables.sql
│   ├── 02_data_analysis.sql
│   ├── data_cleaning.py
└── visuals/                # Visualizzazioni e grafici
    ├── survival_by_class.png
    ├── survival_by_sex.png

