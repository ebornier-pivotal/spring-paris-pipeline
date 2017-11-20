echo ">>>> TEST"
cf curl /v2/spaces/bec96ca9-b131-4fdb-8a9e-6e7ef856bb99/apps | jq -r ".resources[].entity.name"
echo ">>>>"


echo ">>>> STAGE"
cf curl /v2/spaces/837bf824-5c07-4b34-9797-48027b01c99d/apps | jq -r ".resources[].entity.name"
echo ">>>>"


echo ">>>> PROD"
cf curl /v2/spaces/8383d8ee-3706-4a85-87e0-ea486a0cacdd/apps | jq -r ".resources[].entity.name"
echo ">>>>"
