#!/bin/bash

S21_CAT_PATH="/home/gitlab-runner/builds/N9vMsVBG/0/students/DO6_CICD.ID_356283/bharbode_student.21_school.ru/DO6_CICD-1/src/cat/s21_cat"
S21_GREP_PATH="/home/gitlab-runner/builds/N9vMsVBG/0/students/DO6_CICD.ID_356283/bharbode_student.21_school.ru/DO6_CICD-1/src/grep/s21_grep"

DEPLOY_USER="bharbode"
DEPLOY_HOST="10.10.0.1"

chmod +x $S21_CAT_PATH $S21_GREP_PATH

scp $S21_CAT_PATH $DEPLOY_USER@$DEPLOY_HOST:/usr/local/bin
scp $S21_GREP_PATH $DEPLOY_USER@$DEPLOY_HOST:/usr/local/bin