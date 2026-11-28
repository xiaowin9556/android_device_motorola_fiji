#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

import os
import sys

sys.path.insert(
    0,
    os.path.abspath(os.path.join(os.path.dirname(__file__), "../../../tools/extract-utils")),
)

from extract_utils.main import ExtractUtils, ExtractUtilsModule

module = ExtractUtilsModule(
    "fiji",
    "motorola",
)

if __name__ == "__main__":
    utils = ExtractUtils.device(module)
    utils.run()
