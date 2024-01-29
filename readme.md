```
Run curl -sSL -H "Authorization: bearer $ACTIONS_ID_TOKEN_REQUEST_TOKEN" "$ACTIONS_ID_TOKEN_REQUEST_URL" | \
GitHub Actions Token Claims
{
  "jti": "9522606b-b0b8-484a-a4cd-6272c00403bf",
  "sub": "repo:brightblueray/gha-external-group:ref:refs/heads/main",
  "aud": "https://github.com/brightblueray",
  "ref": "refs/heads/main",
  "sha": "602530c32aa984249010fb88ee438016d5c4b5ba",
  "repository": "brightblueray/gha-external-group",
  "repository_owner": "brightblueray",
  "repository_owner_id": "6360383",
  "run_id": "4833143257",
  "run_number": "17",
  "run_attempt": "1",
  "repository_visibility": "public",
  "repository_id": "613901718",
  "actor_id": "6360383",
  "actor": "brightblueray",
  "workflow": "OIDC Access Test",
  "head_ref": "",
  "base_ref": "",
  "event_name": "push",
  "ref_type": "branch",
  "workflow_ref": "brightblueray/gha-external-group/.github/workflows/oidc_test.yml@refs/heads/main",
  "workflow_sha": "602530c32aa984249010fb88ee438016d5c4b5ba",
  "job_workflow_ref": "brightblueray/gha-external-group/.github/workflows/oidc_test.yml@refs/heads/main",
  "job_workflow_sha": "602530c32aa984249010fb88ee438016d5c4b5ba",
  "runner_environment": "github-hosted",
  "iss": "https://token.actions.githubusercontent.com",
  "nbf": 1682701803,
  "exp": 1682702703,
  "iat": 1682702403
}
Vault Login Response
{"request_id":"96953fc4-bfea-a91d-e592-a03863b36775","lease_id":"","renewable":false,"lease_duration":0,"data":null,"wrap_info":null,"warnings":["TTL of \"1h\" exceeded the effective max_ttl of \"1m40s\"; TTL value is capped accordingly"],"auth":{"client_token":"hvs.CAESIKZ2dnpIdKKGUDULIajZLzXvpHgew5233NiJnxJYJ4p4GicKImh2cy5IUWlXR2x3ak1ORklvUjJPUHJweGVzaXUuTkI1SnAQkwM","accessor":"aXArBa5UwJm6aw3kIbQG5pIe.NB5Jp","policies":["default","github-actions-oidc"],"token_policies":["default","github-actions-oidc"],"metadata":{"role":"***"},"lease_duration":100,"renewable":true,"entity_id":"97713181-9c5d-a569-31b3-f957ec6c68f7","token_type":"service","orphan":true,"mfa_requirement":null,"num_uses":0}}
```
