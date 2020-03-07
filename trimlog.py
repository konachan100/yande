lines = []
with open('log.txt', 'r') as f:
    lines = f.readlines()

maxline = 500
if len(lines)>maxline:
    lines = lines[-500:]
with open('log.txt', 'w') as f:
    f.writelines(lines)