class Languagename < ApplicationRecord

has_many :posts

enum language_name: {
	japanese: 0,
	english: 1,
	french: 2,
	chinese: 3
}





end






