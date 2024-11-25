import pandas as pd
import os

# Percorso della cartella 'data/'
data_folder = os.path.join(os.getcwd(), 'data')

# Leggi i file direttamente dalla cartella 'data/'
train_file = os.path.join(data_folder, 'train.csv')
test_file = os.path.join(data_folder, 'test.csv')

# Carica i dataset
train_data = pd.read_csv(train_file)
test_data = pd.read_csv(test_file)

# Rimuove spazi extra
train_data = train_data.applymap(lambda x: x.strip() if isinstance(x, str) else x)
test_data = test_data.applymap(lambda x: x.strip() if isinstance(x, str) else x)

# Salva i file puliti
train_data.to_csv(os.path.join(data_folder, 'clean_train.csv'), index=False)
test_data.to_csv(os.path.join(data_folder, 'clean_test.csv'), index=False)

print("I file sono stati puliti e salvati nella cartella 'data/'")
