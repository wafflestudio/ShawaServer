a = Lecture.new
a.day = "Monday"
a.period = 1
a.duration = 1.5

b = Lecture.new
b.day = "Wednesday"
b.period = 1
b.duration = 1.5

c1 = Course.new
c1.courseName = "시스템프로그래밍"
c1.lectures.push(a)
c1.lectures.push(b)

c1.save
a = Lecture.new
a.day = "Tuesday"
a.period = 1
a.duration = 1.5

b = Lecture.new
b.day = "Thursday"
b.period = 1
b.duration = 1.5

c1 = Course.new
c1.courseName = "산업조직론"
c1.lectures.push(a)
c1.lectures.push(b)

c1.save
a = Lecture.new
a.day = "Monday"
a.period = 8
a.duration = 3

b = Lecture.new
b.day = "Wednesday"
b.period = 8
b.duration = 3

c1 = Course.new
c1.courseName = "논리설계실험"
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
c1.courseName = "논리설계"
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
c1.courseName = "게임이론 및 정치"
c1.lectures.push(a)
c1.lectures.push(b)

c1.save

i1 = Individual.new
i1.userName = "홍 길동"
i1.courses.push(Course.all[0])
i1.courses.push(Course.all[1])
i1.courses.push(Course.all[2])
i1.courses.push(Course.all[3])
i1.courses.push(Course.all[4])

g1 = Group.new
g1.groupName = i1.userName
g1.save

