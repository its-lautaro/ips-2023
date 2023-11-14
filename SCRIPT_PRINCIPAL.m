% Script principal para ejecutar cada script por separado %
clc;clear all;
addpath('ejercicio1');
addpath('ejercicio2');
########################### Ejercicio 1 ###########################
%% Ejercicio 1. Grafico y TFTD de señal
grafico_senial;

%% Ejercicio 1. Respuesta impulsional y TFTD S1
grafico_sistema_S1;

%% Ejercicio 1. Respuesta impulsional y TFTD S2
grafico_sistema_S2;

%% Ejercicio 1. Respuesta impulsional y TFTD S3
grafico_sistema_S3;

%% Ejercicio 1. Respuesta impulsional y TFTD S4
grafico_sistema_S4;

%% Ejercicio 1. Comprobar resultado analiticos de respuesta impulsional de los sistemas
grafico_comprobacion_resp;

%% Ejercicio 1. Comprobar resultado analiticos de TFTD de los sistemas
grafico_comprobacion_TFTD;

%% Ejercicio 1. Salida de los sistemas para la señal senial.m
grafico_salidas_sistemas;

%% Ejercicio 1. TFTD de las salidas de los sistemas para la señal senial.m
grafico_TFTD_salidas_sistemas;

########################### Ejercicio 2 ###########################
%% Ejercicio 2. Grafico de hcanald
grafico_hcanald;

%% Ejercicio 2. Grafico de respuesta impulsional canald (verifica implementacion)
grafico_canald_resp;

%% Ejercicio 2. Grafico salida del sistema cuando ingresa la señal de audio del archivo “audio.wav”
## Reproduce audio!
grafico_canald_audio;

%% Ejercicio 2. Grafico de respuesta impulsional filtro de 2 ramas(verifica implementacion)
grafico_filtro2_resp;

%% Ejercicio 2. Grafico salida del sistema canal+filtro cuando ingresa la señal de audio del archivo “audio.wav”
## Reproduce audio!
grafico_filtro2_audio;

%% Ejercicio 2. Grafico de respuesta impulsional filtro de 3 ramas(verifica implementacion)
grafico_filtro3_resp;

%% Ejercicio 2. Grafico salida del sistema canal+filtro cuando ingresa la señal de audio del archivo “audio.wav”
## Reproduce audio!
grafico_filtro3_audio;
