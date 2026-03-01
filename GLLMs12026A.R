# SET WORKING DIRECTORY #
setwd("C:/Users/carme/OneDrive/Desktop/R + Analisi Statistica/Funzioni")

# LOAD LIBRARIES #
library(readxl)
library(dplyr)
library(lme4)
library(MASS)
library(emmeans)
library(ggplot2)
library(performance)

# SOURCE CUSTOM FUNCTIONS #
# Loading the analysis functions defined in the helper file
source("functions.R")

# --- INPUT SECTION ---
# Define the path to your experimental dataset
FILE_PATH <- "C:/Users/carme/OneDrive/Desktop/dataset.xlsx"

# --- EXECUTION WORKFLOW ---

# 1. DATA LOADING & PREPARATION
# This function handles NA checks and column formatting internally
dati <- carica_e_prepara_dati(FILE_PATH, 
                              sheet = 1, 
                              col_y = "Anelli_Necr",      # Response variable (e.g., Necrotic Rings)
                              col_tr = "Trattamento",    # Treatment factor
                              col_plot = "Parcella_ID",  # Plot/Block ID
                              col_d = "Distanza",        # Distance factor
                              col_t = "Tempo",           # Time factor
                              col_unit = "Pianta")       # Experimental unit (Plant)

# 2. MODEL SELECTION & COMPARISON
# Runs multiple models and compares results (including Overdispersion checks)
modello_migliore <- confronta_modelli(dati)

# 3. GRAPHICAL REPORT GENERATION
# Automatically creates all diagnostic and results plots in one go
genera_report_grafico(modello_migliore)

# END OF SCRIPT #
