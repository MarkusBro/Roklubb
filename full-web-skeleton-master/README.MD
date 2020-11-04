# Web-skeleton med fungerenede jdbc for mariadb

## git clone eller fork
Før du begynner må du clone prosjektet ned lokalt.
Enten kan du direkte clone mitt prosjekt eller forke det (anbefales) ved å trykke på fork i høyre marg. 
Ved å forke får du en direkte kopi av mitt repository, bare at det er ditt eget

## Setup Windows && OS x/linux
Se i `config.properties` og endre variablene til ditt database-brukernavn og passord samt porten du kjører mariadb på.    

Eksempel:
```
username=trym
password=12345
URL=jdbc:mariadb://172.19.160.1:3308
```


#### NB!: jdbc:mariadb://dinMariaDbIP og port

## Hvor finner jeg ip og port til min mariadb?
### VIA docker - (enkleste måten):
- Åpne terminal og og skriv: `docker network inspect bridge`,

> Her finner dere alle applikasjonene og hvilke porter de kjører på. 

- kopier så ipen under Gateway og lim inn i `config.properties`.


### På windows:
- Åpne terminal/powershell skriv `ipconfig`.

- Naviger deg til Ethernet adapter vEthernet (WSL) i teksten:

- Kopier ipv4 herfra og lim inn i URL=<ip + port> i `config.properties`.

> Denne filen vil bli lastet opp til payara sitt fil-system hver gang du bygger slik at applikasjonen kan lese filen derfra. 


### På linux / Os X

- Åpne terminal og skriv `ip addr`

> Hvis denne kommandoen gir deg feil skriv `ifconfig`,

- Du vil der finne en IPv4-addresse som hører til `docker0`. Kopier denne.

- Lim inn den IPen i `config.properties` og glem ikke porten. (eks: `dbc:mariadb://172.17.0.1:3308`)


#### Alternativt

- Åpne docker desktop.

- Trykk på CLI-ikonet på mariaDB containeren for å åpne mariaDb sin egen terminal. Containeren må kjøre!

> Her inne kan du skrive `bash` for å starte bash shellet i denne terminalen. 

- Deretter tar du å skriver `ip route show`.   
Da skal du få noe som ligner på: `default via 172.17.0.1 dev eth0`   

- Lim inn den IPen i `config.properties` og glem ikke porten. (eks: `dbc:mariadb://172.17.0.1:3308`)



## Setup windows spesifikt
> (om du ikke får lov av powershell å kjøre skriptet: Start terminal i administrator og paste inn dette: `Set-ExecutionPolicy -ExecutionPolicy Unrestricted`)

- Kjør `setup.cmd`

- Naviger til `dabaseSkript` og kjør skriptet. Det vil bygge databasen din om du ikke allerde har en.

- Kjør `build.cmd`

> Da skal applikasjonen funke på http://localhost:8080/Skeleton-1.0/


## Setup for linux og os x
- Kjør `setup.sh`

- Naviger til `dabaseSkript` og kjør skriptet. Det vil bygge databasen din om du ikke allerde har en.

- Kjør `build.sh`

> Da skal applikasjonen funke på http://localhost:8080/Skeleton-1.0/


## Takk til [Eirik](https://github.com/MysticUser) for debugging,skripting,markdown-skills og krossplatform testing!

