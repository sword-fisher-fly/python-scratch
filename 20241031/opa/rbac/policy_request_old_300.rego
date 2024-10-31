package policy

data := {
  "functions": {
    "10000101": {
      "request": {
        "url": "^/user-service/v1/tenants$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10000102": {
      "request": {
        "url": "^/user-service/v1/tenants/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10000103": {
      "request": {
        "url": "^/user-service/v1/tenants/(\\d+)$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10000104": {
      "request": {
        "url": "^/user-wrapper/v1/tenants$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10000105": {
      "request": {
        "url": "^/user-service/v1/tenants/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10000150": {
      "request": {
        "url": "^/user-service/v1/tenants$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10000201": {
      "request": {
        "url": "^/auth-service/v1/roles$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10000202": {
      "request": {
        "url": "^/auth-service/v1/roles/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10000203": {
      "request": {
        "url": "^/auth-service/v1/roles$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10000204": {
      "request": {
        "url": "^/auth-service/v1/roles/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10000205": {
      "request": {
        "url": "^/auth-service/v1/roles/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "10000206": {
      "request": {
        "url": "^/auth-service/v1/roles/(\\d+)/menus$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10000207": {
      "request": {
        "url": "^/auth-service/v1/roles/(\\d+)/menus$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10000301": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/password/reset/prepare$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10000302": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/password/reset/captcha$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10000401": {
      "request": {
        "url": "^/auth-service/v1/menus$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10000501": {
      "request": {
        "url": "^/order-service/v1/orders/comments/tags$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10000502": {
      "request": {
        "url": "^/order-service/v1/orders/comments/tags$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10000601": {
      "request": {
        "url": "^/admin-service/v1/schedules/tags$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10000602": {
      "request": {
        "url": "^/admin-service/v1/schedules/tags$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10001": {
      "request": {
        "url": "^/user-service/v1/login/basic/prepare$",
        "method": "POST",
        "anonymous": true,
        "internal": false
      }
    },
    "10002": {
      "request": {
        "url": "^/user-service/v1/login/basic$",
        "method": "POST",
        "anonymous": true,
        "internal": false
      }
    },
    "10010": {
      "request": {
        "url": "^/user-service/v1/logout$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10101": {
      "request": {
        "url": "^/user-service/v1/users$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10102": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10103": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10104": {
      "request": {
        "url": "^/user-service/v1/users$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10105": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10106": {
      "request": {
        "url": "^/user-wrapper/v1/users/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "10107": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/enable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10108": {
      "request": {
        "url": "^/user-wrapper/v1/users/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10109": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/password/reset/prepare$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10110": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/password/reset/captcha$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10150": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "10151": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": true
      }
    },
    "10201": {
      "request": {
        "url": "^/auth-service/v1/roles$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10202": {
      "request": {
        "url": "^/auth-service/v1/roles/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10203": {
      "request": {
        "url": "^/auth-service/v1/roles$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10204": {
      "request": {
        "url": "^/auth-service/v1/roles/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10205": {
      "request": {
        "url": "^/auth-service/v1/roles/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "10206": {
      "request": {
        "url": "^/auth-service/v1/roles/(\\d+)/menus$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10207": {
      "request": {
        "url": "^/auth-service/v1/roles/(\\d+)/menus$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10301": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10302": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10303": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10304": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10305": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "10306": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)/enable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10307": {
      "request": {
        "url": "^/device-wrapper/v1/devices/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10308": {
      "request": {
        "url": "^/device-service/v1/device_types$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10309": {
      "request": {
        "url": "^/device-service(-\\d+)?/v1/devices/stream_state$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10310": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)/missions$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10311": {
      "request": {
        "url": "^/device-wrapper/v1/devices/(\\d+)/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10312": {
      "request": {
        "url": "^/device-wrapper/v1/devices/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10313": {
      "request": {
        "url": "^/device-wrapper/v1/devices/(\\d+)/sites$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10350": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "10351": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "10352": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "10401": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10402": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10403": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10404": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10405": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "10406": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)/enable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10407": {
      "request": {
        "url": "^/device-wrapper/v1/devices/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10408": {
      "request": {
        "url": "^/device-service/v1/device_types$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10409": {
      "request": {
        "url": "^/device-service(-\\d+)?/v1/devices/stream_state$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10450": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "10501": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10502": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10503": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10504": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10505": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "10506": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)/enable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10507": {
      "request": {
        "url": "^/device-wrapper/v1/devices/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10508": {
      "request": {
        "url": "^/device-service/v1/device_types$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10509": {
      "request": {
        "url": "^/device-service(-\\d+)?/v1/devices/stream_state$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10550": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "10601": {
      "request": {
        "url": "^/device-service/v1/junctions$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10602": {
      "request": {
        "url": "^/device-service/v1/junctions/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10603": {
      "request": {
        "url": "^/device-service/v1/junctions$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10604": {
      "request": {
        "url": "^/device-service/v1/junctions/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10605": {
      "request": {
        "url": "^/device-service/v1/junctions/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "10701": {
      "request": {
        "url": "^/user-service/v1/users$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10702": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10703": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10704": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/enable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10705": {
      "request": {
        "url": "^/user-wrapper/v1/users/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10750": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "10801": {
      "request": {
        "url": "^/user-service/v1/users$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10802": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10803": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10804": {
      "request": {
        "url": "^/user-service/v1/users$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10805": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10806": {
      "request": {
        "url": "^/user-wrapper/v1/users/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "10807": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/enable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10808": {
      "request": {
        "url": "^/user-wrapper/v1/users/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10850": {
      "request": {
        "url": "^/user-service/v1/users$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "10851": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "10852": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": true
      }
    },
    "10853": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "10901": {
      "request": {
        "url": "^/admin-wrapper/v1/schedules$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10902": {
      "request": {
        "url": "^/admin-service/v1/schedules/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10903": {
      "request": {
        "url": "^/admin-wrapper/v1/schedules$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10904": {
      "request": {
        "url": "^/admin-wrapper/v1/schedules/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10905": {
      "request": {
        "url": "^/admin-service/v1/schedules/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "10906": {
      "request": {
        "url": "^/admin-wrapper/v1/schedules/(\\d+)/end$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "10907": {
      "request": {
        "url": "^/admin-wrapper/v1/schedules/unscheduled$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10908": {
      "request": {
        "url": "^/admin-service/v1/schedules/tags$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10909": {
      "request": {
        "url": "^/admin-service/v1/schedules/tags$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "10910": {
      "request": {
        "url": "^/admin-service/v1/schedules/(\\d+)/comments$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "10950": {
      "request": {
        "url": "^/admin-service/v1/schedules$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "10951": {
      "request": {
        "url": "^/admin-service/v1/schedules$",
        "method": "POST",
        "anonymous": false,
        "internal": true
      }
    },
    "10952": {
      "request": {
        "url": "^/admin-service/v1/schedules/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "10953": {
      "request": {
        "url": "^/admin-service/v1/schedules/(\\d+)/end$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "10954": {
      "request": {
        "url": "^/admin-service/v1/schedules/(\\d+)/return$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "11001": {
      "request": {
        "url": "^/admin-service/v1/routes$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11002": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11003": {
      "request": {
        "url": "^/admin-service/v1/routes$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "11004": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "11005": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)/enable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "11006": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "11007": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "11008": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)/sites$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "11101": {
      "request": {
        "url": "^/order-wrapper/v1/orders$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11102": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11103": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/cancel$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "11104": {
      "request": {
        "url": "^/order-wrapper/v1/orders/(\\d+)/assign$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "11105": {
      "request": {
        "url": "^/order-wrapper/v1/orders/assignable-vehicles$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11106": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/events$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11107": {
      "request": {
        "url": "^/order-service/v1/orders/comments$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11108": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/comments$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11109": {
      "request": {
        "url": "^/order-service/v1/orders/comments/tags$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "11110": {
      "request": {
        "url": "^/order-service/v1/orders/comments/tags$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11150": {
      "request": {
        "url": "^/order-service/v1/orders$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "11151": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/assign$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "11201": {
      "request": {
        "url": "^/operation-wrapper/v1/operating/overview$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11301": {
      "request": {
        "url": "^/admin-service/v1/screen/layout$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11302": {
      "request": {
        "url": "^/admin-service/v1/screen/layout$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "11303": {
      "request": {
        "url": "^/admin-service/v1/screen/layout$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "11401": {
      "request": {
        "url": "^/video-service/v1/rtsp-over-ws$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11402": {
      "request": {
        "url": "^/video-service/v1/video/(\\d+)/topics$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11403": {
      "request": {
        "url": "^/video-service/v1/video/(\\d+)/topics/([\\w-]+)/policy$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "11501": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11502": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "11503": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "11504": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/password$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "11505": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/is-completion$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11506": {
      "request": {
        "url": "^/auth-service/v1/roles/(\\d+)/menus$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11601": {
      "request": {
        "url": "^/admin-service/v1/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11602": {
      "request": {
        "url": "^/admin-service/v1/sites/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11603": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11604": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)/sites$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "11605": {
      "request": {
        "url": "^/admin-service/v1/sites/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "11606": {
      "request": {
        "url": "^/admin-wrapper/v1/sites/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "11650": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "11651": {
      "request": {
        "url": "^/admin-service/v1/devices/(\\d+)/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "11652": {
      "request": {
        "url": "^/admin-service/v1/devices/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "11653": {
      "request": {
        "url": "^/admin-service/v1/devices/(\\d+)/sites$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "11654": {
      "request": {
        "url": "^/admin-service/v1/sites/(\\d+)/devices$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "11655": {
      "request": {
        "url": "^/admin-service/v1/sites/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": true
      }
    },
    "11701": {
      "request": {
        "url": "^/decision-service/v1/decisions$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11801": {
      "request": {
        "url": "^/portal-service/v1/field-test/tasks$",
        "method": "POST",
        "anonymous": true,
        "internal": false
      }
    },
    "11802": {
      "request": {
        "url": "^/portal-service/v1/field-test/tasks/(\\d+)$",
        "method": "DELETE",
        "anonymous": true,
        "internal": false
      }
    },
    "11803": {
      "request": {
        "url": "^/senseauto-fieldtest-service/v1/records$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11901": {
      "request": {
        "url": "^/user-service/v1/tenants$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11902": {
      "request": {
        "url": "^/user-service/v1/tenants/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "11903": {
      "request": {
        "url": "^/user-service/v1/tenants/(\\d+)$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "11904": {
      "request": {
        "url": "^/user-wrapper/v1/tenants$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "11905": {
      "request": {
        "url": "^/user-service/v1/tenants/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "11950": {
      "request": {
        "url": "^/user-service/v1/tenants$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "12001": {
      "request": {
        "url": "^/user-service/v1/users$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "12002": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "12003": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "12004": {
      "request": {
        "url": "^/user-service/v1/users$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "12005": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12006": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "12007": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/enable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12008": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12101": {
      "request": {
        "url": "^/sweeper-business-service/v1/maps$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "12102": {
      "request": {
        "url": "^/sweeper-business-service/v1/maps/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "12103": {
      "request": {
        "url": "^/sweeper-business-service/v1/maps$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "12104": {
      "request": {
        "url": "^/sweeper-business-service/v1/maps/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12105": {
      "request": {
        "url": "^/sweeper-business-service/v1/maps/(\\d+)/enable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12106": {
      "request": {
        "url": "^/sweeper-business-service/v1/maps/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12107": {
      "request": {
        "url": "^/sweeper-business-service/v1/maps/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "12108": {
      "request": {
        "url": "^/sweeper-business-service/v1/maps/(\\d+)/files$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "12201": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "12202": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "12203": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "12204": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12205": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)/assign$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12206": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/unassigned/devices$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "12207": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "12208": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)/start$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12209": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)/pause$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12210": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)/stop$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12211": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)/return$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12301": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "12302": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "12303": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "12304": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12305": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "DELETE",
        "anonymous": false,
        "internal": false
      }
    },
    "12306": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)/enable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12307": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)/disable$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12308": {
      "request": {
        "url": "^/device-service/v1/device_types$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "12309": {
      "request": {
        "url": "^/device-service(-\\d+)?/v1/devices/stream_state$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "12310": {
      "request": {
        "url": "^/device-service/v1/devices/robosweeper/(\\d+)/sweep-command$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "12350": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "12351": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "20001": {
      "request": {
        "url": "^/user-service/v1/login/mobile/prepare$",
        "method": "POST",
        "anonymous": true,
        "internal": false
      }
    },
    "20002": {
      "request": {
        "url": "^/user-service/v1/login/mobile/captcha$",
        "method": "POST",
        "anonymous": true,
        "internal": false
      }
    },
    "20003": {
      "request": {
        "url": "^/user-service/v1/login/mobile/sms$",
        "method": "POST",
        "anonymous": true,
        "internal": false
      }
    },
    "20010": {
      "request": {
        "url": "^/user-service/v1/logout$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "20101": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20102": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "20103": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/is-completion$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20201": {
      "request": {
        "url": "^/message-service/v1/message-inbox/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20202": {
      "request": {
        "url": "^/message-service/v1/messages/stream_state$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20203": {
      "request": {
        "url": "^/message-service/v1/messages/status$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "20301": {
      "request": {
        "url": "^/admin-service/v1/routes$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20302": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20303": {
      "request": {
        "url": "^/admin-service/v1/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20304": {
      "request": {
        "url": "^/admin-service/v1/sites/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20305": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20350": {
      "request": {
        "url": "^/admin-service/v1/devices/(\\d+)/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "20401": {
      "request": {
        "url": "^/order-wrapper/v1/orders$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20402": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20403": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/cancel$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "20404": {
      "request": {
        "url": "^/order-wrapper/v1/orders/(\\d+)/arrive-start$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "20405": {
      "request": {
        "url": "^/order-wrapper/v1/orders/(\\d+)/confirm$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "20406": {
      "request": {
        "url": "^/order-wrapper/v1/orders/(\\d+)/complete$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "20407": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/events$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20408": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/expected-time$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20409": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/expected-time$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "20450": {
      "request": {
        "url": "^/order-service/v1/orders$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "20451": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/arrive-start$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "20452": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/confirm$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "20453": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/complete$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "20454": {
      "request": {
        "url": "^/order-service/v1/orders/close$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "20501": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20502": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20503": {
      "request": {
        "url": "^/device-service(-\\d+)?/v1/devices/stream_state$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20504": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)/missions$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20505": {
      "request": {
        "url": "^/device-service/v1/tracks/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20601": {
      "request": {
        "url": "^/admin-wrapper/v1/schedules$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20602": {
      "request": {
        "url": "^/admin-service/v1/schedules/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20603": {
      "request": {
        "url": "^/admin-wrapper/v1/schedules/(\\d+)/start$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "20604": {
      "request": {
        "url": "^/admin-service/v1/schedules/(\\d+)/stop$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "20605": {
      "request": {
        "url": "^/admin-wrapper/v1/schedules/(\\d+)/end$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "20606": {
      "request": {
        "url": "^/admin-wrapper/v1/schedules/(\\d+)/abnormal-end$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "20607": {
      "request": {
        "url": "^/admin-service/v1/schedules/tags$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20650": {
      "request": {
        "url": "^/admin-service/v1/schedules$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "20651": {
      "request": {
        "url": "^/admin-service/v1/schedules/(\\d+)/start$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "20652": {
      "request": {
        "url": "^/admin-service/v1/schedules/(\\d+)/end$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "20653": {
      "request": {
        "url": "^/admin-service/v1/schedules/(\\d+)/abnormal-end$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "20701": {
      "request": {
        "url": "^/decision-service/v1/decisions$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "20702": {
      "request": {
        "url": "^/decision-service/v1/decisions$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "20703": {
      "request": {
        "url": "^/decision-service/v1/decisions/reselect-next-site$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "30001": {
      "request": {
        "url": "^/user-service/v1/login/mobile/prepare$",
        "method": "POST",
        "anonymous": true,
        "internal": false
      }
    },
    "30002": {
      "request": {
        "url": "^/user-service/v1/login/mobile/captcha$",
        "method": "POST",
        "anonymous": true,
        "internal": false
      }
    },
    "30003": {
      "request": {
        "url": "^/user-service/v1/login/mobile/sms$",
        "method": "POST",
        "anonymous": true,
        "internal": false
      }
    },
    "30010": {
      "request": {
        "url": "^/user-service/v1/logout$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "30101": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30102": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "30103": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/is-completion$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30201": {
      "request": {
        "url": "^/message-service/v1/message-inbox/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30202": {
      "request": {
        "url": "^/message-service/v1/messages/stream_state$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30203": {
      "request": {
        "url": "^/message-service/v1/messages/status$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "30301": {
      "request": {
        "url": "^/admin-service/v1/routes$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30302": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30303": {
      "request": {
        "url": "^/admin-service/v1/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30304": {
      "request": {
        "url": "^/admin-service/v1/sites/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30305": {
      "request": {
        "url": "^/admin-service/v1/routes/(\\d+)/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30306": {
      "request": {
        "url": "^/admin-service/v1/sites/closest-sites$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30350": {
      "request": {
        "url": "^/admin-service/v1/devices/(\\d+)/sites$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "30401": {
      "request": {
        "url": "^/order-wrapper/v1/orders$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30402": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30403": {
      "request": {
        "url": "^/order-wrapper/v1/orders$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "30404": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/cancel$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "30405": {
      "request": {
        "url": "^/order-wrapper/v1/orders/(\\d+)/confirm$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "30406": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/events$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30407": {
      "request": {
        "url": "^/order-service/v1/order-queue$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30408": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/expected-time$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30409": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/comments$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "30410": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/comments$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30411": {
      "request": {
        "url": "^/order-service/v1/orders/comments$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30412": {
      "request": {
        "url": "^/order-service/v1/orders/comments/tags$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30450": {
      "request": {
        "url": "^/order-service/v1/orders$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "30451": {
      "request": {
        "url": "^/order-service/v1/orders$",
        "method": "POST",
        "anonymous": false,
        "internal": true
      }
    },
    "30452": {
      "request": {
        "url": "^/order-service/v1/orders/(\\d+)/confirm$",
        "method": "PUT",
        "anonymous": false,
        "internal": true
      }
    },
    "30501": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30502": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30503": {
      "request": {
        "url": "^/device-service(-\\d+)?/v1/devices/stream_state$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30504": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)/missions$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30505": {
      "request": {
        "url": "^/device-service/v1/tracks/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30601": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/licenses$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "30602": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/licenses$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30603": {
      "request": {
        "url": "^/user-service/v1/licenses$",
        "method": "GET",
        "anonymous": true,
        "internal": false
      }
    },
    "30701": {
      "request": {
        "url": "^/decision-service/v1/decisions$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30901": {
      "request": {
        "url": "^/admin-wrapper/v1/schedules$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "30950": {
      "request": {
        "url": "^/admin-service/v1/schedules$",
        "method": "GET",
        "anonymous": false,
        "internal": true
      }
    },
    "40001": {
      "request": {
        "url": "^/user-service/v1/login/mobile/prepare$",
        "method": "POST",
        "anonymous": true,
        "internal": false
      }
    },
    "40002": {
      "request": {
        "url": "^/user-service/v1/login/mobile/captcha$",
        "method": "POST",
        "anonymous": true,
        "internal": false
      }
    },
    "40003": {
      "request": {
        "url": "^/user-service/v1/login/mobile/sms$",
        "method": "POST",
        "anonymous": true,
        "internal": false
      }
    },
    "40010": {
      "request": {
        "url": "^/user-service/v1/logout$",
        "method": "POST",
        "anonymous": false,
        "internal": false
      }
    },
    "40101": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "40102": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "40103": {
      "request": {
        "url": "^/user-service/v1/users/(\\d+)/is-completion$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "40201": {
      "request": {
        "url": "^/device-service/v1/devices$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "40202": {
      "request": {
        "url": "^/device-service/v1/devices/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "40203": {
      "request": {
        "url": "^/device-service(-\\d+)?/v1/devices/stream_state$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "40204": {
      "request": {
        "url": "^/device-service/v1/devices/robosweeper/(\\d+)/sweep-command$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "40205": {
      "request": {
        "url": "^/device-service/v1/devices/robosweeper/(\\d+)/remote-control-command$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "40206": {
      "request": {
        "url": "^/device-service/v1/devices/robosweeper/(\\d+)/set-sweeper-mode$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "40301": {
      "request": {
        "url": "^/sweeper-business-service/v1/maps/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "40302": {
      "request": {
        "url": "^/sweeper-business-service/v1/maps/(\\d+)/files$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "40401": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "40402": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)$",
        "method": "GET",
        "anonymous": false,
        "internal": false
      }
    },
    "40403": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)/return$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "40404": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)/start$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "40405": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)/pause$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    },
    "40406": {
      "request": {
        "url": "^/sweeper-business-service/v1/missions/(\\d+)/stop$",
        "method": "PUT",
        "anonymous": false,
        "internal": false
      }
    }
  }
}

input := {
    "functions": ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741"
, "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785", "786", "787", "788", "789", "790", "791", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814", "815", "816", "817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841", "842", "843", "844", "845", "846", "847", "848", "849", "850", "851", "852", "853", "854", "855", "856", "857", "858", "859", "860", "861", "862", "863", "864", "865", "866", "867", "868", "869", "870", "871", "872", "873", "874", "875", "876", "877", "878", "879", "880", "881", "882", "883", "884", "885", "886", "887","888", "889", "890", "891", "892", "893", "894", "895", "896", "897", "898", "899", "900", "901", "902", "903", "904", "905", "906", "907", "908", "909", "910", "911", "912", "913", "914", "915", "916", "917", "918", "919", "920", "921", "922", "923", "924", "925", "926", "927", "928", "929", "930", "931", "932", "933", "934", "935", "936", "937", "938", "939", "940", "941", "942", "943", "944", "945", "946", "947", "948", "949", "950", "951", "952", "953", "954", "955", "956", "957", "958", "959", "960", "961", "962", "963", "964", "965", "966", "967", "968", "969", "970", "971", "972", "973", "974", "975", "976", "977", "978", "979", "980", "981", "982", "983", "984", "985", "986", "987", "988", "989", "990", "991", "992", "993", "994", "995", "996", "997", "998", "999","20201"],
    "request": {
        "method": "GET",
        "url": "/message-service/v1/message-inbox/10000"
    }
}

matched_function[function_id] {
	function := data.functions[function_id]
	upper(function.request.method) == upper(input.request.method)
    regex.match(function.request.url, input.request.url) == true
    function.request.internal == false
}

anonymous_function[function_id] {
	function := data.functions[function_id]
	upper(function.request.method) == upper(input.request.method)
    regex.match(function.request.url, input.request.url) == true
    function.request.internal == false
    function.request.anonymous == true
}

request_allow {
	matched_function[_] == input.functions[_]
}

request_allow {
	count(anonymous_function) > 0
}

