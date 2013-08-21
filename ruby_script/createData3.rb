u1 = User.new
u1.groups.push(Group.all[0])
u1.groups.push(Group.all[1])
u1.device_token = "7ac09533bc45ae07111e28e0ddfb92ecc157f51c"
u1.my_group_id = 0
u1.save
