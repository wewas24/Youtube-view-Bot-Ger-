﻿@echo off
cls
title Beta YTBOT v4.2.1.2 by wewas24
color a
echo off
echo=================================================================================================================
echo ANLEITUNG: Den den Browser deiner wahl als Standart waehlen (Ich emphele Chrome da Firefox in den Abgesicherten modus moechte). Danach alle Auforderungen erledigen und los gehts!
echo=================================================================================================================
echo Bitte Browser waehlen Z.B. chrome.exe
set /p b=
echo=================================================================================================================
echo Mehre YT Videos Boten? Ja (j) Nein (n)
set /p j=
if %j% == j goto mehr1
echo=================================================================================================================
echo Schnelle instabiele Mehtohde? Ja(j) Nein(n)!
set /P j=
if %j% == j goto fast1
echo=================================================================================================================
echo Ist der gewaelte Browser der standart Browser? Ja[j] Nein[n]!
set /P n=
if %n% == n goto ende
echo================================================================================================================
echo Bitte YT Link einfuegen!
set /p l=
echo=================================================================================================================
echo Bitte die Anzahl der Duchlaeufe eingeben!
set /p d=
set /A k=%d%+1
echo=================================================================================================================
echo Bitte die whatchtime in Sekunden eingeben! ( Automatisch +5 )
set /p w=
set /A r=%w%+5
echo=================================================================================================================
echo Bitte die Zeit der Pausen zwischen den durchlaeufen weahlen!
set /p pz=
echo=================================================================================================================
set /A counter=1
:start
set /A t=%k%-1
echo Duchlauf %counter% von %t%
set /A counter=%counter%+1
echo=================================================================================================================
start %l%
timeout %r%
taskkill /IM %b% /F
timeout %pz%
if %counter% lss %k% ( goto :start )
:goto ende
:ende
taskkill /IM cmd.exe /F
:fast1
echo=================================================================================================================
echo Ist der gewaelte Browser der standart Browser? Ja[j] Nein[n]!
set /P n=
if %n% == n goto ende
echo=================================================================================================================
echo Bitte YT Link einfuegen!
set /p l=
echo=================================================================================================================
echo Bitte die Anzahl der Duchlaeufe eingeben!
set /p d=
set /A k=%d%+1
echo=================================================================================================================
echo Bitte die whatchtime in Sekunden eingeben! ( Automatisch +10)
set /p w=
set /A r=%w%+10
echo=================================================================================================================
echo Bitte die Zeit der Pausen zwischen den durchlaeufen weahlen!
set /p pz=
echo=================================================================================================================
set /A counter=1
:fast2
set /A t=%k%-1
echo Duchlauf %counter% von %t%
echo=================================================================================================================
set /A counter=%counter%+1
start %l%
timeout 5
start %l%
timeout 5
start %l%
timeout 5
start %l%
timeout %w%
taskkill /IM %b% /F
timeout %pz%
if %counter% lss %k% ( goto :fast2 )
:goto ende
:mehr1
echo=================================================================================================================
echo Ist der gewaelte Browser der standart Browser? Ja[j] Nein[n]!
set /P n=
if %n% == n goto ende
echo=================================================================================================================
echo Bitte YT Links einfuegen! ( müssen 4 sein )
set /p l1=
set /p l2=
set /p l3=
set /p l4=
echo=================================================================================================================
echo Bitte die Anzahl der Duchlaeufe eingeben!
set /p d=
set /A k=%d%+1
echo=================================================================================================================
echo Bitte die whatchtime in Sekunden eingeben! ( Automatich +20s )
set /p w=
set /A r=%w%+20
echo=================================================================================================================
echo Bitte die Zeit der Pausen zwischen den durchlaeufen weahlen!
set /p pz=
echo=================================================================================================================
set /A counter=1
:mehr2
set /A t=%k%-1
echo Duchlauf %counter% von %t%
echo=================================================================================================================
set /A counter=%counter%+1
start %l1%
timeout 5
start %l2%
timeout 5
start %l3%
timeout 5
start %l4%
timeout %r%
taskkill /IM %b% /F
timeout %pz%
if %counter% lss %k% ( goto :mehr2 )
:goto ende
