# README

schedule = StaffMemberSchedule.new(since: 1.day.from_now, till: 2.days.from_now, staff_member: StaffMember.new, duration: 45.minutes);
schedule.openings

Running the code above in the console will return chunks of 45 min intervals from to date
starting from 10 till 19

1. Extend the code to support configurable different opening hours for per staff member
2. Allow support for different hours in the weekend


schedule = StaffMemberSchedule.new(since: 1.day.from_now, till: 2.days.from_now, staff_member: StaffMember.new({start_hour: '14:00',end_hour: '18:00',weekend_start: '14:00',weekend_end: '18:00'}), duration: 45.minutes); schedule.openings
