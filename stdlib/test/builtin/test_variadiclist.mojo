# ===----------------------------------------------------------------------=== #
# Copyright (c) 2024, Modular Inc. All rights reserved.
#
# Licensed under the Apache License v2.0 with LLVM Exceptions:
# https://llvm.org/LICENSE.txt
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ===----------------------------------------------------------------------=== #
# RUN: %mojo %s
from testing import assert_true, assert_equal, assert_false


fn get_last_value(*values: Int) -> Int:
    return values[-1]


def test_negative_index():
    var last_value = get_last_value(3, 4, 5)
    assert_equal(5, last_value)

    last_value = get_last_value(6, 7)
    assert_equal(7, last_value)

    last_value = get_last_value(8)
    assert_equal(8, last_value)


def main():
    test_negative_index()
