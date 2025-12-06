# Housing Market Analysis – Italy 2022  
Analisi del mercato immobiliare italiano utilizzando Python, Pandas, Matplotlib, SQL e Power BI.

Questo progetto nasce con l’obiettivo di esplorare e comprendere le dinamiche del mercato immobiliare italiano attraverso un dataset di annunci del 2022.  
Il lavoro è strutturato in più fasi: pulizia del dataset, analisi esplorativa (EDA), creazione del dataset pulito per SQL e visualizzazioni interattive in Power BI.

---

## 🔍 Obiettivi del progetto
- Analizzare la distribuzione dei prezzi e delle metrature nel mercato italiano.  
- Identificare relazioni tra variabili come numero di stanze, bagni, mq e anno di costruzione.  
- Individuare pattern e possibili outlier.  
- Calcolare indicatori come il **prezzo al metro quadro**, utile per confrontare città e tipologie di immobili.  
- Preparare un dataset pulito da utilizzare in database SQL e dashboard Power BI.

---

## Pulizia e preparazione dati
Nella fase di preprocessing ho eseguito:

- rimozione dei valori mancanti o inconsistenze
- conversione delle variabili numeriche e categoriche
- creazione della variabile **price_per_sqm**
- individuazione e gestione degli outlier
- normalizzazione dei formati (date, booleani, ecc.)

Il risultato è un dataset più coerente e pronto per le analisi successive.

---

## Analisi Esplorativa dei Dati (EDA)

### **Distribuzione dei prezzi**
La distribuzione è fortemente asimmetrica: la maggior parte degli immobili si colloca tra **50.000€ e 250.000€**, mentre la coda lunga rappresenta appartamenti di fascia molto alta.

### **Dimensioni degli immobili**
La maggioranza degli annunci riguarda immobili tra **50 e 150 m²**, tipici del mercato residenziale italiano.  
Superati i 300–500 m², si entra nella fascia “lusso”, caratterizzata da forte variabilità nei prezzi.

### **Località più frequenti**
Ho identificato le città con più annunci e confrontato i prezzi medi al m².

### **Insight: prezzo medio al m²**
Bolzano risulta la città con il valore al m² più elevato tra quelle con almeno 100 annunci.  
Seguono Firenze, Riccione e Milano.

Fattori probabili:
- alta domanda e scarsità di offerta  
- qualità dei servizi  
- attrattività economica o turistica  

Nella parte bassa della classifica compaiono città come Pisa, Sanremo, Rapallo, con valori più accessibili.

### **Relazione tra metratura e prezzo**
È presente una **correlazione positiva**: gli immobili più grandi tendono ad avere prezzi maggiori.  
Tuttavia la dispersione verticale indica che il prezzo dipende anche da:

- localizzazione precisa  
- stato dell’immobile  
- classe energetica  
- presenza di terrazzi, balconi o giardino  

La sola metratura, quindi, non basta per prevedere il prezzo.

### **Heatmap delle correlazioni**
La matrice di correlazione mostra:

- correlazione moderata tra prezzo e mq / bagni / stanze  
- correlazione debole per anno di costruzione e caratteristiche accessorie  
- forte influenza di fattori non presenti nel dataset (es. posizione esatta)

---

## Conclusioni dell’EDA
- Il mercato presenta forti differenze territoriali.  
- I prezzi sono molto variabili.
- Le dimensioni influenzano il prezzo, ma non lo determinano completamente.  
- Sono necessari modelli predittivi o analisi più approfondite per isolare l’effetto delle singole caratteristiche.  

Il dataset pulito è stato esportato e verrà utilizzato per:

- **creazione di un database SQL (SQLite)**  
- **dashboard interattiva in Power BI**  

---

## Prossimi sviluppi
###  **SQL (in arrivo)**
- creazione schema SQLite  
- import del dataset pulito  
- query esplorative (aggregate, join, grouping)  
- analisi avanzate (CTE, window functions)

### **Power BI (in arrivo)**
- report interattivi: confronto città, fasce di prezzo, distribuzioni  
- KPI personalizzati (prezzo/metro quadro, variazioni)  
- mappe geografiche

---

## Autrice
**Aurora Biondi** – Data Analyst in formazione, con forte interesse per analisi esplorativa, business intelligence e visual analytics.  
Questo progetto è parte del mio portfolio professionale.

Per contatti: *[aurorabiondi2003@gmail.com]*

---
