import pandas as pd

df=pd.read_csv("Files\Placement.csv", header=None)
print(df)

for i in range(len(df.iloc[0])):
    print(df[2][i], df[2][i].strip() == 'Not Started')
    if df[2][i].strip() == 'Not Started':
        print('Not Started Detected')
        df[2][i] = 'In Progress'

    if df[2][i].strip() == 'In Progress':
        df[2][i] = 'Completed'
        break
print(df)