﻿(define (problem simpleira)
    (:domain agenteSeguranca)
    (:objects Sala1 Sala2 Sala3 Sala4 Sala5 Sala6 Corredor
              J1 J2 J31 J32 J4 J5 J61 J62
              P1C P21 P32 P4C P54 P65
    )
    (:init (Em Sala3) ; Posicao inicial do agente
           (Sala Sala1) (Sala Sala2) (Sala Sala3) (Sala Sala4) (Sala Sala5) (Sala Sala6) (Sala Corredor) ; Salas e corredor
           
           (Janela Sala1 J1) (Janela Sala2 J2) (Janela Sala3 J31) (Janela Sala3 J32) ; Sala 3 tem duas janelas, J31 e J32
           (Janela Sala4 J4) (Janela Sala5 J5) (Janela Sala6 J61) (Janela Sala6 J62) ; Sala 6 tem duas janelas, J61 e J62
           
           (JanelaAberta J1) (JanelaAberta J2) (JanelaAberta J31) (JanelaAberta J32) ; Estado das janelas
           (JanelaAberta J4) (JanelaAberta J5) (JanelaAberta J61) (JanelaAberta J62) ; Estado das janelas
           
           (Porta Sala1 Corredor P1C) (Porta Sala2 Sala1 P21) (Porta Sala3 Sala2 P32) ; Portas entre as salas, com excessão das P1 que está entre corredor
           (Porta Sala4 Corredor P4C) (Porta Sala5 Sala4 P54) (Porta Sala6 Sala5 P65) ; Portas entre as salas, com excessão das P4 que está entre corredor
           
           (PortaAberta P1C) (PortaAberta P21) (PortaAberta P32) ; Estado das portas
           (PortaAberta P4C) (PortaAberta P54) (PortaAberta P65) ; Estado das portas
           
           (Acesa Sala1) (Acesa Sala3) (Acesa Sala3) ; Estado das luzes
           (Acesa Sala4) (Acesa Sala5) (Acesa Sala6) ; Estado das luzes 
    )
    (:goal  (and (Em Sala6)) 
    
    
    )
)
