# Perceptron Training in MATLAB

This project demonstrates the step-by-step training of a perceptron using MATLAB. A perceptron is a simple type of artificial neural network used for binary classification tasks.

## Problem Presentation

First, the problem is presented by plotting the data points from two classes, labeled as "-1" and "1." These points represent the input features and their corresponding class labels.

![Problem Presentation](https://github.com/Amirkia1998/ANN-Perceptron/blob/main/Perceptron/sc1.PNG)

## Data Preprocessing

In this step, any incorrect data points are removed from the dataset. For example, point number "6" is eliminated from the "TEAM_0" dataset. The data is then prepared for input to the perceptron by separating the input features and target class labels.

## Perceptron Creation

The MATLAB neural network toolbox is used to create a perceptron with appropriate input and output sizes. The perceptron is configured with a hardlims activation function, suitable for binary classification tasks.

## Network Training

The perceptron is trained using the training data. The training process involves iteratively adjusting the weights and bias values to minimize the classification error. The trained perceptron can then make predictions on new data.

## Decision Boundary

The decision boundary of the trained perceptron is determined by the weights and bias values. This boundary separates the two classes and can be used for classification.

## Reducing Training Data

In some cases, it may be desirable to reduce the number of training points. This step shows how to select a subset of points for training while maintaining the effectiveness of the perceptron.

## Visualizing Results

Finally, the results are visualized, including the original data points, the removed point, the chosen points for training, and the decision boundary.

![Visualizing Results](https://github.com/Amirkia1998/ANN-Perceptron/blob/main/Perceptron/sc2.PNG)

## Usage

1. Ensure you have MATLAB installed on your system.
2. Open the MATLAB script and run it step by step, following the comments and explanations.
3. Examine the visualizations and results to understand the perceptron training process.
