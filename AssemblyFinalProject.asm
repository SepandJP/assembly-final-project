;;;;;;;;;;;;;;;;;;;;;;;;

; Sepand JamshidPour
; Contact: https://redl.ink/sepand

; GitHub Repository:
; https://github.com/SepandJP/assembly-final-project

; Develop: 2021/12/20
; Last Modify: 2021/12/28

;;;;;;;;;;;;;;;;;;;;;;;;;;


.model small
.stack 32

.data  

    fname db 'Sepand JamshidPour','$'
    subject db 'Assembly Final Project','$'
    university db 'Central Tehran Branch','$'
    professor db 'Dr Zaghari','$'
    
    ; Guide
    guide db "1: Change Background ",0dh,0ah
          db "2: Drawing Mountains ",0dh,0ah
          db "3: Drawing Trees ",0dh,0ah
          db "4: Remove Objects ",0dh,0ah,0dh,0ah,0dh,0ah,"$"
       
    
.code
    Start:
    ; Print Guide
        mov ax,@data
        mov ds,ax
        mov ah,9
        mov dx,offset guide
        int 21h
        
        jmp main
        
        
    main:
          ; Input Key
          ;mov ah,01
          ;int 16h          
          mov ah,0
          int 16h
             
          ; Draw Sky and Ground & Signature       
          mov ah,1
          int 16h
          cmp al,49
          je Background
          ; Drawing Mountains       
          mov ah,1
          int 16h
          cmp al,50
          je Mountains
          ; Drawing Trees       
          mov ah,1
          int 16h
          cmp al,51
          je Trees
          ; Remove Objects       
          mov ah,1
          int 16h
          cmp al,52
          je Remove
          
          jmp Main
  
  
  Background: 
      ; Change Backgroung Color & Print Signature
      ; Draw Sky and Ground
    ;sky
        mov ah,09
        mov bh,00
        mov al,219
        mov cx,809
        mov bl,01001011b      
        int 10h
    ;grass
        mov ah,2
        mov bl,00
        mov dh,15
        mov dl,0
        int 10h
        mov ah,09
        mov bh,00
        mov al,219
        mov cx,885
        mov bl,1010b      
        int 10h
        
    ; Print Name : Sepand JamshidPour
       mov ah,2
       mov bh,0
       mov dh,1
       mov dl,31
       mov bl,00001100b
       int 10h
       mov ah,9
       mov bh,0
       mov bl,00001100b
       mov dx, offset fname      
       int 21h
    ; Print Subject : Assembly Final Project
       mov ah,2
       mov dh,2
       mov dl,29
       int 10h
       mov ah,9
       mov dx, offset subject      
       int 21h
    ; Print University : Central Tehran Branch
       mov ah,2
       mov dh,3
       mov dl,30
       mov bl,00001100b
       int 10h
       mov ah,9
       mov dx, offset university      
       int 21h
    ; Print Professor : Dr Zaghari
       mov ah,2
       mov dh,4
       mov dl,35
       mov bl,00001100b
       int 10h
       mov ah,9
       mov dx, offset professor      
       int 21h
    ;box around the text
        mov ah,2
        mov dh,0
        mov dl,29
        int 10h
        mov ah,09
        mov bh,00
        mov al,205
        mov cx,22
        mov bl,01001110b      
        int 10h
        
        mov ah,2
        mov dh,5
        mov dl,29
        int 10h
        mov ah,09
        mov bh,00
        mov al,205
        mov cx,22
        mov bl,01001110b      
        int 10h
        
        mov ah,2
        mov dh,0
        mov dl,28
        int 10h
        mov ah,09
        mov bh,00
        mov al,201
        mov cx,1
        mov bl,01001110b      
        int 10h
        
        mov ah,2
        mov dh,0
        mov dl,51
        int 10h
        mov ah,09
        mov bh,00
        mov al,187
        mov cx,1
        mov bl,01001110b      
        int 10h
        
        mov ah,2
        mov dh,5
        mov dl,28
        int 10h
        mov ah,09
        mov bh,00
        mov al,200
        mov cx,1
        mov bl,01001110b      
        int 10h
        
        mov ah,2
        mov dh,5
        mov dl,51
        int 10h
        mov ah,09
        mov bh,00
        mov al,188
        mov cx,1
        mov bl,01001110b      
        int 10h
     ;Left & Right
        mov bl,01001110b
        mov al,186
        mov dh,1
     Column:
     ;Left    
        mov ah,2
        mov dl,28
        int 10h
        mov ah,09
        mov cx,1              
        int 10h
     ;Right   
        mov ah,2
        mov dl,51
        int 10h
        mov ah,09
        mov cx,1              
        int 10h
     ;Next   
        inc dh
        cmp dh,5
        jnz Column
        
       jmp main
        
        
  Mountains:
            mov al,219
            mov dh,14
            mov bl,0100b
         ;Mountain1
            mov dl,67
            mov cx,13
         Mountain11:
            mov ah,2
            int 10h
            mov ah,09
            int 10h
            sub cx,2
            dec dh
            inc dl
            cmp cx,3
            jnz Mountain11
         Mountain12:
            mov bl,1111b
            mov ah,2
            int 10h
            mov ah,09
            int 10h
            sub cx,2
            dec dh
            inc dl
            cmp cx,-1
            jnz Mountain12   
            
            mov bl,0
  
            ;Mountain2
            mov dl,56
            mov cx,11
            mov al,219
            mov dh,14
            mov bl,0100b
         Mountain21:
            mov ah,2
            int 10h
            mov ah,09
            int 10h
            sub cx,2
            dec dh
            inc dl
            cmp cx,3
            jnz Mountain21
         Mountain22:
            mov bl,1111b
            mov ah,2
            int 10h
            mov ah,09
            int 10h
            sub cx,2
            dec dh
            inc dl
            cmp cx,-1
            jnz Mountain22   
            
            mov bl,0
            
            ;Mountain3
            mov dl,47
            mov cx,9
            mov al,219
            mov dh,14
            mov bl,0100b
         Mountain31:
            mov ah,2
            int 10h
            mov ah,09
            int 10h
            sub cx,2
            dec dh
            inc dl
            cmp cx,3
            jnz Mountain31
         Mountain32:
            mov bl,1111b
            mov ah,2
            int 10h
            mov ah,09
            int 10h
            sub cx,2
            dec dh
            inc dl
            cmp cx,-1
            jnz Mountain32   
            
            mov bl,0
            
            ;Mountain4
            mov dl,40
            mov cx,7
            mov al,219
            mov dh,14
            mov bl,0100b
         Mountain41:
            mov ah,2
            int 10h
            mov ah,09
            int 10h
            sub cx,2
            dec dh
            inc dl
            cmp cx,1
            jnz Mountain41
         Mountain42:
            mov bl,1111b
            mov ah,2
            int 10h
            mov ah,09
            int 10h
            sub cx,2
            dec dh
            inc dl
            cmp cx,-1
            jnz Mountain42   
            
            mov bl,0
            
            ;Mountain5
            mov dl,35
            mov cx,5
            mov al,219
            mov dh,14
            mov bl,0100b
         Mountain51:
            mov ah,2
            int 10h
            mov ah,09
            int 10h
            sub cx,2
            dec dh
            inc dl
            cmp cx,1
            jnz Mountain51
         Mountain52:
            mov bl,1111b
            mov ah,2
            int 10h
            mov ah,09
            int 10h
            sub cx,2
            dec dh
            inc dl
            cmp cx,-1
            jnz Mountain52   
            
            mov bl,0
            
            jmp main
            
  
  Trees:
    ;Tree1
     ;Body
        mov al,178
        mov bl,1100b
        mov dh,19
        mov dl,9
     Body1:
        mov ah,2
        int 10h
        mov ah,09
        mov cx,4
        int 10h
        inc dh
        cmp dh,24
        jnz Body1
        
     ;Leaf
        mov al,176
        mov bl,1010b
        mov dh,19
        mov dl,4
        mov cx,14
     SubCx1:   
        add cx,4
        sub dl,2
     Leaf1:
        mov ah,2
        int 10h
        mov ah,09
        int 10h
        dec dh
        inc dl
        sub cx,2
        cmp dh,15
        je SubCx1
        cmp dh,11
        je SubCx1
        cmp dh,5
        jnz Leaf1
     
        ;Tree2
     ;Body
        mov al,178
        mov bl,1100b
        mov dh,19
        mov dl,30
     Body2:
        mov ah,2
        int 10h
        mov ah,09
        mov cx,3
        int 10h
        inc dh
        cmp dh,24
        jnz Body2
        
     ;Leaf
        mov al,176
        mov bl,1010b
        mov dh,19
        mov dl,26
        mov cx,12
     SubCx2:   
        add cx,4
        sub dl,2
     Leaf2:
        mov ah,2
        int 10h
        mov ah,09
        int 10h
        dec dh
        inc dl
        sub cx,2
        cmp dh,15
        je SubCx2
        cmp dh,11
        je SubCx2
        cmp dh,7
        jnz Leaf2
        
        ;Tree3
     ;Body
        mov al,178
        mov bl,1100b
        mov dh,19
        mov dl,50
     Body3:
        mov ah,2
        int 10h
        mov ah,09
        mov cx,2
        int 10h
        inc dh
        cmp dh,24
        jnz Body3
        
     ;Leaf
        mov al,176
        mov bl,1010b
        mov dh,19
        mov dl,46
        mov cx,10
     SubCx3:   
        add cx,4
        sub dl,2
     Leaf3:
        mov ah,2
        int 10h
        mov ah,09
        int 10h
        dec dh
        inc dl
        sub cx,2
        cmp dh,15
        je SubCx3
        cmp dh,10
        jnz Leaf3
        
        jmp main           
  
  
  Remove:
  
        mov ah,6
        mov ch,25
        mov cl,0
        mov dh,25
        mov dl,80
     RemoveLine:
        int 10h
        dec ch
        dec dh
        cmp dh,-1
        jne RemoveLine
        
        mov ah,2
        mov dh,0
        mov dl,0
        int 10h
        jmp Start
      