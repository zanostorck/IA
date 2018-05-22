(define (problem teste_implementacao)
    (:domain agenteSeguranca)
    (:objects Sala1 Sala2 Sala3 Sala4 Sala5 Sala6 Corredor
              J1 J2 J31 J32 J4 J5 J61 J62
              P1C P21 P32 P4C P54 P65
    )
    (:init (Em Corredor) ; Posicao inicial do agente
           (Sala Sala1) (Sala Sala2) (Sala Sala3) (Sala Sala4) (Sala Sala5) (Sala Sala6) (Sala Corredor) ; Salas e corredor
          
           (Janela Sala1 J1) (Janela Sala2 J2) (Janela Sala3 J31) (Janela Sala3 J32) ; Sala 3 tem duas janelas, J31 e J32
           (Janela Sala4 J4) (Janela Sala5 J5) (Janela Sala6 J61) (Janela Sala6 J62) ; Sala 6 tem duas janelas, J61 e J62
           
           (Porta Sala1 Corredor P1C)  (Porta Corredor Sala1 P1C)
           (Porta Sala2 Sala1 P21)     (Porta Sala1 Sala2 P21)
           (Porta Sala3 Sala2 P32)     (Porta Sala2 Sala3 P32)
           (Porta Sala4 Corredor P4C)  (Porta Corredor Sala4 P4C)
           (Porta Sala5 Sala4 P54)     (Porta Sala4 Sala5 P54)
           (Porta Sala6 Sala5 P65)     (Porta Sala5 Sala6 P65)

           (JanelaFechada J1) (JanelaAberta J2) (JanelaFechada J31) (JanelaAberta J32) ; Estado das janelas
           (JanelaAberta J4) (JanelaFechada J5) (JanelaAberta J61) (JanelaFechada J62) ; Estado das janelas
           
           (PortaAberta P1C) (PortaFechada P21) (PortaAberta P32) ; Estado das portas
           (PortaFechada P4C) (PortaAberta P54) (PortaFechada P65) ; Estado das portas
           
           (Apagada Sala1) (Apagada Sala2) (Apagada Sala3) ; Estado das luzes
           (Acesa Sala4) (Acesa Sala5) (Acesa Sala6) ; Estado das luzes 
    )
    (:goal  (and (Em Corredor) 
    
                 (PortaFechada P1C) (PortaFechada P21) (PortaFechada P32) (PortaFechada P4C) (PortaFechada P54) (PortaFechada P65)
                 
                 (JanelaFechada J1) (JanelaFechada J2) (JanelaFechada J31) (JanelaFechada J32)
                 (JanelaFechada J4) (JanelaFechada J5) (JanelaFechada J61) (JanelaFechada J62)
                 
                 (Apagada Sala1) (Apagada Sala2) (Apagada Sala3) (Apagada Sala4) (Apagada Sala5) (Apagada Sala6)
    
    )
    )
)

