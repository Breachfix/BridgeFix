//
//  ContentView.swift
//  Guess
//
//  Created by Jack Ntihaniraho on 2022-01-26.
//


import SwiftUI
import Foundation



struct FlagsView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var questionCounter = 1
    @State private var showingResults = false
    
 @State private var countries =
        [  "Andorra",
           "United Arab Emirates",
            "Afghanistan",
            "Antigua and Barbuda",
            "Anguilla",
             "Albania",
            "Armenia",
             "Angola",
              "Antarctica",
            "Argentina",
         "American Samoa",
            "Austria",
             "Australia",
              "Aruba",
            "Åland Islands",
            "Azerbaijan",
           "Bosnia and Herzegovina",
           "Barbados",
            "Bangladesh",
            "Belgium",
            "Burkina Faso",
            "Bulgaria",
            "Bahrain",
             "Burundi",
             "Benin",
              "Saint Barthélemy",
             "Bermuda",
           "Brunei",
             "Bolivia",
             "Caribbean Netherlands",
            "Brazil",
             "Bahamas",
             "Bhutan",
              "Bouvet Island",
             "Botswana",
            "Belarus",
             "Belize",
            "Canada",
             "Cocos (Keeling) Islands",
             "DR Congo",
             "Central African Republic",
            "Republic of the Congo",
            "Switzerland",
             "Côte d'Ivoire (Ivory Coast)",
            "Cook Islands",
             "Chile",
             "Cameroon",
            "China",
              "Colombia",
           "Costa Rica",
            "Cuba",
                 "Cape Verde",
                   "Curaçao",
                  "Christmas Island",
                   "Cyprus",
                  "Czechia",
                  "Germany",
                   "Djibouti",
                  "Denmark",
                    "Dominica",
                  "Dominican Republic",
                  "Algeria",
                    "Ecuador",
                  "Estonia",
                "Egypt",
                    "Western Sahara",
                   "Eritrea",
                    "Spain",
                    "Ethiopia",
           "Finland",
              "Fiji",
              "Falkland Islands",
                "Micronesia",
                 "Faroe Islands",
                 "France",
                 "Gabon",
                  "United Kingdom",
                  "England",
                   "Northern Ireland",
                 "Scotland",
                "Wales",
                  "Grenada",
                   "Georgia",
                 "French Guiana",
                  "Guernsey",
                  "Ghana",
                  "Gibraltar",
                 "Greenland",
                  "Gambia",
                   "Guinea",
                  "Guadeloupe",
                 "Equatorial Guinea",
                  "Greece",
                  "South Georgia",
                 "Guatemala",
                   "Guam",
               "Guinea-Bissau",
                  "Guyana",
           "Hong Kong",
                    "Heard Island and McDonald Islands",
                   "Honduras",
                   "Croatia",
                    "Haiti",
                    "Hungary",
                    "Indonesia",
                    "Ireland",
                   "Israel",
                   "Isle of Man",
                   "India",
                "British Indian Ocean Territory",
                    "Iraq",
                   "Iran",
                   "Iceland",
                   "Italy",
                   "Jersey",
                    "Jamaica",
                  "Jordan",
                  "Japan",
                  "Kenya",
                  "Kyrgyzstan",
                  "Cambodia",
                  "Kiribati",
                  "Comoros",
                   "Saint Kitts and Nevis",
                   "North Korea",
                  "South Korea",
                  "Kuwait",
                  "Cayman Islands",
                   "Kazakhstan",
                   "Laos",
                   "Lebanon",
                   "Saint Lucia",
                   "Liechtenstein",
                   "Sri Lanka",
                  "Liberia",
                  "Lesotho",
                  "Lithuania",
                   "Luxembourg",
                   "Latvia",
                    "Libya",
                   "Morocco",
                   "Monaco",
                   "Moldova",
                   "Montenegro",
                  "Saint Martin",
                   "Madagascar",
                    "Marshall Islands",
                   "North Macedonia",
                  "Mali",
                  "Myanmar",
                   "Mongolia",
                   "Macau",
                    "Northern Mariana Islands",
                    "Martinique",
                    "Mauritania",
                  "Montserrat",
                "Malta",
                    "Mauritius",
                  "Maldives",
                   "Malawi",
                    "Mexico",
                   "Malaysia",
                   "Mozambique",
                   "Namibia",
                   "New Caledonia",
                    "Niger",
                  "Norfolk Island",
                   "Nigeria",
                  "Nicaragua",
                 "Netherlands",
                   "Norway",
                   "Nepal",
                   "Nauru",
                    "Niue",
                   "New Zealand",
                  "Oman",
                   "Panama",
                   "Peru",
                  "French Polynesia",
                   "Papua New Guinea",
                    "Philippines",
                  "Pakistan",
                  "Poland",
                  "Saint Pierre and Miquelon",
                   "Pitcairn Islands",
                   "Puerto Rico",
                  "Palestine",
                "Portugal",
                   "Palau",
                 "Paraguay",
                   "Qatar",
                  "Réunion",
                   "Romania",
                  "Serbia",
                    "Russia",
                    "Rwanda",
                   "Saudi Arabia",
                   "Solomon Islands",
                 "Seychelles",
                   "Sudan",
                  "Sweden",
                   "Singapore",
                   "Saint Helena, Ascension and Tristan da Cunha",
                   "Slovenia",
                   "Svalbard and Jan Mayen",
                  "Slovakia",
                  "Sierra Leone",
                 "San Marino",
             "Senegal",
                  "Somalia",
           "Suriname",
                   "South Sudan",
                    "São Tomé and Príncipe",
                   "El Salvador",
                   "Sint Maarten",
                   "Syria",
                 "Eswatini (Swaziland)",
                  "Turks and Caicos Islands",
                 "Chad",
                    "French Southern and Antarctic Lands",
                  "Togo",
                "Thailand",
                   "Tajikistan",
                "Tokelau",
                   "Timor-Leste",
                "Turkmenistan",
                   "Tunisia",
                  "Tonga",
                    "Turkey",
               "Trinidad and Tobago",
              "Tuvalu",
               "Taiwan",
                "Tanzania",
             "Ukraine",
                  "Uganda",
                  "United States Minor Outlying Islands",
                    "United States",
           "Uruguay",
                "Uzbekistan",
                 "Vatican City (Holy See)",
                 "Saint Vincent and the Grenadines",
             "Venezuela",
                "British Virgin Islands",
               "United States Virgin Islands",
                "Vietnam",
                "Vanuatu",
                 "Wallis and Futuna",
              "Samoa",
                 "Kosovo",
                  "Yemen",
                 "Mayotte",
                 "South Africa",
                 "Zambia",
                 "Zimbabwe"

        ].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)

    var body: some View {
     
        ZStack {
           
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.26, green: 0.75, blue: 0.56), location: 0.3)
            ], center: .bottom, startRadius: 290, endRadius: 205)
                .ignoresSafeArea()
                
           
            
            VStack {
                Spacer()
                Text("Guess the Flag")
                    .padding(.top )
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))

                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                   

                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                               
                        } label: {
                            
                            FlagImage(name: countries[number])
                               
                        }
                       
                    }
                   
                }
                .frame(maxWidth: .infinity )
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                Spacer()
                Spacer()

                Text("Score: \(score)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()

            }
           
            .padding()
           

        
        
    }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
                
        }
}

    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            let needsThe = ["United Arab Emirates", "Caribbean Netherlands", "Bahamas"]
            let theirAnswer = countries[number]
            if needsThe.contains(theirAnswer) {
                scoreTitle = "Wrong! That's the flag of the \(theirAnswer)."
            } else {
                scoreTitle = " Wrong! That's the flag of \(theirAnswer)."
            }
            if score > 0 {
                //score -= 1
            }
        }

        showingScore = true
    }

    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        questionCounter += 1
    }
}

struct FlagsView_Previews: PreviewProvider {
    static var previews: some View {
        FlagsView()
    }
}
