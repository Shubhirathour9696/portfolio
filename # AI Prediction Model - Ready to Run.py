# AI Prediction Model - Ready to Run
# Make sure you have installed pandas, numpy, scikit-learn, matplotlib, seaborn

import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder
from sklearn.linear_model import LinearRegression, LogisticRegression
from sklearn.ensemble import RandomForestRegressor, RandomForestClassifier
from sklearn.metrics import mean_squared_error, r2_score, accuracy_score, classification_report
import matplotlib.pyplot as plt
import seaborn as sns

# Step 1: Load your dataset
file_path = input("Enter CSV file path (Bigdatabase, data.csv): ")
data = pd.read_csv("C:\Users\DELL\OneDrive\Desktop\project\assets folder\Big_Database.csv.csv")
print("\nFirst 5 rows of your dataset:\n", data.head())

# Step 2: Preprocess data
print("\nChecking missing values:\n", data.isnull().sum())
data = data.fillna(data.mean(numeric_only=True))  # Fill numeric missing values
data = data.fillna('Unknown')  # Fill categorical missing values

# Step 3: Identify target
target_column = input("\nEnter the target column to predict: ")

# Encode categorical features if any
for col in data.select_dtypes(include=['object']).columns:
    if col != target_column:
        data[col] = LabelEncoder().fit_transform(data[col])

# Encode target if classification
if data[target_column].dtype == 'object':
    data[target_column] = LabelEncoder().fit_transform(data[target_column])
    is_classification = True
else:
    is_classification = False

X = data.drop(target_column, axis=1)
y = data[target_column]

# Step 4: Split data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Step 5: Train model
if is_classification:
    model = RandomForestClassifier(random_state=42)
else:
    model = RandomForestRegressor(random_state=42)

model.fit(X_train, y_train)

# Step 6: Make predictions
y_pred = model.predict(X_test)

# Step 7: Evaluate model
if is_classification:
    acc = accuracy_score(y_test, y_pred)
    print(f"\nAccuracy Score: {acc}")
    print("\nClassification Report:\n", classification_report(y_test, y_pred))
else:
    mse = mean_squared_error(y_test, y_pred)
    r2 = r2_score(y_test, y_pred)
    print(f"\nMean Squared Error: {mse}")
    print(f"R^2 Score: {r2}")

# Step 8: Plot Actual vs Predicted (for regression)
if not is_classification:
    plt.figure(figsize=(8,6))
    plt.scatter(y_test, y_pred, alpha=0.7)
    plt.xl
