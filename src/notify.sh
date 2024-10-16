#!/bin/bash
#Все переменные и константы начинающиеся с CI_ это глобальные переменные gitlab-runner
BOT_TOKEN="7417160503:AAE8_BIzbMeiLQNGfnrPfCvXAFJ9n5Lbe_k"
CHAT_ID="1002002080"

URL="https://api.telegram.org/bot$BOT_TOKEN/sendMessage"
TEXT="Stage:+$STAGE_$CI_JOB_NAME%0AStatus:+$CI_JOB_STATUS%0A%0AProject:+$CI_PROJECT_NAME%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s --max-time 300 -d "chat_id=$CHAT_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null