class Waitlist < ApplicationRecord
	validates :email , :presence => true;
end
