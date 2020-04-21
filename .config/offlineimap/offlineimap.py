#!/usr/bin/env python2

from subprocess import check_output
import json

user = "daniel.tschertkow@posteo.de"
path = "~/.config/offlineimap/passwords.json.gpg"


def decrypt_store():
    return check_output(
        "gpg --quiet --decrypt --batch --recipient {} {}".format(user, path),
        shell=True
    ).strip("\n")

def get_username(acc):
    return json.loads( decrypt_store() )[acc]['user']

def get_password(acc):
    return json.loads( decrypt_store() )[acc]['pass']
