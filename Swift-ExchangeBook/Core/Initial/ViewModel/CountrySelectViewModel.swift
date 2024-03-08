//
//  CountrySelectViewModel.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 26/02/2024.
//

import Foundation
import SwiftUI

class CountrySelectViewModel: ObservableObject {
    @Published var languages = [
        "Abkhazian", "Afar", "Afrikaans", "Akan", "Albanian", "Amharic", "Arabic", "Aragonese", "Armenian", "Assamese",
        "Avaric", "Avestan", "Aymara", "Azerbaijani", "Bambara", "Bashkir", "Basque", "Belarusian", "Bengali", "Bihari languages",
        "Bislama", "Bosnian", "Breton", "Bulgarian", "Burmese", "Catalan, Valencian", "Central Khmer", "Chamorro", "Chechen",
        "Chichewa, Chewa, Nyanja", "Chinese", "Church Slavonic, Old Bulgarian, Old Church Slavonic", "Chuvash", "Cornish",
        "Corsican", "Cree", "Croatian", "Czech", "Danish", "Divehi, Dhivehi, Maldivian", "Dutch, Flemish", "Dzongkha", "English",
        "Esperanto", "Estonian", "Ewe", "Faroese", "Fijian", "Finnish", "French", "Fulah", "Gaelic, Scottish Gaelic", "Galician",
        "Ganda", "Georgian", "German", "Gikuyu, Kikuyu", "Greek (Modern)", "Greenlandic, Kalaallisut", "Guarani", "Gujarati",
        "Haitian, Haitian Creole", "Hausa", "Hebrew", "Herero", "Hindi", "Hiri Motu", "Hungarian", "Icelandic", "Ido", "Igbo",
        "Indonesian", "Interlingua (International Auxiliary Language Association)", "Interlingue", "Inuktitut", "Inupiaq", "Irish",
        "Italian", "Japanese", "Javanese", "Kannada", "Kanuri", "Kashmiri", "Kazakh", "Kinyarwanda", "Komi", "Kongo", "Korean",
        "Kwanyama, Kuanyama", "Kurdish", "Kyrgyz", "Lao", "Latin", "Latvian", "Letzeburgesch, Luxembourgish", "Limburgish, Limburgan, Limburger",
        "Lingala", "Lithuanian", "Luba-Katanga", "Macedonian", "Malagasy", "Malay", "Malayalam", "Maltese", "Manx", "Maori", "Marathi",
        "Marshallese", "Moldovan, Moldavian, Romanian", "Mongolian", "Nauru", "Navajo, Navaho", "Northern Ndebele", "Ndonga", "Nepali",
        "Northern Sami", "Norwegian", "Norwegian Bokmål", "Norwegian Nynorsk", "Nuosu, Sichuan Yi", "Occitan (post 1500)", "Ojibwa",
        "Oriya", "Oromo", "Ossetian, Ossetic", "Pali", "Panjabi, Punjabi", "Pashto, Pushto", "Persian", "Polish", "Portuguese", "Quechua",
        "Romansh", "Rundi", "Russian", "Samoan", "Sango", "Sanskrit", "Sardinian", "Serbian", "Shona", "Sindhi", "Sinhala, Sinhalese",
        "Slovak", "Slovenian", "Somali", "Sotho, Southern", "South Ndebele", "Spanish, Castilian", "Sundanese", "Swahili", "Swati", "Swedish",
        "Tagalog", "Tahitian", "Tajik", "Tamil", "Tatar", "Telugu", "Thai", "Tibetan", "Tigrinya", "Tonga (Tonga Islands)", "Tsonga", "Tswana",
        "Turkish", "Turkmen", "Twi", "Uighur, Uyghur", "Ukrainian", "Urdu", "Uzbek", "Venda", "Vietnamese", "Volap_k", "Walloon", "Welsh",
        "Western Frisian", "Wolof", "Xhosa", "Yiddish", "Yoruba", "Zhuang, Chuang", "Zulu"
    ]

    @Published var search = ""
    @Published var selectedCountry: String?
    @Published var selectedLanguage: String?

    func selectCountry(_ country: String) {
        selectedCountry = country
    }
    
    func selectLanguage(_ language : String) {
        selectedLanguage = language
    }
    
    func selectSearch(_ search : String) {
        self.search = search
    }
}
