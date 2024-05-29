import pandas as pd

df=pd.read_csv("Files\Placement.csv", header=None)
print(df)

for i in range(len(df.iloc[0])):
    if df[i][2] == 'Not Started':
        df[i][2] = 'In Progress'
        break
    if df[i][2] == 'In Progress':
        df[i][2] = 'Completed'
        break
print(df)