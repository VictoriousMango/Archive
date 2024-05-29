import pandas as pd

df=pd.read_csv("Files\Placement.csv")
print(df)

for i in range(len(df.iloc[0])):
    if df.iloc[i][2] == 'Not Started':
        df.iloc[i][2] = 'In Progress'
        break
    if df.iloc[i][2] == 'In Progress':
        df.iloc[i][2] = 'Completed'
        break
print(df)