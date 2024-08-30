//
//  ContentView.swift
//  begruender
//
//  Created by Developer on 30.08.24.
//

import SwiftUI
import GoogleGenerativeAI

struct ContentView: View {
    
    let model = GoogleGenerativeAI.GenerativeModel(name: "gemini-pro", apiKey: "AIzaSyBnf02iX6iQym6A_YjdOs5YJSw9oX70JTM")
    
    @State var textInput1 = ""
    @State var textInput2 = ""
    @State var textInput3 = ""
    @State var aiConfigText = "Hilfsmittel sollen Menschen mit Erkrankungen oder Behinderungen im Alltag helfen, schmerzfrei und selbstbestimmt zu leben. Sie sollen den Erfolg einer Krankenbehandlung sichern, einer drohenden Behinderung vorbeugen oder eine Behinderung ausgleichen. Weit über 30.000 sind im sogenannten Hilfsmittelverzeichnis aufgelistet. Sanitätshäuser oder Krankenkassen stellen sie leihweise zur Verfügung. Krankenkassen können die Kosten dafür übernehmen.Rezept für Kostenübernahme durch Krankenkasse notwendigDamit die Krankenkasse ein Hilfsmittel genehmigt und die Kosten übernimmt, benötigt man eine ärztliche Verordnung - ein Rezept. Der Arzt entscheidet, welches Hilfsmittel in der Situation sinnvoll und erforderlich ist. Hierfür gibt es eine sogenannte Hilfsmittel-Richtlinie. Wichtig ist, dass die Verordnung möglichst präzise ausgefüllt ist. Aus dem Rezept muss die medizinische Notwendigkeit hervorgehen. Wird ein Hilfsmittel durch die Krankenkasse abgelehnt, haben Versicherte das Recht, Widerspruch oder Klage einzureichen.Wie viel müssen Versicherte zuzahlen?Für jedes Hilfsmittel müssen Erwachsene mindestens fünf und höchstens zehn Euro zuzahlen. Bei Hilfsmitteln zum Verbrauch - wie Inkontinenzhilfen - sind es höchstens zehn Euro im Monat.Rechnungen gut aufbewahrenWenn sämtliche Zuzahlungen im Jahr zwei Prozent der jährlichen Bruttoeinnahmen übersteigen, können Versicherte sich bei ihrer Krankenkasse von weiteren Zuzahlungen in dem Kalenderjahr befreien oder sich Zuzahlungen erstatten lassen. Bei schweren oder chronischen Krankheiten gilt eine Belastungsgrenze von einem Prozent. Die Zuzahlungsbefreiung erfolgt nicht automatisch, sie muss beantragt werden. Rechnungen und Quittungen sollten Betroffene daher gut aufbewahren.Kassenmodelle decken nur medizinischen BedarfBei den verschriebenen Hilfsmitteln handelt es sich meist um Standardausführungen, für die neben der Zuzahlung von maximal zehn Euro keine weiteren Eigenleistungen erforderlich sind. Laut Verbraucherzentrale reichen diese Kassenmodelle in der Regel aus, um den medizinisch erforderlichen Bedarf zu decken. Patienten können sich aber auch für ein Hilfsmittel entscheiden, das über das Notwendige hinausgeht. Das kann zum Beispiel eine hochwertigere Ausführung oder ein Modell mit Sonderfunktionen sein. Diese Mehrkosten werden oft nicht vollständig von der Krankenkasse übernommen.Antrag abgelehnt: Was tun?Wird der Antrag auf ein Hilfsmittel abgelehnt, kann man innerhalb eines Monats Widerspruch einlegen. Der Widerspruch sollte schriftlich eingereicht und ausführlich begründet werden. Sinnvoll ist eine ärztliche Stellungnahme beizulegen. Zudem sollte die besondere Lage und Problematik des Antragstellers hervorgehen. Es empfiehlt sich, fachkundige Unterstützung, wie sie Verbraucherzentralen und Sozialverbände (SoVD, VdK) anbieten, in Anspruch zu nehmen. Die Erfahrung zeigt, dass sich Widersprüche oftmals lohnen. Der SoVD Niedersachsen hat nach eigenen Angaben bei seinen Widerspruchsverfahren eine Erfolgsquote von 50 Prozent.Wird die Kostenübernahme weiterhin abgelehnt, kann innerhalb eines Monats vor dem Sozialgericht Klage erhoben werden.Auf gute Beratung im Sanitätshaus achtenSanitätshäuser sind gesetzlich verpflichtet, im Beratungsgespräch immer auch über mehrkostenfreie Kassenmodelle zu informieren. Verbraucher sollten immer danach fragen und diese testen. Vor Vertragsabschluss sollte das Beratungsprotokoll beziehungsweise der Vertrag aufmerksam durchgelesen werden. Eine Rückgabe oder ein Umtausch ist bei den meisten Hilfsmitteln in der Regel nicht vorgesehen. Daher rät die Verbraucherzentrale von Spontankäufen ab. Jeder Kauf im Sanitätshaus sollte gut überlegt sein, weil man im Zweifel auf dem Produkt sitzen bleibt.Hilfsmittel online bestellenHilfsmittel lassen sich auch im Internet bestellen, das ist aber nicht immer ratsam: Müssen individuelle Anpassungen vorgenommen werden, empfiehlt der Sozialverband Deutschland einen Kauf im stationären Sanitätshaus, weil es dort eine individuelle Beratung gibt. Rezeptfreie Artikel wie Duschhocker oder Blutdruckmesser können aber im Netz günstiger als im Geschäft sein. Auch bei regelmäßig benötigten Hilfsmitteln wie Inkontinenz-Artikeln kann eine Bestellung im Internet sinnvoll sein, weil oft ein Preisvorteil oder Rabatt gewährt wird.Neben Krankenkasse auch andere Kostenträger möglichBei der Übernahme der Kosten für ein Hilfsmittel kommen mehrere Kostenträger infrage. Meist ist die gesetzliche oder private Krankenversicherung die richtige Adresse. Je nachdem, für welchen Zweck oder aus welchem Grund das Hilfsmittel benötigt wird, können auch die Rentenversicherung, die Unfallversicherung, die Arbeitsagentur oder das Sozialamt die Kosten übernehmen.Was ist der Unterschied zu Pflegehilfsmitteln?Pflegehilfsmittel werden von der gesetzlichen Pflegeversicherung gewährt. Voraussetzung hierfür ist, dass der oder die Betroffene pflegebedürftig ist und ein Pflegegrad vorliegt. Bei Pflegehilfsmitteln handelt es sich um Geräte und Sachmittel, die zur häuslichen Pflege notwendig sind. Sie sollen die Pflege erleichtern und dazu beitragen, Beschwerden zu lindern oder dem Pflegebedürftigen eine selbstständigere Lebensführung ermöglichen.Fristen für die Abholung der HilfsmittelKleinere Hilfsmittel wie Strümpfe, Bandagen oder Orthesen kann man in der Regel behalten. Anders ist es bei größeren Gegenständen wie Betten, Rollstühlen oder Sauerstoffgeräten. Sie sind meist nur geliehen und bleiben im Besitz der Kassen oder Sanitätshäuser. Diese sind in der Regel verpflichtet, die Hilfsmittel auch wieder abzuholen. Es gibt keine gesetzlich festgelegte Frist dafür, dauert in er Regel aber maximal 2-3 Wochen, sagt Klaus Wicher von SoVD Hamburg. Hilfsmittel dürfen nicht entsorgt oder weiterverkauft werden. Das könnte zu Schadenersatzforderungen führen."
    
    
    @State var aiResponse = "Hallo, bei welcher Begründung kann ich helfen?"
    
    var body: some View {
        VStack {
            Text("Begründer Bot")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            ScrollView {
                Text(aiResponse)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            .padding(.bottom, 20)
            
            VStack(spacing: 10) {
                TextField("Diagnose", text: $textInput1)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                TextField("Krankenkasse", text: $textInput2)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                TextField("Hilfsmittel", text: $textInput3)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Button(action: {
                sendRequest()
            }) {
                Text("Send Request")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
    
    func sendRequest() {
        aiResponse = ""
        
        Task {
            do {
                let combinedInput = "Basierend auf diesen Angaben: \n\(aiConfigText) \n und diesen Zusatzinfos: \n -Diagnose: \(textInput1)\n -Krankenkasse: \(textInput2)\n - Hilfsmittel: \(textInput3)\n erstelle eine 150 wortige Begrüdung von einem Sanitäts Facherater von der ARS-Digital für die Kostenübernahme für Max Mustermann. \n die Begründung sollte mit sehr geehrt anfangen und mit freundlichen grüßen enden. \n generiere auch aus dem string krankenkasse eine echte krankenkassen bezeichnung"
                
                let response = try await model.generateContent(combinedInput)
                
                guard let text = response.text else {
                    aiResponse = "failure"
                    return
                }
                
                textInput1 = ""
                textInput2 = ""
                textInput3 = ""

                for char in text {
                    aiResponse.append(char)
                    try await Task.sleep(nanoseconds: 15_000_000) // 50 milliseconds
                }
                
            } catch {
                aiResponse = "Something went wrong \(error.localizedDescription)"
            }
        }
    }
}


#Preview {
    ContentView()
}






// AIzaSyBnf02iX6iQym6A_YjdOs5YJSw9oX70JTM gemini api key
