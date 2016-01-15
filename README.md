# EXAM
- **ex1**  
En utilisant l’interface parallèle Intel 8255 ,écrire un programme pour réaliser un séquenceur d'une série de  quatre LEDs :Les LEDs sont connectées au PORTC (PC4-PC7).  
La séquence est comme suit: LED PC4 allumée puis PC5,… jusqu'a PC7.  
A chaque étape une seule LED est allumée.  
Utiliser une procédure appelée delay3s pour une pause de 3 sec  entre chaque changement d’état,à la fin de cette séquence, une nouvelle redémarre.  
La fréquence d'horloge du processeur est égale à 5 Mhz(utiliser NOP et LOOP:20 periodes d'horloge).  
Les adresses du 8255:PORTA:600h, PORTB:602h, PORTC:604h, Registre de commande :606h.   
- **ex2**  
Écrire un programme pour incrémenter la valeur du registre BX (BX=BX+1) chaque 30 ms en utilisant le temporisateur 8253 et le contrôleur d'interruption 8259.  
La fréquence d'horloge du temporisateur est égale à 1Mhz.  
Les adresses du 8259:registre de contrôle:30h,registre de données:32H,numéro de vecteur IRQ0=60H.  
Les adresses du 8253:TIMER0:40h, TIMER1:42h, TIMER2:44h, Registre de contrôle:46h.  
- **ex3**  
En utilisant le contrôleur d’interruption Intel 8259 ,l’interface parallèle Intel 8255 et le temporisateur 8253, écrire un programme pour réaliser l’application suivante :  
Si on appuie sur un bouton poussoir relié à la ligne IRQ3  du PIC 8259, la LED connectée au PB0 s’allume pendant 2 secondes.  
Ensuite la LED connectée au PB1 s’allume pendant 4 secondes.  
Le cycle redémarre en cas d’un nouvel appui sur le bouton poussoir.  
La sortie de temporisateur est reliée à la ligne IRQ2.  
La fréquence d'horloge du temporisateur est égale à 100 Hz.  
Les adresses du 8255:PORTA:400h, PORTB:402h, PORTC:404h, Registre de commande :406h.  
Les adresses du 8259:registre de contrôle:30h,registre de données:32H,numéro de vecteur IRQ0=60H.  
Les adresses du 8253:TIMER0:40h, TIMER1:42h, TIMER2:44h, Registre de contrôle:46h.  
