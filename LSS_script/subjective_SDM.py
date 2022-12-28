import csv

with open("./1_總表.csv", 'r') as file:
  csvreader = csv.reader(file)
  for row in csvreader:
    print(row[1])