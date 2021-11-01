#!/usr/bin/env python3
import os
import sys
from setuptools import setup

version_file = os.path.join(os.path.dirname(__file__), "share", "version")
version = open(version_file).read().strip().lstrip("v")

description = "Install, run, and update apps in the private storage of a Qube"

author = "Micah Lee"
author_email = "micah@micahflee.com"
url = "https://github.com/micahflee/qube-apps"
license = "GPL v3"

setup(
    name="qube-apps",
    version=version,
    description=description,
    author=author,
    author_email=author_email,
    url=url,
    license=license,
    scripts=["qube-apps"],
    data_files=[
        (
            os.path.join(sys.prefix, "share/applications"),
            ["share/qube-apps.desktop"],
        ),
        (os.path.join(sys.prefix, "share/pixmaps"), ["share/qube-apps.png"]),
    ],
)
