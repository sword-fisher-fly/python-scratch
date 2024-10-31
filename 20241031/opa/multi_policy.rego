package policy

import future.keywords.in

resource_allow {
    input.functions[_] == 10408
    input.user.platform == 1
    startswith_in(input.request.path_code, ["/0/2/"])
    data.devicetypes.status != -1
}

resource_allow {
    input.functions[_] == 10109
    input.user.platform == 1
    data.users.tenant_id in input.user.operate_tenant_ids
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10501
    input.user.platform == 1
    startswith_in(input.request.type_path_code, ["/0/3/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10502
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/3/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10503
    input.user.platform == 1
    input.request.info.device_type.value in [3, 32, 36, 37]
    object.get(input.request.info, ["tenant_id","value"], input.user.tenant_id) == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10504
    input.user.platform == 1
    input.request.info.device_type.value in [3, 32, 36, 37]
    startswith_in(data.devices.type_path_code, ["/0/3/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10505
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/3/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10506
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/3/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10550
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/3/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10403
    input.user.platform == 1
    input.request.info.device_type.value in [2, 21, 22, 23, 24, 25]
    object.get(input.request.info, ["tenant_id","value"], input.user.tenant_id) in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10404
    input.user.platform == 1
    input.request.info.device_type.value in [2, 21, 22, 23, 24, 25]
    startswith_in(data.devices.type_path_code, ["/0/2/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10405
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/2/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10406
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/2/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10407
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/2/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10409
    input.user.platform == 1
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/2/"])}
    count(wrong_types) == 0
    operate_tenant_ids := input.user.operate_tenant_ids
    wrong_tenant := {device | device := data.devices[_]; not device.tenant_id in operate_tenant_ids}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[_] == 10450
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/2/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10451
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/2/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10301
    input.user.platform == 1
    startswith_in(input.request.type_path_code,["/0/1/12/","/0/1/13/","/0/1/15/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10302
    input.user.platform == 1
    startswith_in(data.devices.type_path_code,["/0/1/12/","/0/1/13/","/0/1/15/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10303
    input.user.platform == 1
    input.request.info.device_type.value in [12, 13]
    object.get(input.request.info, ["tenant_id","value"], input.user.tenant_id) == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10304
    input.user.platform == 1
    input.request.info.device_type.value in [12, 13]
    startswith_in(data.devices.type_path_code, ["/0/1/12/","/0/1/13/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10305
    input.user.platform == 1
    startswith_in(data.devices.type_path_code,["/0/1/12/","/0/1/13/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10306
    input.user.platform == 1
    startswith_in(data.devices.type_path_code,["/0/1/12/","/0/1/13/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10307
    input.user.platform == 1
    startswith_in(data.devices.type_path_code,["/0/1/12/","/0/1/13/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10308
    input.user.platform == 1
    startswith_in(input.request.path_code,["/0/1/12/","/0/1/13/","/0/1/15/"])
    data.devicetypes.status != -1
}

resource_allow {
    input.functions[_] == 10309
    input.user.platform == 1
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/12/","/0/1/13/","/0/3/","/0/1/15/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[_] == 10350
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/12/","/0/1/13/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10351
    input.user.platform == 1
    startswith_in(input.request.type_path_code.value, ["/0/1/12/","/0/1/13/","/0/1/15/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10352
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/12/","/0/1/13/","/0/1/15/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10353
    input.user.platform == 1
    startswith_in(data.devices.type_path_code,["/0/1/12/","/0/1/13/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 11109
    input.user.platform == 1
    object.get(input.request.info, "tenant_id", input.user.tenant_id) in input.user.operate_tenant_ids
}

resource_allow {
    input.functions[_] == 11110
    input.user.platform == 1
    object.get(input.request, "tenant_id", input.user.tenant_id) in input.user.operate_tenant_ids
    data.tags.tenant_id in input.user.operate_tenant_ids
}

resource_allow {
    input.functions[_] == 10201
    input.user.platform == 1
    input.request.platform == 1
    data.roles.tenant_id == input.user.tenant_id
    data.roles.status != -1
}

resource_allow {
    input.functions[_] == 10202
    input.user.platform == 1
    data.roles.platform == 1
    data.roles.tenant_id == input.user.tenant_id
    data.roles.status != -1
}

resource_allow {
    input.functions[_] == 10204
    input.user.platform == 1
    data.roles.platform == 1
    data.roles.tenant_id == input.user.tenant_id
    data.roles.is_default == 0
    data.roles.status != -1
}

resource_allow {
    input.functions[_] == 10205
    input.user.platform == 1
    data.roles.platform == 1
    data.roles.tenant_id == input.user.tenant_id
    data.roles.is_default == 0
    data.roles.status != -1
}

resource_allow {
    input.functions[_] == 10206
    input.user.platform == 1
    data.roles.platform == 1
    data.roles.tenant_id in input.user.operate_tenant_ids
    data.roles.status != -1
}

resource_allow {
    input.functions[_] == 10207
    input.user.platform == 1
    data.roles.platform == 1
    data.roles.tenant_id in input.user.operate_tenant_ids
    data.roles.status != -1
}

resource_allow {
    input.functions[_] == 142006
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[_] == 10901
    input.user.platform == 1
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[_] == 10908
    input.user.platform == 1
    object.get(input.request, "tenant_id", input.user.tenant_id) in input.user.operate_tenant_ids
    data.tags.status != -1
    data.tags.tenant_id in input.user.operate_tenant_ids
}

resource_allow {
    input.functions[_] == 10909
    input.user.platform == 1
    object.get(input.request.info, "tenant_id", input.user.tenant_id) in input.user.operate_tenant_ids
}

resource_allow {
    input.functions[_] == 10950
    input.user.platform == 1
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[_] == 12201
    input.user.platform == 1
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[_] == 12301
    input.user.platform == 1
    startswith_in(input.request.type_path_code,["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 12302
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 12303
    input.user.platform == 1
    input.request.info.device_type.value in [14]
    object.get(input.request.info, ["tenant_id","value"], input.user.tenant_id) in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 12304
    input.user.platform == 1
    input.request.info.device_type.value in [14]
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 12305
    input.user.platform == 1
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 12306
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 12307
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 12308
    input.user.platform == 1
    startswith_in(input.request.type_path_code,["/0/1/14/"])
    data.devicetypes.status != -1
}

resource_allow {
    input.functions[_] == 12309
    input.user.platform == 1
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/14/"])}
    count(wrong_types) == 0
    operate_tenant_ids := input.user.operate_tenant_ids
    wrong_tenant := {device | device := data.devices[_]; not device.tenant_id in operate_tenant_ids}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[_] == 12350
    input.user.platform == 1
    startswith_in(input.request.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 12351
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 12352
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 12353
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 11901
    input.user.platform == 1
    data.tenants.status != -1
    data.tenants.id in input.user.operate_tenant_ids
}

resource_allow {
    input.functions[_] == 11903
    input.user.platform == 1
    data.tenants.status != -1
    data.tenants.id in input.user.operate_tenant_ids
}

resource_allow {
    input.functions[_] == 11905
    input.user.platform == 1
    data.tenants.status != -1
    data.tenants.id in input.user.operate_tenant_ids
}

resource_allow {
    input.functions[_] == 10104
    input.user.platform == 1
    input.request.platform == 1
}

resource_allow {
    input.functions[_] == 10101
    input.user.platform == 1
    input.request.platform == 1
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10105
    input.user.platform == 1
    input.request.platform == 1
    input.request.login_id != input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10106
    input.user.platform == 1
    input.request.platform == 1
    input.request.login_id != input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
    data.users.tenant_owner_id != input.request.login_id
}

resource_allow {
    input.functions[_] == 10107
    input.user.platform == 1
    input.request.platform == 1
    input.request.login_id != input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
    data.users.tenant_owner_id != input.request.login_id
}

resource_allow {
    input.functions[_] == 10108
    input.user.platform == 1
    input.request.platform == 1
    input.request.login_id != input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
    data.users.tenant_owner_id != input.request.login_id
}

resource_allow {
    input.functions[_] == 10110
    input.user.platform == 1
    data.users.tenant_id in input.user.operate_tenant_ids
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10150
    input.user.platform == 1
    input.request.platform == 1
    input.request.login_id != input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
    data.users.tenant_owner_id != input.request.login_id
}

resource_allow {
    input.functions[_] == 10151
    input.user.platform == 1
    input.request.platform == 1
    input.request.login_id != input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
    data.users.tenant_owner_id != input.request.login_id
}

resource_allow {
    input.functions[_] == 10701
    input.user.platform == 1
    input.request.platform == 3
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10702
    input.user.platform == 1
    input.request.platform == 3
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10703
    input.user.platform == 1
    input.request.platform == 3
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10704
    input.user.platform == 1
    input.request.platform == 3
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10705
    input.user.platform == 1
    input.request.platform == 3
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10750
    input.user.platform == 1
    input.request.platform == 3
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10801
    input.user.platform == 1
    input.request.platform == 2
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10802
    input.user.platform == 1
    input.request.platform == 2
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10803
    input.user.platform == 1
    input.request.platform == 2
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10805
    input.user.platform == 1
    input.request.platform == 2
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10806
    input.user.platform == 1
    input.request.platform == 2
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10807
    input.user.platform == 1
    input.request.platform == 2
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10102
    input.user.platform == 1
    input.request.platform == 1
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10103
    input.user.platform == 1
    input.request.platform == 1
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10808
    input.user.platform == 1
    input.request.platform == 2
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10850
    input.user.platform == 1
    input.request.platform == 2
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 11902
    input.user.platform == 1
    data.tenants.status != -1
    data.tenants.id in input.user.operate_tenant_ids
}

resource_allow {
    input.functions[_] == 11904
    input.user.platform == 1
}

resource_allow {
    input.functions[_] == 10851
    input.user.platform == 1
    input.request.platform == 2
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10853
    input.user.platform == 1
    input.request.platform == 2
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 11501
    input.user.platform == 1
    input.request.platform == 1
    input.request.login_id == input.user.login_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 11502
    input.user.platform == 1
    input.request.platform == 1
    input.request.login_id == input.user.login_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 11503
    input.user.platform == 1
    input.request.platform == 1
    input.request.login_id == input.user.login_id
    data.users.role_id == input.request.info.Info.AdminUser.role_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 11506
    input.request.id == 0
    input.user.platform == 1
    data.roles.platform == 1
    data.roles.tenant_id == input.user.tenant_id
    data.roles.status != -1
}

resource_allow {
    input.functions[_] == 12001
    input.user.platform == 1
    input.request.platform == 4
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 12002
    input.user.platform == 1
    input.request.platform == 4
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 12003
    input.user.platform == 1
    input.request.platform == 4
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 12004
    input.user.platform == 1
    input.request.platform == 4
}

resource_allow {
    input.functions[_] == 12006
    input.user.platform == 1
    input.request.platform == 4
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 12007
    input.user.platform == 1
    input.request.platform == 4
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 12008
    input.user.platform == 1
    input.request.platform == 4
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 12005
    input.user.platform == 1
    input.request.platform == 4
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10000501
    input.user.platform == 1
}

resource_allow {
    input.functions[_] == 10000502
    input.user.platform == 1
    data.tags.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[_] == 10000201
    input.user.platform == 1
    input.request.platform == 1
    data.roles.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[_] == 10000202
    input.user.platform == 1
    data.roles.platform == 1
    data.roles.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[_] == 10000203
    input.user.platform == 1
    input.request.platform == 1
}

resource_allow {
    input.functions[_] == 10000204
    input.user.platform == 1
    data.roles.platform == 1
    data.roles.tenant_id == input.user.tenant_id
    data.roles.status != -1
}

resource_allow {
    input.functions[_] == 10000205
    input.user.platform == 1
    data.roles.platform == 1
    data.roles.tenant_id == input.user.tenant_id
    data.roles.is_default == 0
    data.roles.status != -1
}

resource_allow {
    input.functions[_] == 10000206
    input.user.platform == 1
    data.roles.platform in [1, 1000]
    data.roles.status != -1
}

resource_allow {
    input.functions[_] == 10000207
    input.user.platform == 1
    data.roles.platform in [1, 1000]
    data.roles.status != -1
}

resource_allow {
    input.functions[_] == 10000601
    input.user.platform == 1
    data.tags.status != -1
    data.tags.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[_] == 10000602
    input.user.platform == 1
}

resource_allow {
    input.functions[_] == 142005
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[_] == 10000105
    input.user.platform == 1
    data.tenants.status != -1
}

resource_allow {
    input.functions[_] == 10000150
    input.user.platform == 1
}

resource_allow {
    input.functions[_] == 10000301
    input.user.platform == 1
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10000302
    input.user.platform == 1
    data.users.status != -1
}

resource_allow {
    input.functions[_] == 10551
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/3/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10401
    input.user.platform == 1
    startswith_in(input.request.type_path_code, ["/0/2/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10402
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/2/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10507
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/3/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[_] == 10508
    input.user.platform == 1
    startswith_in(input.request.path_code, ["/0/3/"])
    data.devicetypes.status != -1
}

resource_allow {
    input.functions[_] == 10509
    input.user.platform == 1
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/3/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[_] == 10000101
    input.user.platform == 1
    data.tenants.status != -1
}

resource_allow {
    input.functions[_] == 10000102
    input.user.platform == 1
    data.tenants.status != -1
}

resource_allow {
    input.functions[_] == 10000103
    input.user.platform == 1
    data.tenants.status != -1
}

resource_allow {
    input.functions[_] == 10000104
    input.user.platform == 1
}

resource_allow {
    input.functions[_] == 10203
    input.user.platform == 1
    input.request.info.platform == 1
}

resource_allow {
    input.functions[_] == 12250
    input.user.platform == 1
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[_] == 10804
    input.user.platform == 1
    input.request.platform == 2
}

resource_allow {
    input.functions[_] == 11950
    input.user.platform == 1
}

resource_allow {
    input.functions[_] == 10852
    input.user.platform == 1
    input.request.platform == 2
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

