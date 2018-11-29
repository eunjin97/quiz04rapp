class Song < ApplicationRecord
    mount_uploader :cover, CoverUploader 
    acts_as_followable
    acts_as_follower
    acts_as_commentable
    has_many :participates
    has_many :artists, through: :participates, source: :artist
    
    validates :title, presence: true
    validates :lyric, length: {minimum:10}
    validate :cover_size 
    
    private    
    def cover_size
       if self.cover.size > 5.megabyte
        errors.add(:cover,'는 5mb보다 작아야 합니다.')
       end
    end
end
