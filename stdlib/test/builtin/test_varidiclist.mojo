from testing import assert_true, assert_equal, assert_false

fn f(*values: Int) -> Int:
  return values[3]
 
fn g(*values: Int) -> Int:
  return values[-1]
   
fn main():
  var a = f(1,2)
  print(a)
  var b = f(3,4)
  print(b)
 
  var c = g(3,4)
  print(c)
  var d = g(5,6)
  print(d)