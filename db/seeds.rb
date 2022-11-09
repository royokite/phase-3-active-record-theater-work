Audition.destroy_all
Role.destroy_all

audition1 = Audition.create(
            actor: "Chad",
            location: "Nai",
            phone: 105,
            hired: 0,
            role_id: 1
)

audition2 = Audition.create(
            actor: "Leslie",
            location: "Msa",
            phone: 206,
            hired: 1,
            role_id: 1
)

audition3 = Audition.create(
            actor: "Bot",
            location: "Ksm",
            phone: 125,
            hired: 1,
            role_id: 2
)

role1 = Role.create(character_name: "Ice Dude")
role2 = Role.create(character_name: "Magma Brat")
