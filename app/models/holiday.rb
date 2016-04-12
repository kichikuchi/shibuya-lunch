class Holiday < ActiveRecord::Base
	include FlagShihTzu

	has_flags 1 => :monday,
						2 => :tuesday,
						3 => :wednesday,
						4 => :thursday,
						5 => :friday,
						6 => :saturday,
						7 => :sunday,
						:column => 'wday'
end
