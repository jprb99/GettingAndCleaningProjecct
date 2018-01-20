Final Project
============================================
Getting and Cleaning Data Course on Coursera
=============================================
---
- Title: Codebook
- Author: Juan Pablo Roberto Barbosa
- Date: 20th January 2017
---

## Script instructions

The script does the following actions:

### 0. Reads the files from both sets
### 1. Renames labels before merging.
### 2. Binds columns for each group and then combines the groups together.
### 3. Merges action labels, action codes and subjects, then changes them to lowercase.
### 4. Binds measurements columns for each group and labels the variable names.
### 5. Merges resulting parts and extracts only mean and std related variables.
### 6. Generates tidy dataset.
### 7. Gives appropriate descriptive variable names to each variable.
### 8. Converts subjects and actions into factors.
### 9. Outputs tidy dataset

### The resulting dataset is tidy: one observation per row (per each combination of subject and activity) and one variable per column.
