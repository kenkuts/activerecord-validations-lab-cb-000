class Post < ActiveRecord::Base
<<<<<<< HEAD
    
=======
    validate :is_clickbait?
>>>>>>> 7099f5e16b1ade6971d1e8fc958a302a24fe49e5
    validates :title, presence: true
    validates :content, length: { in: 250..500}
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w( Fiction Non-Fiction )}
<<<<<<< HEAD
    validate :is_clickbait?

    private

    def is_clickbait?
        click_bait = [
          /Won't Believe/i,
          /Secret/i,
          /Top [0-9]*/i,
          /Guess/i
        ]

        if click_bait.none? { |phrase| phrase.match title }
            errors.add(:title, "must be clickbait!")
        end
    end
=======
>>>>>>> 7099f5e16b1ade6971d1e8fc958a302a24fe49e5
end
