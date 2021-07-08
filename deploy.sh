echo "_____________START BUILD_______________"
set -ex;
    docker build -t "${IMAGE}:$SHA" . && \
    docker push "${IMAGE}:$SHA" && \
    gcloud beta run deploy "${CLOUD_RUN_SERVICE}" \
        --set-env-vars DATABSE_URL=$DATABASE_URL \
        --set-env-vars SECRET_KEY_BASE=$SECRET_KEY_BASE \
        --set-env-vars POOL_SIZE="2" \
        --image="${IMAGE}:$SHA" \
        --platform=managed \
        --region="${CLOUD_RUN_REGION}" \
        --allow-unauthenticated;
    set +x
echo "_____________DEPLOY FINISHED_______________"
