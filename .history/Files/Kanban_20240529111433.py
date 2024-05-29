import pandas as pd

df=pd.read_csv("Files\Placement.csv")
print(df)

for i in range(len(df.iloc[0])):
    print(df.iloc[0][i])