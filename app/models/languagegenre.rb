class Languagegenre < ApplicationRecord

  enum language_genre: {
    自然言語: 0,
    コンピュータ言語: 1,
  }
end

