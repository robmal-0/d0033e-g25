# d0033e-g25
This is the repository for our tasks in the D0033E course. This branch contains everything related to Task 1. The files used are described below.

## Preprocess.rmp
This is a RapidMiner process that takes an input and pre-processes it as explained in the report. The process itself returns the pre-processed data.

## Preprocess data.rmp
This is a RapidMiner process that reads the train data from the data file (train-data.rmhdf5table) and runs the pre-processing process on it and writes the pre-processed data into another data file (preprocessed-train-final.rmhdf5table).

## Preprocess test data.rmp
Same as `Preprocess data.rmp` but for test data. 

## Modelling.rmp
This uses a `loop parameters` and `optimize parameters` in order to train to find the best hyperparameters for the different models. 

## Modelling opt.rmp
This runs the different models with the values found by `Modelling.rmp`. 

## ensemble.rmp
Same as `Modelling.rmp` but for the ensemble classifiers

## ensemble opt.rmp
Same as `Modelling opt.rmp` but for the ensemble classifiers

## Matricies.rmp
This is a RapidMiner process that reads both the original and the pre-processed data from there respective files and draws the correlation matricies from them. This is to demostrate the difference when the data has been pre-processed. 

## matlabtest.m
This is the matlab script that we used to generate the visualizations seen in our report. 