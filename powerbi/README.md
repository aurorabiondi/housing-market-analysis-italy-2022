## Dashboard Power BI

La fase finale del progetto consiste in una dashboard Power BI pensata per sintetizzare e comunicare i principali insight dell’analisi in modo chiaro ed essenziale.

La dashboard è volutamente minimale: si concentra su pochi indicatori significativi, evitando un eccesso di visualizzazioni per rendere l’interpretazione immediata.

### KPI

Nella parte superiore della dashboard sono presenti tre indicatori chiave che forniscono il contesto del dataset:
- **Numero di annunci**: circa 176.000 annunci immobiliari, a indicare un dataset ampio e rappresentativo.
- **Prezzo medio**: restituisce una visione generale del livello dei prezzi, fortemente influenzata dalla dimensione degli immobili e dalla presenza di annunci di fascia alta.
- **Prezzo medio (vista aggregata)**: utilizzato come riferimento di contesto e non per confronti territoriali.

Questi KPI permettono di inquadrare il mercato prima di passare all’analisi comparativa.

---

### Prezzo medio al metro quadro per città (2022)

La visualizzazione principale confronta il **prezzo medio al metro quadro** tra diverse città italiane.

Questa metrica è preferita rispetto al prezzo totale perché normalizza per la metratura e consente un confronto più corretto tra mercati immobiliari differenti.

Principali osservazioni:
- Città come **Bolzano, Firenze e Milano** mostrano valori significativamente più elevati, confermandosi come mercati ad alto costo.
- Altre città presentano prezzi medi al metro quadro sensibilmente inferiori, evidenziando forti differenze territoriali.
- Il divario tra le città più costose e quelle meno costose è ampio, segno di una marcata eterogeneità del mercato immobiliare italiano.

Per garantire l’affidabilità dei risultati, l’analisi è limitata alle città con un numero sufficiente di annunci.

---

### Scelte di design

- Layout semplice e privo di elementi superflui.
- Visualizzazione limitata alle metriche realmente informative.
- Dashboard pensata come supporto all’analisi e alla discussione, non come esercizio puramente estetico.

Questo report Power BI rappresenta la sintesi finale del progetto,dopo la pulizia dei dati e l’analisi esplorativa in Python, seguite dalle analisi in SQL.
