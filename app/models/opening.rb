class Opening < ActiveRecord::Base
    belongs_to :supervisor
    validates :supervisor_id, presence: true
    validates :position, presence: true
    validates :replacing, presence: true
    validates :shift, presence: true
    validates :schedule, presence: true
    validates :status, presence: true
    validates :emp, presence: true
    validates :reason, presence: true
    validates :action, presence: true
    validates :dept, presence: true
end
