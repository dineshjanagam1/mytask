class StaffMember
  include ActiveModel::Model

  attr_accessor :start_work_hour__c,:start_hour_weekend
  attr_accessor :end_hour__c,:end_weekend

  def initialize(options)
    @start_work_hour__c = options[:start_hour]
    @end_work_hour__c = options[:end_hour]
    @start_work_hour_weekend = options[:weekend_start]
    @end_work_hour_weekend = options[:weekend_end]
  end

  def events; {} end
  def timezone; Time.find_zone("PST8PDT") end
  def start_hour; self.try(:start_work_hour__c) || '10:00' end
  def end_hour; self.try(:end_work_hour__c)   || '19:00' end
  def start_hour_offset; ChronicDuration.parse([start_hour, ':00'].join) end
  def end_hour_offset; ChronicDuration.parse([end_hour, ':00'].join) end
  def weekend_start_hour; self.try(:start_hour_weekend) || '10:00' end
  def weekend_end_hour; self.try(:end_hour_weekend) || '19:00' end

end
