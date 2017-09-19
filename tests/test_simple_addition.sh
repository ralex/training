#!/bin/bash

test_script_exists() {
    assert "test -e ../simple_addition.sh"
}

test_script_executable() {
    assert "test -x ../simple_addition.sh"
}

test_integer_addition() {
    assert_equals "2" "$(../simple_addition.sh 1 1)"
}

test_float_addition() {
    assert_equals "3.4" "$(../simple_addition.sh 2 1.4)"
}

test_fail_missing_parameter() {
    assert_fails "$(../simple_addition.sh)"
}
