package policy

import future.keywords.in

resource_allow {
    input.functions[0] == 12501
    input.user.platform == 1
    data.mobile_urls.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11801
    input.user.platform == 1
    data.tasks.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12704
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12705
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 11802
    input.user.platform == 1
    data.tasks.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 10912
}

resource_allow {
    input.functions[0] == 30003
    input.request.platform == 3
}

resource_allow {
    input.functions[0] == 20010
}

resource_allow {
    input.functions[0] == 31101
}

resource_allow {
    input.functions[0] == 11403
    input.user.platform == 1
    data.videos.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12401
    input.user.platform == 1
    operate_tenant_ids := input.user.operate_tenant_ids
    wrong_tenant := {tenant_id | tenant_id := input.request.tenant_ids[_]; not tenant_id in operate_tenant_ids}
    count(wrong_tenant) == 0
}

resource_allow {
    input.functions[0] == 12402
    input.user.platform == 1
    operate_tenant_ids := input.user.operate_tenant_ids
    wrong_tenant := {tenant_id | tenant_id := input.request.tenant_ids[_]; not tenant_id in operate_tenant_ids}
    count(wrong_tenant) == 0
}

resource_allow {
    input.functions[0] == 12404
    input.user.platform == 1
    data.events.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 161003
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161004
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 10510
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/3/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 10511
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/3/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 10310
    input.user.platform == 1
    startswith_in(data.missions.type_path_code, ["/0/1/12/","/0/1/13/"])
    data.missions.tenant_id == input.user.tenant_id
    data.missions.device_status != -1
}

resource_allow {
    input.functions[0] == 10311
    input.user.platform == 1
    data.sites.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 10313
    input.user.platform == 1
    data.sites.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 10314
    input.user.platform == 1
    startswith_in(data.missions.type_path_code, ["/0/1/12/","/0/1/13/","/0/1/15/","/0/1/99/"])
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 10354
    input.user.platform == 1
    startswith_in(data.devices.type_path_code,["/0/1/12/","/0/1/13/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 10355
    input.user.platform == 1
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/12/","/0/1/13/","/0/3/","/0/1/15/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 10356
    input.user.platform in [1]
}

resource_allow {
    input.functions[0] == 10357
    input.user.platform in [1]
}

resource_allow {
    input.functions[0] == 10358
    input.user.platform in [1]
}

resource_allow {
    input.functions[0] == 10359
    input.user.platform in [1]
}

resource_allow {
    input.functions[0] == 10360
    input.user.platform in [1]
}

resource_allow {
    input.functions[0] == 10361
    input.user.platform in [1]
}

resource_allow {
    input.functions[0] == 13001
    input.user.platform == 1
    data.feedbacks.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 13002
    input.user.platform == 1
    data.feedbacks.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 13003
    input.user.platform == 1
    data.feedbacks.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 13004
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 13005
    input.user.platform == 1
    data.feedbacks.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 13006
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 10602
    input.user.platform == 1
    data.junctions.tenant_id == input.user.tenant_id
    data.junctions.status != -1
}

resource_allow {
    input.functions[0] == 10604
    input.user.platform == 1
    data.junctions.tenant_id == input.user.tenant_id
    data.junctions.status != -1
}

resource_allow {
    input.functions[0] == 10605
    input.user.platform == 1
    data.junctions.tenant_id == input.user.tenant_id
    data.junctions.status != -1
}

resource_allow {
    input.functions[0] == 12405
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12502
    input.user.platform == 1
    data.mobile_urls.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12503
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 11101
    input.user.platform == 1
    data.orders.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11102
    input.user.platform == 1
    data.orders.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11103
    input.user.platform == 1
    data.orders.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11104
    input.user.platform == 1
    data.orders.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11105
    input.user.platform == 1
    data.orders.tenant_id == input.user.tenant_id
    data.orders.status != -1
}

resource_allow {
    input.functions[0] == 11106
    input.user.platform == 1
    data.orders.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11107
    input.user.platform == 1
    data.orders.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11804
    input.user.platform == 1
    data.tasks.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11001
    input.user.platform == 1
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 11002
    input.user.platform == 1
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 11003
    input.user.platform == 1
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 11004
    input.user.platform == 1
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
}

resource_allow {
    input.functions[0] == 11005
    input.user.platform == 1
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
}

resource_allow {
    input.functions[0] == 11006
    input.user.platform == 1
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
}

resource_allow {
    input.functions[0] == 11007
    input.user.platform == 1
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
}

resource_allow {
    input.functions[0] == 11008
    input.user.platform == 1
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
}

resource_allow {
    input.functions[0] == 11009
    input.user.platform == 1
    data.routes.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11010
    input.user.platform == 1
    data.routes.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12701
    input.user.platform == 1
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 12702
    input.user.platform == 1
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 12703
    input.user.platform == 1
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
}

resource_allow {
    input.functions[0] == 10902
    input.user.platform == 1
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 10903
    input.user.platform == 1
    data.schedules.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 10904
    input.user.platform == 1
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 10905
    input.user.platform == 1
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 10906
    input.user.platform == 1
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 10907
    input.user.platform == 1
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 10910
    input.user.platform == 1
    data.schedules.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11601
    input.user.platform == 1
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status != -1
    data.sites.route_status != -1
}

resource_allow {
    input.functions[0] == 11602
    input.user.platform == 1
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status != -1
    data.sites.route_status != -1
}

resource_allow {
    input.functions[0] == 11604
    input.user.platform == 1
    input.request.info.type in [3, 4]
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status != -1
}

resource_allow {
    input.functions[0] == 11606
    input.user.platform == 1
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status != -1
    data.sites.route_status != -1
}

resource_allow {
    input.functions[0] == 12902
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12903
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12905
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12906
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12907
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12908
    input.user.platform == 1
    data.statistics.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12909
    input.user.platform == 1
    data.statistics.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12910
    input.user.platform == 1
    data.statistics.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12911
    input.user.platform == 1
    data.statistics.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12912
    input.user.platform == 1
    data.statistics.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12913
    input.user.platform == 1
    data.statistics.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12914
    input.user.platform == 1
    data.statistics.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12601
    input.user.platform == 1
    data.faults.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12602
    input.user.platform == 1
    data.faults.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12603
    input.user.platform == 1
    data.faults.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12604
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12605
    input.user.platform == 1
    data.faults.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12650
    input.user.platform == 1
    data.faults.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12101
    input.user.platform == 1
    data.maps.tenant_id == input.user.tenant_id
    data.maps.status != -1
}

resource_allow {
    input.functions[0] == 12102
    input.user.platform == 1
    data.maps.tenant_id == input.user.tenant_id
    data.maps.status != -1
}

resource_allow {
    input.functions[0] == 12104
    input.user.platform == 1
    data.maps.tenant_id == input.user.tenant_id
    data.maps.status != -1
}

resource_allow {
    input.functions[0] == 12105
    input.user.platform == 1
    data.maps.tenant_id == input.user.tenant_id
    data.maps.status != -1
}

resource_allow {
    input.functions[0] == 12106
    input.user.platform == 1
    data.maps.tenant_id == input.user.tenant_id
    data.maps.status != -1
}

resource_allow {
    input.functions[0] == 12107
    input.user.platform == 1
    data.maps.tenant_id == input.user.tenant_id
    data.maps.status != -1
}

resource_allow {
    input.functions[0] == 12108
    input.user.platform == 1
    data.maps.tenant_id == input.user.tenant_id
    data.maps.status != -1
}

resource_allow {
    input.functions[0] == 12202
    input.user.platform == 1
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 12203
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12204
    input.user.platform == 1
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 11108
    input.user.platform == 1
    data.orders.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11803
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12205
    input.user.platform == 1
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 12206
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12207
    input.user.platform == 1
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 12208
    input.user.platform == 1
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 12209
    input.user.platform == 1
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 12210
    input.user.platform == 1
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 12211
    input.user.platform == 1
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 12212
    input.user.platform == 1
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 10601
    input.user.platform == 1
    data.junctions.tenant_id == input.user.tenant_id
    data.junctions.status != -1
}

resource_allow {
    input.functions[0] == 10603
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12312
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 12313
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 12314
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 12315
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 12316
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 12317
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 12318
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 12319
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 11701
    input.user.platform == 1
    data.decisions.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12904
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 11605
    input.user.platform == 1
    input.request.info.type in [3, 4]
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status != -1
    data.sites.route_status != -1
}

resource_allow {
    input.functions[0] == 12109
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 169006
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 12310
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 12311
    input.user.platform == 1
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 10001
    input.request.platform == 1
}

resource_allow {
    input.functions[0] == 10002
    input.request.platform == 1
}

resource_allow {
    input.functions[0] == 10010
}

resource_allow {
    input.functions[0] == 11201
    input.user.platform == 1
    data.orders.tenant_id == input.user.tenant_id
    data.orders.status != -1
}

resource_allow {
    input.functions[0] == 11301
    input.user.platform == 1
    object.get(input.request, "tenant_id", input.user.tenant_id) in input.user.operate_tenant_ids
    data.screens.tenant_id in input.user.operate_tenant_ids
}

resource_allow {
    input.functions[0] == 11303
    input.user.platform == 1
    object.get(input.request.info, "tenant_id", input.user.tenant_id) in input.user.operate_tenant_ids
}

resource_allow {
    input.functions[0] == 11401
    input.user.platform == 1
    data.videos.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11402
    input.user.platform == 1
    data.videos.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12403
    input.user.platform == 1
    data.events.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 11504
    input.user.platform == 1
    input.request.login_id == input.user.login_id
    data.users.id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status != -1
}

resource_allow {
    input.functions[0] == 11505
    input.user.platform == 1
    input.request.platform == 1
    input.request.login_id == input.user.login_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 12804
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 20701
    input.user.platform == 2
}

resource_allow {
    input.functions[0] == 12801
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12802
    input.user.platform == 1
    data.messages.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 12803
    input.user.platform == 1
    data.messages.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 20702
    input.user.platform == 2
    data.decisions.tenant_id == input.user.tenant_id
    data.decisions.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 20703
    input.user.platform == 2
}

resource_allow {
    input.functions[0] == 20501
    input.user.platform == 2
    startswith_in(input.request.type_path_code, ["/0/1/12/","/0/1/13/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status == 1
}

resource_allow {
    input.functions[0] == 20502
    input.user.platform == 2
    startswith_in(data.devices.type_path_code,["/0/1/12/","/0/1/13/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status == 1
}

resource_allow {
    input.functions[0] == 20503
    input.user.platform == 2
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/12/","/0/1/13/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 20504
    input.user.platform == 2
    startswith_in(data.missions.type_path_code, ["/0/1/12/","/0/1/13/"])
    data.missions.tenant_id == input.user.tenant_id
    data.missions.device_status == 1
}

resource_allow {
    input.functions[0] == 20505
    input.user.platform == 2
}

resource_allow {
    input.functions[0] == 20506
    input.user.platform == 2
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/12/","/0/1/13/","/0/3/","/0/1/15/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 20001
    input.request.platform == 2
}

resource_allow {
    input.functions[0] == 20002
    input.request.platform == 2
}

resource_allow {
    input.functions[0] == 20003
    input.request.platform == 2
}

resource_allow {
    input.functions[0] == 20201
    input.user.platform == 2
    input.request.inbox_id == input.user.login_id
    data.messages.status != -1
}

resource_allow {
    input.functions[0] == 20202
    input.user.platform == 2
    input.request.inbox_id == input.user.login_id
}

resource_allow {
    input.functions[0] == 20203
    input.user.platform == 2
    data.messages.status != -1
}

resource_allow {
    input.functions[0] == 20401
    input.user.platform == 2
    data.orders.tenant_id == input.user.tenant_id
    data.orders.driver_id == input.user.login_id
}

resource_allow {
    input.functions[0] == 20402
    input.user.platform == 2
    data.orders.tenant_id == input.user.tenant_id
    data.orders.driver_id == input.user.login_id
}

resource_allow {
    input.functions[0] == 20403
    input.user.platform == 2
    data.orders.tenant_id == input.user.tenant_id
    data.orders.driver_id == input.user.login_id
}

resource_allow {
    input.functions[0] == 20404
    input.user.platform == 2
    data.orders.tenant_id == input.user.tenant_id
    data.orders.driver_id == input.user.login_id
}

resource_allow {
    input.functions[0] == 20405
    input.user.platform == 2
    data.orders.tenant_id == input.user.tenant_id
    data.orders.driver_id == input.user.login_id
}

resource_allow {
    input.functions[0] == 20406
    input.user.platform == 2
    data.orders.tenant_id == input.user.tenant_id
    data.orders.driver_id == input.user.login_id
}

resource_allow {
    input.functions[0] == 20407
    input.user.platform == 2
    data.orders.tenant_id == input.user.tenant_id
    data.orders.driver_id == input.user.login_id
}

resource_allow {
    input.functions[0] == 20408
    input.user.platform == 2
    data.orders.tenant_id == input.user.tenant_id
    data.orders.driver_id == input.user.login_id
}

resource_allow {
    input.functions[0] == 20301
    input.user.platform == 2
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status == 1
    data.routes.site_status == 1
}

resource_allow {
    input.functions[0] == 20302
    input.user.platform == 2
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status == 1
    data.routes.site_status == 1
}

resource_allow {
    input.functions[0] == 20303
    input.user.platform == 2
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status == 1
    data.sites.route_status == 1
}

resource_allow {
    input.functions[0] == 20304
    input.user.platform == 2
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status == 1
    data.sites.route_status == 1
}

resource_allow {
    input.functions[0] == 20305
    input.user.platform == 2
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status == 1
    data.sites.route_status == 1
}

resource_allow {
    input.functions[0] == 20601
    input.user.platform == 2
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.driver_id == input.user.login_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 20602
    input.user.platform == 2
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.driver_id == input.user.login_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 20603
    input.user.platform == 2
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.driver_id == input.user.login_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 20604
    input.user.platform == 2
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.driver_id == input.user.login_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 20605
    input.user.platform == 2
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.driver_id == input.user.login_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 20606
    input.user.platform == 2
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.driver_id == input.user.login_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 31202
}

resource_allow {
    input.functions[0] == 20607
    input.user.platform == 2
    data.tags.status != -1
    data.tags.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 20608
    input.user.platform == 2
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.driver_id == input.user.login_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 20101
    input.user.platform == 2
    input.request.platform == 2
    input.request.login_id == input.user.login_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 20102
    input.user.platform == 2
    input.request.platform == 2
    input.request.login_id == input.user.login_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 20103
    input.user.platform == 2
    input.request.platform == 2
    input.request.login_id == input.user.login_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 30601
    input.user.platform == 3
    input.request.login_id == input.user.login_id
    data.licenses.platform == 3
}

resource_allow {
    input.functions[0] == 30602
    input.user.platform == 3
    input.request.login_id == input.user.login_id
    data.licenses.platform == 3
}

resource_allow {
    input.functions[0] == 30603
    input.request.platform == 3
    data.licenses.platform == 3
}

resource_allow {
    input.functions[0] == 31001
    input.user.platform == 3
}

resource_allow {
    input.functions[0] == 31002
    input.user.platform == 3
}

resource_allow {
    input.functions[0] == 31003
    input.user.platform == 3
}

resource_allow {
    input.functions[0] == 31004
    input.user.platform == 3
}

resource_allow {
    input.functions[0] == 31005
    input.user.platform == 3
}

resource_allow {
    input.functions[0] == 30501
    input.user.platform == 3
    startswith_in(input.request.type_path_code, ["/0/1/12/","/0/1/13/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status == 1
}

resource_allow {
    input.functions[0] == 30502
    input.user.platform == 3
    startswith_in(data.devices.type_path_code, ["/0/1/12/","/0/1/13/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status == 1
}

resource_allow {
    input.functions[0] == 31301
    input.user.platform == 3
}

resource_allow {
    input.functions[0] == 31305
}

resource_allow {
    input.functions[0] == 30010
}

resource_allow {
    input.functions[0] == 30020
    input.request.platform == 3
}

resource_allow {
    input.functions[0] == 30021
}

resource_allow {
    input.functions[0] == 30201
    input.user.platform == 3
    input.request.inbox_id == input.user.login_id
    data.messages.status != -1
}

resource_allow {
    input.functions[0] == 30202
    input.user.platform == 3
    input.request.inbox_id == input.user.login_id
}

resource_allow {
    input.functions[0] == 30401
    input.user.platform == 3
    data.orders.tenant_id == input.user.tenant_id
    data.orders.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 30402
    input.user.platform == 3
    data.orders.tenant_id == input.user.tenant_id
    data.orders.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 30403
    input.user.platform == 3
}

resource_allow {
    input.functions[0] == 30405
    input.user.platform == 3
    data.orders.tenant_id == input.user.tenant_id
    data.orders.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 30406
    input.user.platform == 3
    data.orders.tenant_id == input.user.tenant_id
    data.orders.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 30407
    input.user.platform == 3
    data.orders.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 30408
    input.user.platform == 3
    data.orders.tenant_id == input.user.tenant_id
    data.orders.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 30409
    input.user.platform == 3
    data.orders.tenant_id == input.user.tenant_id
    data.orders.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 30410
    input.user.platform == 3
    data.orders.tenant_id == input.user.tenant_id
    data.orders.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 30411
    input.user.platform == 3
    data.orders.tenant_id == input.user.tenant_id
    data.orders.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 30412
    input.user.platform == 3
    data.tags.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 30413
    input.user.platform == 3
    data.orders.tenant_id == input.user.tenant_id
    data.orders.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 30301
    input.user.platform == 3
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status == 1
    data.routes.site_status == 1
}

resource_allow {
    input.functions[0] == 30302
    input.user.platform == 3
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status == 1
    data.routes.site_status == 1
}

resource_allow {
    input.functions[0] == 30303
    input.user.platform == 3
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status == 1
    data.sites.route_status == 1
}

resource_allow {
    input.functions[0] == 30304
    input.user.platform == 3
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status == 1
    data.sites.route_status == 1
}

resource_allow {
    input.functions[0] == 30305
    input.user.platform == 3
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status == 1
    data.sites.route_status == 1
}

resource_allow {
    input.functions[0] == 30306
    input.user.platform == 3
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status == 1
    data.sites.route_status == 1
}

resource_allow {
    input.functions[0] == 30307
    input.user.platform == 3
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status == 1
    data.sites.route_status == 1
}

resource_allow {
    input.functions[0] == 30308
    input.user.platform == 3
    data.routes.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 30901
    input.user.platform == 3
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 31201
}

resource_allow {
    input.functions[0] == 30101
    input.user.platform == 3
    input.request.platform == 3
    input.request.login_id == input.user.login_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 30102
    input.user.platform == 3
    input.request.platform == 3
    input.request.login_id == input.user.login_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 30103
    input.user.platform == 3
    input.request.platform == 3
    input.request.login_id == input.user.login_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 30104
    input.user.platform == 3
}

resource_allow {
    input.functions[0] == 30105
    input.user.platform == 3
    input.request.login_id == input.user.login_id
}

resource_allow {
    input.functions[0] == 40201
    input.user.platform == 4
    startswith_in(input.request.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status == 1
}

resource_allow {
    input.functions[0] == 40202
    input.user.platform == 4
    startswith_in(data.devices.type_path_code,["/0/1/14/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status == 1
}

resource_allow {
    input.functions[0] == 40203
    input.user.platform == 4
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/14/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 40204
    input.user.platform == 4
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 40205
    input.user.platform == 4
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 40206
    input.user.platform == 4
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 40207
    input.user.platform == 4
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 40208
    input.user.platform == 4
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 40209
    input.user.platform == 4
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 40210
    input.user.platform == 4
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 40211
    input.user.platform == 4
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 40212
    input.user.platform == 4
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 40213
    input.user.platform == 4
    startswith_in(data.devices.type_path_code, ["/0/1/14/"])
    data.devices.tenant_id in input.user.operate_tenant_ids
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 40001
    input.request.platform == 4
}

resource_allow {
    input.functions[0] == 40002
    input.request.platform == 4
}

resource_allow {
    input.functions[0] == 40003
    input.request.platform == 4
}

resource_allow {
    input.functions[0] == 40010
}

resource_allow {
    input.functions[0] == 40301
    input.user.platform == 4
    data.maps.tenant_id == input.user.tenant_id
    data.maps.status != -1
}

resource_allow {
    input.functions[0] == 40302
    input.user.platform == 4
    data.maps.tenant_id == input.user.tenant_id
    data.maps.status != -1
}

resource_allow {
    input.functions[0] == 40401
    input.user.platform == 4
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 40402
    input.user.platform == 4
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 40403
    input.user.platform == 4
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 40404
    input.user.platform == 4
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 40405
    input.user.platform == 4
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 40406
    input.user.platform == 4
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 40407
    input.user.platform == 4
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 40408
    input.user.platform == 4
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 40409
    input.user.platform == 4
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 40101
    input.user.platform == 4
    input.request.platform == 4
    input.request.login_id == input.user.login_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 40102
    input.user.platform == 4
    input.request.platform == 4
    input.request.login_id == input.user.login_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 40103
    input.user.platform == 4
    input.request.platform == 4
    input.request.login_id == input.user.login_id
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 10000401
    input.user.platform == 1
    input.request.platform in [1, 2, 3, 1000]
    data.menus.status != -1
}

resource_allow {
    input.functions[0] == 101003
    input.user.platform in [1, 10]
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/", "/0/1/12/","/0/1/13/", "/0/1/15", "/0/3/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 101004
    input.user.platform in [1, 10]
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/12/","/0/1/13/","/0/3/","/0/1/15/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 105001
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 105003
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 106001
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 106002
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 100002
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 100003
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 100004
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 100005
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 108001
    input.user.platform in [1, 10]
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 108002
    input.user.platform in [1, 10]
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 102001
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 102002
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 102003
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 102004
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 104001
    input.user.platform == input.request.platform
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 107001
    input.user.platform in [1, 10]
    data.videos.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 107002
    input.user.platform in [1, 10]
    data.events.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 107003
    input.user.platform in [1, 10]
    data.events.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 107004
    input.user.platform in [1, 10]
    data.videos.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 114001
    input.user.platform in [1, 11]
    startswith_in(input.request.type_path_code,["/0/1/", "/0/1/12/","/0/1/13/","/0/1/15/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 114002
    input.user.platform in [1, 11]
    startswith_in(input.request.type_path_code,["/0/1/", "/0/1/12/","/0/1/13/","/0/1/15/"])
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 114003
    input.user.platform in [1, 11]
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/", "/0/1/12/","/0/1/13/", "/0/1/15", "/0/3/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 114004
    input.user.platform in [1, 11]
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/12/","/0/1/13/","/0/3/","/0/1/15/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 114006
    input.user.platform in [1, 11]
}

resource_allow {
    input.functions[0] == 114007
    input.user.platform in [1, 11]
}

resource_allow {
    input.functions[0] == 114008
    input.user.platform in [1, 11]
}

resource_allow {
    input.functions[0] == 114009
    input.user.platform in [1, 11]
}

resource_allow {
    input.functions[0] == 114010
    input.user.platform in [1, 11]
}

resource_allow {
    input.functions[0] == 116001
    input.user.platform == 11
}

resource_allow {
    input.functions[0] == 116002
    input.user.platform == 11
}

resource_allow {
    input.functions[0] == 116003
    input.user.platform == 11
}

resource_allow {
    input.functions[0] == 116004
    input.user.platform == 11
}

resource_allow {
    input.functions[0] == 116005
    input.user.platform == 11
}

resource_allow {
    input.functions[0] == 116006
    input.user.platform == 11
}

resource_allow {
    input.functions[0] == 116007
    input.user.platform == 11
}

resource_allow {
    input.functions[0] == 117001
    input.user.platform == 11
}

resource_allow {
    input.functions[0] == 117003
    input.user.platform in [11]
}

resource_allow {
    input.functions[0] == 117004
    input.user.platform in [11]
}

resource_allow {
    input.functions[0] == 112001
    input.user.platform in [1, 11]
    data.videos.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 112002
    input.user.platform in [1, 11]
    data.videos.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 112003
    input.user.platform in [1, 11]
    data.videos.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 111006
    input.user.platform in [1, 11]
}

resource_allow {
    input.functions[0] == 115001
    input.user.platform == input.request.platform
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 122001
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 122002
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 122003
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 122004
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 125001
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 120001
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 120002
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 120003
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 120004
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 120005
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 120006
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 120007
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123001
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123002
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123003
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123004
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123005
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123006
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123007
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123008
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123009
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123010
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123011
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123012
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123013
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123014
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123015
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123016
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123017
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 123018
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124001
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124002
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124003
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124004
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124005
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124009
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124010
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124011
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124012
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124013
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124014
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124015
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124016
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124017
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124018
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124019
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124020
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 121001
    input.user.platform == input.request.platform
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 131101
    input.user.platform in [1, 13]
    data.orders.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 131102
    input.user.platform in [1, 13]
    data.schedules.tenant_id == input.user.tenant_id
    data.schedules.status != -1
}

resource_allow {
    input.functions[0] == 131001
    input.user.platform in [1, 13]
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 131002
    input.user.platform in [1, 13]
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 131003
    input.user.platform in [1, 13]
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/", "/0/1/12/","/0/1/13/", "/0/1/15", "/0/3/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 131004
    input.user.platform in [1, 13]
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/12/","/0/1/13/","/0/3/","/0/1/15/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 131005
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 131006
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 131007
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 131008
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 131009
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 131010
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 135001
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 135002
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 133001
}

resource_allow {
    input.functions[0] == 136001
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 136002
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 130001
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 138001
    input.user.platform in [1, 13]
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 138002
    input.user.platform in [1, 13]
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 138003
    input.user.platform in [1, 13]
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 138004
    input.user.platform in [1, 13]
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 132001
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 132002
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 132003
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 132004
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 132005
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 132006
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 132007
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 132008
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 134001
    input.user.platform == input.request.platform
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 134002
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 137001
    input.user.platform in [1, 13]
    data.videos.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 137002
    input.user.platform in [1, 13]
    data.events.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 137003
    input.user.platform in [1, 13]
    data.events.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 137004
    input.user.platform in [1, 13]
    data.videos.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 141001
    input.user.platform in [1, 14]
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 141002
    input.user.platform in [1, 14]
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 141003
    input.user.platform in [1, 14]
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/", "/0/1/12/","/0/1/13/", "/0/1/15", "/0/3/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 141004
    input.user.platform in [1, 14]
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/12/","/0/1/13/","/0/3/","/0/1/15/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 141005
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 141006
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 141007
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 141008
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 141009
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 141010
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 1450012
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 1450013
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 146001
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 146002
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 140001
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 140002
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 140003
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 140004
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 140005
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 148001
    input.user.platform in [1, 14]
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 148002
    input.user.platform in [1, 14]
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 148003
    input.user.platform in [1, 14]
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 148004
    input.user.platform in [1, 14]
    data.routes.tenant_id == input.user.tenant_id
    data.routes.route_status != -1
    data.routes.site_status != -1
}

resource_allow {
    input.functions[0] == 142001
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 142002
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 142003
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 142004
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 144001
    input.user.platform == input.request.platform
    data.users.login_id == input.user.login_id
    data.users.tenant_id == input.user.tenant_id
    data.users.status == 1
}

resource_allow {
    input.functions[0] == 147001
    input.user.platform in [1, 14]
    data.videos.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 147002
    input.user.platform in [1, 14]
    data.events.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 147003
    input.user.platform in [1, 14]
    data.events.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 147004
    input.user.platform in [1, 14]
    data.videos.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 151001
    input.user.platform in [15]
}

resource_allow {
    input.functions[0] == 152001
    input.user.platform in [15]
}

resource_allow {
    input.functions[0] == 152002
    input.user.platform in [15]
}

resource_allow {
    input.functions[0] == 152003
    input.user.platform in [15]
}

resource_allow {
    input.functions[0] == 152004
    input.user.platform in [15]
}

resource_allow {
    input.functions[0] == 152005
    input.user.platform in [15]
}

resource_allow {
    input.functions[0] == 152006
    input.user.platform in [15]
}

resource_allow {
    input.functions[0] == 153001
    input.user.platform in [15]
}

resource_allow {
    input.functions[0] == 153002
    input.user.platform in [15]
}

resource_allow {
    input.functions[0] == 161001
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161002
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161005
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161006
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161007
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161008
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 162001
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 162002
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 162003
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 162004
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 162005
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 162006
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 162007
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 162008
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 162009
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 163001
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 163002
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 164005
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 164006
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 165002
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 165003
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 165004
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 165005
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 165006
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 165007
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 165008
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 165009
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 166001
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 166002
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 166003
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 167001
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 167002
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 167003
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 167004
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 167006
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 167007
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 168001
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 168002
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 168003
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 168004
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 168005
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 168006
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 168007
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 168008
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 168009
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 169001
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 169002
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 169003
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 169004
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 169005
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 169007
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 169008
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 169009
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161101
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161102
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161103
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161104
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161205
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161206
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161207
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161208
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161209
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161301
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161302
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161303
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161408
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161409
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161501
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161504
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161505
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161601
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161602
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161603
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161604
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161605
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 171002
    input.user.platform in [17, 12]
}

resource_allow {
    input.functions[0] == 171003
    input.user.platform in [17, 12]
}

resource_allow {
    input.functions[0] == 172003
    input.user.platform in [17]
}

resource_allow {
    input.functions[0] == 172004
    input.user.platform in [17]
}

resource_allow {
    input.functions[0] == 172005
    input.user.platform in [17]
}

resource_allow {
    input.functions[0] == 172006
    input.user.platform in [17]
}

resource_allow {
    input.functions[0] == 173001
    input.user.platform in [17, 1, 11]
}

resource_allow {
    input.functions[0] == 173002
    input.user.platform in [17, 1, 11]
}

resource_allow {
    input.functions[0] == 30503
    input.user.platform == 3
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/12/","/0/1/13/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 30504
    input.user.platform == 3
    startswith_in(data.missions.type_path_code, ["/0/1/12/","/0/1/13/"])
    data.missions.tenant_id == input.user.tenant_id
    data.missions.device_status == 1
}

resource_allow {
    input.functions[0] == 30505
    input.user.platform == 3
}

resource_allow {
    input.functions[0] == 30506
    input.user.platform == 3
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/12/","/0/1/13/","/0/3/","/0/1/15/"])}
    count(wrong_types) == 0
    wrong_tenant := {device | device := data.devices[_]; device.tenant_id != input.user.tenant_id}
    count(wrong_tenant) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 31302
    input.user.platform == 3
    data.feedbacks.tenant_id == input.user.tenant_id
    data.feedbacks.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 31303
    input.user.platform == 3
    data.feedbacks.tenant_id == input.user.tenant_id
    data.feedbacks.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 31304
    input.user.platform == 3
}

resource_allow {
    input.functions[0] == 31306
    input.user.platform == 3
    data.feedbacks.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 30001
    input.request.platform == 3
}

resource_allow {
    input.functions[0] == 30002
    input.request.platform == 3
}

resource_allow {
    input.functions[0] == 101001
    input.user.platform in [1, 10]
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 101006
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 117002
    input.user.platform == 11
}

resource_allow {
    input.functions[0] == 145001
    input.user.platform in [1, 14]
}

resource_allow {
    input.functions[0] == 167005
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161404
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 10911
    input.user.platform == 1
    data.schedules.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 30701
    input.user.platform == 3
    data.decisions.tenant_id == input.user.tenant_id
}

resource_allow {
    input.functions[0] == 30404
    input.user.platform == 3
    data.orders.tenant_id == input.user.tenant_id
    data.orders.created_by == input.user.login_id
}

resource_allow {
    input.functions[0] == 101002
    input.user.platform in [1, 10]
    data.devices.tenant_id == input.user.tenant_id
    data.devices.status != -1
}

resource_allow {
    input.functions[0] == 161502
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161503
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 171001
    input.user.platform in [17, 11]
}

resource_allow {
    input.functions[0] == 171004
    input.user.platform in [17, 12]
}

resource_allow {
    input.functions[0] == 171005
    input.user.platform in [17, 11]
}

resource_allow {
    input.functions[0] == 172001
    input.user.platform in [17]
}

resource_allow {
    input.functions[0] == 172002
    input.user.platform in [17]
}

resource_allow {
    input.functions[0] == 101005
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 113001
    input.user.platform in [1, 11]
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/12/","/0/1/13/"])}
    count(wrong_types) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 113002
    input.user.platform in [1, 11]
    wrong_types := {device | device := data.devices[_]; not startswith_in(device.type_path_code, ["/0/1/12/","/0/1/13/"])}
    count(wrong_types) == 0
    wrong_status := {device | device := data.devices[_]; device.status == -1}
    count(wrong_status) == 0
}

resource_allow {
    input.functions[0] == 111001
    input.user.platform in [1, 11]
}

resource_allow {
    input.functions[0] == 111002
    input.user.platform in [1, 11]
}

resource_allow {
    input.functions[0] == 111003
    input.user.platform in [1, 11]
}

resource_allow {
    input.functions[0] == 111004
    input.user.platform in [1, 11]
}

resource_allow {
    input.functions[0] == 111005
    input.user.platform in [1, 11]
}

resource_allow {
    input.functions[0] == 143001
}

resource_allow {
    input.functions[0] == 11603
    input.user.platform == 1
    data.sites.tenant_id == input.user.tenant_id
    data.sites.site_status != -1
    data.sites.route_status != -1
}

resource_allow {
    input.functions[0] == 12901
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 163003
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 163004
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 163005
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 164001
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 164002
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 164003
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 164004
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 12103
    input.user.platform == 1
}

resource_allow {
    input.functions[0] == 12213
    input.user.platform == 1
    data.missions.tenant_id == input.user.tenant_id
    data.missions.status != -1
}

resource_allow {
    input.functions[0] == 161105
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161106
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161107
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161108
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161109
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161110
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161111
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161304
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161305
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161405
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161406
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161407
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 30203
    input.user.platform == 3
}

resource_allow {
    input.functions[0] == 105002
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 100001
    input.user.platform in [1, 10]
}

resource_allow {
    input.functions[0] == 103001
}

resource_allow {
    input.functions[0] == 114005
    input.user.platform in [1, 11]
}

resource_allow {
    input.functions[0] == 110001
}

resource_allow {
    input.functions[0] == 124006
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124007
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 124008
    input.user.platform in [1, 12]
}

resource_allow {
    input.functions[0] == 130002
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 130003
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 130004
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 130005
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 139001
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 139002
    input.user.platform in [1, 13]
}

resource_allow {
    input.functions[0] == 154001
    input.user.platform in [15]
}

resource_allow {
    input.functions[0] == 153003
    input.user.platform in [15]
}

resource_allow {
    input.functions[0] == 164007
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 165001
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161306
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161401
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161402
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161403
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161112
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161201
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161202
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161203
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 161204
    input.user.platform in [16]
}

resource_allow {
    input.functions[0] == 173003
    input.user.platform in [17, 1, 11]
}

resource_allow {
    input.functions[0] == 173004
    input.user.platform in [17, 1, 11]
}

resource_allow {
    input.functions[0] == 173005
    input.user.platform in [17, 1, 11]
}

resource_allow {
    input.functions[0] == 173006
    input.user.platform in [17, 1, 11]
}

