'Supervisory Control
' Copyright(©) 2020 Damodhar Pai and team

$regfile = "m16def.dat"
$crystal = 4000000
$baud = 9600

Config Adc = Single , Prescaler = Auto , Reference = Avcc
Start Adc

Config Timer1 = Pwm , Pwm = 8 , Compare A Pwm = Clear Up , Compare B Pwm = Clear Up , Prescale = 8
Config Single = Scientific , Digits = 1
Enable Compare1a

Enable Urxc
On Urxc Rcv_from_pc
Enable Interrupts

Config Portb = Input
Config Portc = Output
Portb = 255

Dim Var1 As Word , Var2 As Word , Var3 As Word , Var4 As Word
Dim An1 As Byte , An2 As Byte , An3 As Byte , An4 As Byte
Dim Command As Byte , Snd As Byte , Pwm As Byte

Waitms 100

Do
Pwm1a = Pwm
Gosub Snd_to_pc
Gosub Read_adc
Loop
End

Read_adc:
Var1 = Getadc(0) / 10
An1 = Var1
Var2 = Getadc(1) / 10
An2 = Var2
Var3 = Getadc(2) / 10
An3 = Var3
Var4 = Getadc(3) / 10
An4 = Var4
Return

Rcv_from_pc:
Inputbin Command
Inputbin Pwm
Portc = Command
Return

Snd_to_pc:
Snd = Pinb
Printbin 49
Printbin Snd
Printbin An1
Printbin An2
Printbin An3
Printbin An4
Printbin 50
Return
