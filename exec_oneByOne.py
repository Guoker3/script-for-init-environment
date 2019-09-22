import commands

fileName=argv
f=fopen(filename,'r')
a=f.readline()
a+=' > exec.log'
while(a):
  try:
    commands.getstatusoutput(a)
  except Exception:
    log_file=fopen('exec_exec.log','a+')
    log_file.write('exception:',a)
  a=f.readline()
  a+=' >> exec.log'
  
with open('exec_exec.log','a+') as log_file.write
  log_file.write('\nEND\n\nBEGIN')
