#!/usr/bin/env sh

set -e

### begin login
loginCmd='az login -u "$loginId" -p "$loginSecret"'

# handle opts
if [ "$loginTenantId" != " " ]; then
    loginCmd=$(printf "%s --tenant %s" "$loginCmd" "$loginTenantId")
fi

case "$loginType" in
    "user")
        echo "logging in as user"
        ;;
    "sp")
        echo "logging in as service principal"
        loginCmd=$(printf "%s --service-principal" "$loginCmd")
        ;;
esac
eval "$loginCmd" >/dev/null

echo "setting default subscription"
az account set --subscription "$subscriptionId"
### end login

instrumentationKey=$(az resource show \
    --namespace "microsoft.insights" \
    --resource-type "components" \
    --resource-group "$resourceGroup" \
    --name "$name" \
    --query "properties.InstrumentationKey" \
    --output tsv)

cat "$instrumentationKey" > /instrumentationKey
