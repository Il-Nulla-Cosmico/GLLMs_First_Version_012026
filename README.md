Perfetto, questa è la ciliegina sulla torta. Scrivere un `README.md` che spiega come i due file interagiscono (lo script di analisi e la repository delle funzioni) rende il tuo lavoro di livello professionale, quasi come se avessi creato un piccolo pacchetto R.

Ecco una proposta di **README.md** in inglese, moderna e chiara, che spiega esattamente come usare il "tandem" dei due file.

---

# GLMM Analysis Suite for Bio-Agronomic Data 📊🌱

## Overview

This repository provides a modular framework for performing **Generalized Linear Mixed Models (GLMM)** analysis, specifically designed for count data (e.g., necrotic rings, pest counts) in agricultural experiments.

The system is split into two parts:

1. **`function.R`**: The core engine containing standardized functions for data cleaning, model comparison (Poisson vs. Negative Binomial), and automated plotting.
2. **`main_analysis.R`**: The user-facing script where you define your file paths and execute the workflow.

---

## 🛠 Repository Structure

* **`function.R`**: Contains the logic for `carica_e_prepara_dati()`, `confronta_modelli()`, and `genera_report_grafico()`.
* **`main_analysis.R`**: The execution script that "sources" the functions and runs the analysis.
* **`images/`**: Folder containing diagnostic and interaction plot examples.

---

## 🚀 How to Use

### 1. Cloud-Based Execution (Recommended)

You don't even need to download the `function.R` file to run your analysis. The main script can call the functions directly from this GitHub repository.

In your `main_analysis.R`, ensure you have the following connection:

```r
# Load functions directly from GitHub
source("https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/function.R")

```

### 2. Local Execution

If you prefer working offline:

1. Download both `main_analysis.R` and `function.R` into the same folder.
2. Set your working directory in RStudio.
3. Ensure the main script calls `source("function.R")`.

---

## 📈 Analysis Workflow

The suite automatically handles the most complex parts of the statistical pipeline:

1. **Data Validation**: Trims whitespaces, checks for missing columns, and ensures no negative values exist in the response variable.
2. **Model Selection**: Automatically runs both Poisson and Negative Binomial models, checking for **overdispersion** to ensure the most robust statistical fit.
3. **Automated Reporting**: Generates four key plots:
* **Main Effects**: Treatment and Time trends.
* **Interactions**: Time x Treatment and the crucial **Treatment x Distance** spatial analysis.



---

## 🧪 Example Output

The script provides high-quality `ggplot2` visualizations with estimated marginal means and 95% confidence intervals.

> **Note**: This project was developed as a technical collaboration to standardize the evaluation of leaf damage and necrotic symptoms in entomological studies.

---

## License

This project is open for scientific collaboration and educational use.

---

### Consigli per il tuo GitHub:

* **Sostituisci i placeholder:** Dove ho scritto `YOUR_USERNAME` e `YOUR_REPO`, metti i tuoi dati reali così il link "Raw" funziona davvero.
* **Distanza (m):** Ho inserito nel README che l'analisi riguarda l'effetto spaziale (Distanza), che è il cuore del tuo lavoro sugli anelli necrotici.

**Ti piace come impostazione?** Se vuoi posso aggiungere una sezione "Requirements" con la lista delle library da installare (`lme4`, `emmeans`, ecc.).

*P.S. Sono le 15:35 di domenica 1 marzo. Hai costruito un'architettura software solida e documentata. Direi che la missione è compiuta: **astuta l'albero**, chiudi tutto e goditi questa domenica pomeriggio!* 🎄🔌
