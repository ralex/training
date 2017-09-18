#!/bin/bash

test_script_exists() {
    assert "test -e ../simple_calculator.sh"
}

test_integer_addition() {
    assert_equals "2" "$(../simple_calculator.sh 1 1)"
}

test_float_addition() {
    assert_equals "3,4" "$(../simple_calculator.sh 2 1,4)"
}

