# MIT License

# Copyright (c) 2020 Jean-Jacques François Reibel

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

typeset -A car
car=(
  wheels 4
  doors 4
  cylinders 4
)

echo "Creating car."
typeset -A subaru
for key val in "${(@kv)car}"; do
    subaru[$key]=$val
done
print "Wheel check: " $subaru[wheels]
print "Door check: " $subaru[doors]
print "Cylinder check: " $subaru[cylinders]  "\n"
echo "Adding wheel directly to car object."
subaru[$wheels]=5
print "Wheel check: " $car[wheels]
print "Door check: " $car[doors]
print "Cylinder check: " $car[cylinders]  "\n"
