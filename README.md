# Simple Evolvable String Demo

Built with [Evolvable](https://github.com/mattruzicka/evolvable)

## Usage

```ruby
git clone https://github.com/mattruzicka/evolvable_string.git
cd evolvable_string
bundle install
ruby evolve_string.rb "Hello Evolvable"
```

## Example Output

```
Aenl,QzE,e1ulve | Generation 1
HeSlDlze,f1uw9e | Generation 2
HeSlwlzE,e1uw9e | Generation 3
HeSlDlzD,f1ub9e | Generation 4
HeSlDl;D,f1ub9e | Generation 5
HeSlDlzD,f1ub9e | Generation 6
HeSlDlzD,21)b9e | Generation 7
HeSlDdzDo21)b9e | Generation 8
HeSlDdzRo21)b9e | Generation 9
HeSlDhzDo21)b9e | Generation 10
HeSlDdzDo21wbBe | Generation 11
HeslDdzqo21wbMe | Generation 12
HeslD zDo21wbMe | Generation 13
HeslD zDo21wbMe | Generation 14
Heslo zDo21wbMe | Generation 15
Hello zDo21wbMe | Generation 16
Hello zDo21ab.e | Generation 17
Hello zGol1ab.e | Generation 18
Hello zool1ab.e | Generation 19
Hello z'ol1abwe | Generation 20
Hello z'ol1abwe | Generation 21
Hello z'ol1abNe | Generation 22
Hello z'ol1abee | Generation 23
Hello t-olaabNe | Generation 24
Hello t'ol1ab"e | Generation 25
Hello t-ol1able | Generation 26
Hello Y-ol1able | Generation 27
Hello g-olXable | Generation 28
Hello t-olXable | Generation 29
Hello t-olXable | Generation 30
Hello t-olXable | Generation 31
Hello t-olXable | Generation 32
Hello t-olvable | Generation 33
Hello E-olvable | Generation 34
Hello Exolvable | Generation 35
Hello Evolvable | Generation 36
```

## Hear It
The second argument can be an integer which tells the program to "say" the best instance every input-number of generations.

For example, try `ruby evolve_string.rb "Thank you for listening" 20`


Note, the "say" feature assumes your system has a text-to-speech command named "say" installed.
