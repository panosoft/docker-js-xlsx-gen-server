# Test

```sh
cd docker-js-xlsx-gen-server
curl \
  -H "Content-Type: application/json" \
  -X POST --data "@test/data.json" \
  -k https://<docker host ip>:<docker container host port>/ \
  > test.xlsx \
  && open test.xlsx
```
