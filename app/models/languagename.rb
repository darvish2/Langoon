class Languagename < ApplicationRecord

	has_many :posts

	enum language_name: {
		japanese: 0,
		english: 1,
		french: 2,
		chinese: 3,
		spanish: 4,
		russian: 5,
		arabic: 6,
		german: 7,
		italian: 8,
		indonesian: 9,
		malay: 10,
		vietnamese: 11,
		swedish: 12,
		hebrew: 13,
		portuguese: 14,
		esperanto: 15,
		vendergood: 16,
		latin: 17,
		greek: 18,
		ainu: 19,
		korean: 20,
		hawaiian: 21,
		turkish: 22,
		dutch: 23,
		ancient_japanese: 24,
		html: 25,
		css: 26,
		ruby: 27,
		javascript: 28,
		php: 29,
		sql: 30,
		go: 31,
		kotlin: 32,
		java: 33,
		python: 34,
		swift: 35,
		sign_language: 36,
		braille: 37,
		newspeak: 38,
		ancient_greek: 39,
		ancient_latin: 40,
		ryukyu: 41,
		maori: 42,
		luxemburgisch: 43,
		bengali: 44,
		sansklit: 45,
		hieroglyph: 46,
		swahili: 47,
		c: 48,
        c_sharp: 49,
        c_plusplus: 50

    }





end






