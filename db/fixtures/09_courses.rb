Course.seed do |course|
  course.id = 1
  course.conference_id = 2
  course.name = 'course.csm.name'
  course.full_name = 'course.csm.full_name'
end

Course.seed do |course|
  course.id = 2
  course.conference_id = 2
  course.name = 'course.cspo.name'
  course.full_name = 'course.cspo.full_name'
end

Course.seed do |course|
  course.id = 3
  course.conference_id = 2
  course.name = 'course.lean.name'
  course.full_name = 'course.lean.full_name'
end

Course.seed do |course|
  course.id = 4
  course.conference_id = 2
  course.name = 'course.tdd.name'
  course.full_name = 'course.tdd.full_name'
end