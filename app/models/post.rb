class Post < ApplicationRecord

	enum learning_genre: {
	    Vocabulary: 0,
	    Syntax: 1,
	    Practice: 2,
	    Others: 3
  	}

	belongs_to :languagename
	belongs_to :member

	acts_as_paranoid
end
