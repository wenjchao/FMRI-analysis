import csv

with open("./1_總表.csv", 'r') as file:
  csvreader = csv.reader(file)
  count = -1

  DJ = [[0 for i in range(56)] for j in range(48)]
  subject = []

  for row in csvreader:
    if count == -1:
      count = 0
      continue

    if count%int(56) == 0:
      subject.append(row[0])
    
    DJ[int(count/56)][count%int(56)] = row[10]
    count += 1
    
    if count > 56*48:
      break

#print(DJ)
#print(subject)

Matrix = [[[0 for i in range(56)] for j in range(56)] for k in range(48)]

for k in range(48):
  for j in range(56):
    for i in range(56):
      Matrix[k][j][i]= int(DJ[k][i]) - int(DJ[k][j])

#print(Matrix[0])

# """"
with open( subject[0]+'.csv', 'w', newline='') as csvfile:
  # 建立 CSV 檔寫入器
  writer = csv.writer(csvfile)
  # 寫入資料
  for i in range(56):
    writer.writerow(Matrix[0][i])
    
"""

for k in range(48):
  with open( subject[k]+'.csv', 'w', newline='') as csvfile:
    # 建立 CSV 檔寫入器
    writer = csv.writer(csvfile)
    # 寫入資料
    for i in range(56):
      writer.writerow(Matrix[k][i])

"""