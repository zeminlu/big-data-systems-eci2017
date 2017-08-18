#!/bin/bash

pig namesHistory.pig
hadoop fs -rm /user/zeminlu/namesHistory/output/.pig_schema
hadoop fs -getmerge /user/zeminlu/namesHistory/output outputs/namesHistory/pig/namesHistory.csv