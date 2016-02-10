Eigenes Delegate - Protokoll zum Austausch von Daten zwischen ViewControllern

Checklist

1. der sendende ViewController definiert ein Protokoll  —> protocol : meinProtokoll{} 
2. der sendende ViewController bekommt eine Eigenschaft vom Typ des erstellten Protokolls als Optional —> var delegate: meinProtokoll?
3. in diesem Protokoll wird eine Funktion definiert , welche später die Daten übergeben bekommt  z.B.: —> func   datenSenden(text:String)
4. .in dem Programmteil des sendenden ViewController, wo die Datenübergabe stattfinden soll, starten wir die eigens erstellte Funktion in unserem Protokoll in den wir  die von uns selbst erstellte  Eigenschaft mit der Funktion im Protokoll aufrufen. —> self.delegate?.datenSenden(text:String)
5. im empfangendem ViewController erklärt man sich bereit dem Protokoll vom sendenden ViewController zu entsprechen —> class ViewController: UIViewController, meinProtokoll {}
6. da wir dies tun, implementieren wir die Protokoll Funktion im empfangendem ViewController —>  func   datenSenden(text:String) und können hier die Daten vom sendenden ViewController entgegennehmen und z.B. an ein Label übergeben
7. im empfangenden ViewController wird  die Standard Funktion  func prepareForSegue implementiert welche immer aufgerufen wird wenn Übergänge (Segue) zwischen den ViewControllern stattfinden. Sie enthält Referenzen der involvierten ViewController sowie Informationen welcher der Ursprungs und Ziel-ViewController ist. Da Referenzen des Ursprungs ViewControllers enthalten sind können wir in dieser Funktion eine Instanz des sendenden ViewControllers erstellen und dessen Eigenschaft  vom Typ des selbst erstellten Protokolls (Delegate) auf uns selbst (den empfangendem ViewController) setzen.
                   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
                           var secondVC:SecondViewController = SecondViewController()
                           secondVC = segue.destinationViewController as! SecondViewController
                           secondVC.delegate = self}

kein Anspruch auf Vollständigkeit oder Richtigkeit - bei Fehlern bitte korrigieren !
