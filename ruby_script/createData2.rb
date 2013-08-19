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

c1 = Course.new
c1.courseName = "경제학원론"
c1.lectures.push(a)
c1.lectures.push(b)

c1.save
a = Lecture.new
a.day = "Monday"
a.period = 5
a.duration = 1.5

b = Lecture.new
b.day = "Wednesday"
b.period = 5
b.duration = 1.5

c1 = Course.new
c1.courseName = "인문학 글쓰기"
c1.lectures.push(a)
c1.lectures.push(b)

c1.save
a= Lecture.new
a.day = "Tuesday"
a.period = 3
a.duration = 1.5

b = Lecture.new
b.day = "Thursday"
b.period = 3
b.duration = 1.5

c1 = Course.new
c1.courseName = "불교철학"
c1.lectures.push(a)
c1.lectures.push(b)

c1.save
a = Lecture.new
a.day = "Tuesday"
a.period = 7.5
a.duration = 1.5

b = Lecture.new
b.day = "Thusday"
b.period = 7.5
b.duration = 1.5

c1 = Course.new
c1.courseName = "대학국어"
c1.lectures.push(a)
c1.lectures.push(b)

c1.save

i1 = Individual.new
i1.userName = "김 인문"
i1.courses.push(Course.all[5])
i1.courses.push(Course.all[6])
i1.courses.push(Course.all[7])
i1.courses.push(Course.all[8])
i1.courses.push(Course.all[9])

i1.save

g1 = Group.new
g1.groupName = i1.userName
g1.individuals.push(i1)
g1.save

