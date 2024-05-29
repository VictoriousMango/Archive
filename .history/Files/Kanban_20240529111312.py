import pandas as pd

df=pd.read_csv("Files\Placement.csv")
print(df)

print(df.iloc[0][2])