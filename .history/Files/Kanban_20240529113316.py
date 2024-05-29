import pandas as pd

'''
Cards = [Not Started, In Progress, Completed]
'''

df=pd.read_csv("Files\Placement.csv", header=None)
print(df)

for i in range(len(df)):
    print(df[2][i], df[2][i].strip() == 'Not Started')
    print(df[2][i], df[2][i].strip() == 'In Progress')

    if df[2][i].strip() == 'In Progress':
        df[2][i] = 'Completed'
    if df[2][i].strip() == 'Not Started':
        df[2][i] = 'In Progress'
        df.to_csv("Files\Placement.csv", index=False)
        break
