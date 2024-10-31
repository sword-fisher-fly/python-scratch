.PHONY: default policy-request-old-map-array policy-request-old-no-anonymous policy-request-old-300 policy-request count10 top5 top5-sort-num top5-sort-num-redo

OPA:=./opa

default:
	$(OPA) eval --data rbac.rego --profile --format=pretty 'data.rbac.allow'

policy-request-old-map-array:
	$(OPA) eval --data policy_request_old_map_array.rego --profile --format=pretty 'data.policy.matched_function'

policy-request-old-no-anonymous:
	$(OPA) eval --data policy_request_old_no_anonymous.rego --profile --format=pretty 'data.policy.request_allow'

policy-request-old-300:
	$(OPA) eval --data policy_request_old_300.rego --profile --format=pretty 'data.policy.request_allow'


policy-request:
	$(OPA) eval --data policy_request.rego --profile --format=pretty 'data.policy.supported_function_ids'


count10:
	$(OPA) eval --data rbac.rego --profile --format=pretty --count=10 'data.rbac.allow'

top5:
	$(OPA) eval --data rbac.rego --profile-limit 5 --format=pretty 'data.rbac.allow'

top5-sort-num:
	$(OPA) eval --data rbac.rego --profile-limit 5 --profile-sort num_eval --format=pretty 'data.rbac.allow'

top5-sort-num-redo:
	$(OPA) eval --data rbac.rego --profile-limit 5 --profile-sort num_eval,num_redo --format=pretty 'data.rbac.allow'

