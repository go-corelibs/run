#!/usr/bin/make --no-print-directory --jobs=1 --environment-overrides -f

VERSION_TAGS += RUN
RUN_MK_SUMMARY := go-corelibs/run
RUN_MK_VERSION := v1.0.1

include CoreLibs.mk
