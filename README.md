# Ethics package
## Introduction

The Ethics R package aims to bridge the gap between ethics and the R working environment. The package provides tips and comments on data sets and models that highlight any ethical issues, biases or any tips on how to improve the models further.

## The goal
The goal is to have this package open for others to add comments and tips on ethics and how to improve the analysis on different data sets, models and more. This will make this package a library of ethics accessible easily for any R user.

## The scope
Currently, the package has two functions. The "ethics" function, which provides short comments and tips. Secondly, the "ethics_long" function that displays a detailed markdown file on the ethics of the input. Since the package is still a work in progress, for data sets, the package is applicable on the Boston data set. Furthermore, it gives comments on Linear models and Logistic models.

Currently available functions:
* ethics
* ethics_long

Further additions will be applied to make the package more generizable.

## Creating the package
The package was created with the help of the "Fusen" package. Fusen helps in creating packages easily from a simple markdown file. 

## Limitations & Future devolopements
* More data sets need to be discussed in the package.
* The package needs to be able to git into the specific model provided and give personal tips on how to improve it.
* Comments on ethics on graphs and plots for example need to be added.
* The function codes themselves needs more adjustments and testing.

## Installing the package
After pulling the files in the repo, run the Dev_history.Rmd

## References
* The Boston housing data set provided by the MASS package.
* The Fusen package: https://github.com/ThinkR-open/fusen
