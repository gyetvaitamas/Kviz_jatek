# Representing unit test solutions for the exam
# In my quiz game I don't have much definitons with return values to test them, so I created this file dedicated only to show how I would make unit tests
class UnitTestExamplesForExam:
    def generate_even_numbers(self, start, end) -> int:
        try:
            return [i for i in range(start, end) if i % 2 == 0]
        except Exception as e:
            return e

    def generate_odd_numbers(self, start, end) -> int:
        try:
            return [i for i in range(start, end) if i % 2 != 0]
        except Exception as e:
            return e

    def number_is_even(self, number) -> bool:
        try:
            return number % 2 == 0
        except Exception as e:
            return e

    def number_is_odd(self, number) -> bool:
        try:
            return number % 2 != 0
        except Exception as e:
            return e

    def between_100_1000(self, number) -> bool:
        try:
            return 100 <= number < 1000
        except Exception as e:
            return e

    def multiply_chars(self, char, multiply) -> str:
        if type(char) is int:
            return str(char) * multiply
        else:
            return char * multiply

    def wordlist_from_string(self, string) -> list:
        return string.split()


operations = UnitTestExamplesForExam()

# Tests using "assert"
assert [10, 12, 14, 16, 18] == operations.generate_even_numbers(10, 20)
assert [11, 13, 15, 17, 19] == operations.generate_odd_numbers(10, 20)
assert True == operations.number_is_even(10)
assert False == operations.number_is_odd(10)
assert True == operations.between_100_1000(100)
assert "aaaaaaaaaa" == operations.multiply_chars("a", 10)
assert ["Python", "is", "awesome"] == operations.wordlist_from_string(
    "Python is awesome"
)
