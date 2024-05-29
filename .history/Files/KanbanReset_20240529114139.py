import pandas as pd

'''
Cards = [Not Started, In Progress, Completed]
'''

df=pd.read_csv("Files\Placement.csv", header=None)
print(df)
for i in range(len(df)):
    df[2][i] = 'Completed'
