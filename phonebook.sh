#!/bin/bash

grep -oE "(([(]([0-9]){3}[)])|([0-9]){3}|\s?)\s?([0-9]){3,4}(\.|-|\s?)([0-9]){4}" phone-data.txt