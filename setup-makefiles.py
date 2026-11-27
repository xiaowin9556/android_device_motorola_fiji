#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

import os
import subprocess
import sys

script = os.path.join(os.path.dirname(os.path.abspath(__file__)), "extract-files.py")
subprocess.check_call([sys.executable, script, "--regenerate_makefiles"])
