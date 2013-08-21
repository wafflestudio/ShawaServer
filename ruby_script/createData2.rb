a = Lecture.new
a.day = "Monday"
a.period = 3
a.duration = 1.5

b = Lecture.new
b.day = "Wednesday"
b.period = 3
b.duration = 1.5

c1 = Course.new
c1.courseName = "사회심리학"
c1.lectures.push(a)
c1.lectures.push(b)

c1.save
a = Lecture.new
a.day = "Tuesday"
a.period = 1.5
a.duration = 1.5

b = Lecture.new
b.day = "Thursday"
b.period = 1.5
b.duration = 1.5

c2 = Course.new
c2.courseName = "경제학원론"
c2.lectures.push(a)
c2.lectures.push(b)

c2.save
a = Lecture.new
a.day = "Monday"
a.period = 5
a.duration = 1.5

b = Lecture.new
b.day = "Wednesday"
b.period = 5
b.duration = 1.5

c3 = Course.new
c3.courseName = "인문학 글쓰기"
c3.lectures.push(a)
c3.lectures.push(b)

c3.save
a= Lecture.new
a.day = "Tuesday"
a.period = 3
a.duration = 1.5

b = Lecture.new
b.day = "Thursday"
b.period = 3
b.duration = 1.5

c4 = Course.new
c4.courseName = "불교철학"
c4.lectures.push(a)
c4.lectures.push(b)

c4.save
a = Lecture.new
a.day = "Tuesday"
a.period = 7.5
a.duration = 1.5

b = Lecture.new
b.day = "Thursday"
b.period = 7.5
b.duration = 1.5

c5 = Course.new
c5.courseName = "대학국어"
c5.lectures.push(a)
c5.lectures.push(b)

c5.save

i1 = Individual.new
i1.userName = "김 인문"
i1.courses.push(c1)
i1.courses.push(c2)
i1.courses.push(c3)
i1.courses.push(c4)
i1.courses.push(c5)

i1.save

u1 = User.new
u1.device_token = "BD38D7AF-CC57-4F6D-9F40-66A4B9D74AA6"
u1.my_individual_id = i1.id

g1 = Group.new
g1.groupName = i1.userName
g1.groupType = 2
g1.individual_ids = (i1.id).to_s
g1.save

u1.groups.push(g1)
u1.save
