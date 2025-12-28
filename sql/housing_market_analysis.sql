/*
Progetto: Analisi del mercato immobiliare italiano (2022)
Database: SQLite
Tabella principale: housing_clean

Descrizione:
Questo file contiene una serie di query SQL utilizzate per analizzare
il mercato immobiliare italiano a partire da un dataset di annunci
precedentemente pulito e preparato in Python (Pandas).

L’obiettivo di questa fase è replicare e approfondire alcune analisi
chiave tramite SQL, simulando un contesto database-oriented.
*/

-- =====================================================
-- QUERY 1
-- Prezzo medio, metratura media e prezzo medio al m²
-- per città (solo città con almeno 100 annunci)
--
-- Obiettivo:
-- Analizzare le differenze di prezzo tra le principali
-- città italiane e identificare i mercati più costosi
-- in termini di prezzo al metro quadro.
-- =====================================================
SELECT
    location,
    COUNT(*) AS num_annunci,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(AVG(mq), 2) AS avg_mq,
    ROUND(AVG(price_per_sqm), 2) AS avg_price_per_sqm
FROM housing_clean
GROUP BY location
HAVING COUNT(*) >= 100
ORDER BY avg_price_per_sqm DESC;
-- =====================================================
-- QUERY 2
-- Analisi del prezzo medio al m² per area geografica
-- (Nord, Centro, Sud)
--
-- Obiettivo:
-- Confrontare il mercato immobiliare italiano su base
-- geografica, evidenziando le differenze strutturali
-- tra le diverse aree del Paese.
-- =====================================================
SELECT
    location,
    CASE
        WHEN location IN (
            'milano','torino','bolzano','verona','bergamo','bologna',
            'venezia','padova','trento','monza','brescia','varese'
        ) THEN 'Nord'
        WHEN location IN (
            'firenze','pisa','roma','siena','perugia','ancona'
        ) THEN 'Centro'
        ELSE 'Sud'
    END AS area_geografica,
    COUNT(*) AS num_annunci,
    ROUND(AVG(price_per_sqm), 2) AS avg_price_per_sqm
FROM housing_clean
GROUP BY location
HAVING COUNT(*) >= 100
ORDER BY avg_price_per_sqm DESC;
-- =====================================================
-- QUERY 3
-- Top 10 città italiane per prezzo medio al m²
--
-- Obiettivo:
-- Identificare le città con il mercato immobiliare
-- più costoso, considerando solo località con un
-- numero significativo di annunci.
-- =====================================================
SELECT
    location,
    COUNT(*) AS num_annunci,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(AVG(mq), 2) AS avg_mq,
    ROUND(AVG(price_per_sqm), 2) AS avg_price_per_sqm
FROM housing_clean
GROUP BY location
HAVING COUNT(*) >= 100
ORDER BY avg_price_per_sqm DESC
LIMIT 10;
