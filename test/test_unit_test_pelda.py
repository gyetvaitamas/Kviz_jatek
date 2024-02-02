import unittest
import unit_test_pelda


class TestQuizGame(unittest.TestCase):
    def test_generate_even_numbers_few(self) -> None:
        few_result = [2, 4, 6, 8]
        self.assertEqual(
            few_result,
            unit_test_pelda.UnitTestExamplesForExam.generate_even_numbers(self, 1, 10),
        )

    def test_generate_even_numbers_moderate(self) -> None:
        moderate_result = [50, 52, 54, 56, 58, 60, 62, 64, 66, 68, 70, 72, 74, 76, 78, 80, 82, 84, 86, 
                           88, 90, 92, 94, 96, 98]
        self.assertEqual(
            moderate_result,
            unit_test_pelda.UnitTestExamplesForExam.generate_even_numbers(
                self, 50, 100
            ),
        )

    def test_generate_even_numbers_many(self) -> None:
        many_result = [100, 102, 104, 106, 108, 110, 112, 114, 116, 118, 120, 122, 124, 126, 128, 130, 
                       132, 134, 136, 138, 140, 142, 144, 146, 148, 150, 152, 154, 156, 158, 160, 162, 
                       164, 166, 168, 170, 172, 174, 176, 178, 180, 182, 184, 186, 188, 190, 192, 194, 
                       196, 198, 200, 202, 204, 206, 208, 210, 212, 214, 216, 218, 220, 222, 224, 226, 
                       228, 230, 232, 234, 236, 238, 240, 242, 244, 246, 248, 250, 252, 254, 256, 258, 
                       260, 262, 264, 266, 268, 270, 272, 274, 276, 278, 280, 282, 284, 286, 288, 290, 
                       292, 294, 296, 298, 300, 302, 304, 306, 308, 310, 312, 314, 316, 318, 320, 322, 
                       324, 326, 328, 330, 332, 334, 336, 338, 340, 342, 344, 346, 348, 350, 352, 354, 
                       356, 358, 360, 362, 364, 366, 368, 370, 372, 374, 376, 378, 380, 382, 384, 386, 
                       388, 390, 392, 394, 396, 398, 400, 402, 404, 406, 408, 410, 412, 414, 416, 418, 
                       420, 422, 424, 426, 428, 430, 432, 434, 436, 438, 440, 442, 444, 446, 448, 450, 
                       452, 454, 456, 458, 460, 462, 464, 466, 468, 470, 472, 474, 476, 478, 480, 482, 
                       484, 486, 488, 490, 492, 494, 496, 498]
        self.assertEqual(
            many_result,
            unit_test_pelda.UnitTestExamplesForExam.generate_even_numbers(
                self, 100, 500
            ),
        )

    def test_generate_even_numbers_input_start_is_string(self) -> None:
        self.assertRaises(
            TypeError,
            unit_test_pelda.UnitTestExamplesForExam.generate_even_numbers(
                self, "this_is_a_string", 10
            ),
        )

    def test_generate_even_numbers_input_end_is_string(self) -> None:
        self.assertRaises(
            TypeError,
            unit_test_pelda.UnitTestExamplesForExam.generate_even_numbers(
                self, 10, "this_is_a_string"
            ),
        )

    def test_generate_even_numbers_inputs_are_string(self) -> None:
        self.assertRaises(
            TypeError,
            unit_test_pelda.UnitTestExamplesForExam.generate_even_numbers(
                self, "this_is_a_string", "this_is_a_string"
            ),
        )

    def test_generate_odd_numbers_few(self) -> None:
        few_result = [1, 3, 5, 7, 9]
        self.assertEqual(
            few_result,
            unit_test_pelda.UnitTestExamplesForExam.generate_odd_numbers(self, 1, 10),
        )

    def test_generate_odd_numbers_moderate(self) -> None:
        moderate_result = [51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 
                           89, 91, 93, 95, 97, 99]
        self.assertEqual(
            moderate_result,
            unit_test_pelda.UnitTestExamplesForExam.generate_odd_numbers(self, 50, 100),
        )

    def test_generate_odd_numbers_many(self) -> None:
            many_result = [101, 103, 105, 107, 109, 111, 113, 115, 117, 119, 121, 123, 125, 127, 129, 131, 
                       133, 135, 137, 139, 141, 143, 145, 147, 149, 151, 153, 155, 157, 159, 161, 163, 
                       165, 167, 169, 171, 173, 175, 177, 179, 181, 183, 185, 187, 189, 191, 193, 195, 
                       197, 199, 201, 203, 205, 207, 209, 211, 213, 215, 217, 219, 221, 223, 225, 227, 
                       229, 231, 233, 235, 237, 239, 241, 243, 245, 247, 249, 251, 253, 255, 257, 259, 
                       261, 263, 265, 267, 269, 271, 273, 275, 277, 279, 281, 283, 285, 287, 289, 291, 
                       293, 295, 297, 299, 301, 303, 305, 307, 309, 311, 313, 315, 317, 319, 321, 323, 
                       325, 327, 329, 331, 333, 335, 337, 339, 341, 343, 345, 347, 349, 351, 353, 355, 
                       357, 359, 361, 363, 365, 367, 369, 371, 373, 375, 377, 379, 381, 383, 385, 387, 
                       389, 391, 393, 395, 397, 399, 401, 403, 405, 407, 409, 411, 413, 415, 417, 419, 
                       421, 423, 425, 427, 429, 431, 433, 435, 437, 439, 441, 443, 445, 447, 449, 451, 
                       453, 455, 457, 459, 461, 463, 465, 467, 469, 471, 473, 475, 477, 479, 481, 483, 
                       485, 487, 489, 491, 493, 495, 497, 499]
            self.assertEqual(
            many_result,
            unit_test_pelda.UnitTestExamplesForExam.generate_odd_numbers(
                self, 100, 500
            ),
        )

    def test_generate_odd_numbers_input_start_is_string(self) -> None:
        self.assertRaises(
            TypeError,
            unit_test_pelda.UnitTestExamplesForExam.generate_odd_numbers(
                self, "this_is_a_string", 10
            ),
        )

    def test_generate_odd_numbers_input_end_is_string(self) -> None:
        self.assertRaises(
            TypeError,
            unit_test_pelda.UnitTestExamplesForExam.generate_odd_numbers(
                self, 10, "this_is_a_string"
            ),
        )

    def test_generate_odd_numbers_inputs_are_string(self) -> None:
        self.assertRaises(
            TypeError,
            unit_test_pelda.UnitTestExamplesForExam.generate_odd_numbers(
                self, "this_is_a_string", "this_is_a_string"
            ),
        )

    def test_number_is_even_true(self) -> None:
        self.assertTrue(
            unit_test_pelda.UnitTestExamplesForExam.number_is_even(self, 10)
        )

    def test_number_is_even_false(self) -> None:
        self.assertFalse(
            unit_test_pelda.UnitTestExamplesForExam.number_is_even(self, 11)
        )

    def test_number_is_even_input_is_string(self) -> None:
        self.assertRaises(
            TypeError,
            unit_test_pelda.UnitTestExamplesForExam.number_is_even(
                self, "this_is_a_string"
            ),
        )

    def test_number_is_odd_true(self) -> None:
        self.assertTrue(unit_test_pelda.UnitTestExamplesForExam.number_is_odd(self, 13))

    def test_number_is_odd_false(self) -> None:
        self.assertFalse(
            unit_test_pelda.UnitTestExamplesForExam.number_is_odd(self, 12)
        )

    def test_number_is_odd_input_is_string(self) -> None:
        self.assertRaises(
            TypeError,
            unit_test_pelda.UnitTestExamplesForExam.number_is_odd(
                self, "this_is_a_string"
            ),
        )

    def test_between_100_1000_if_input_is_100(self) -> None:
        self.assertTrue(
            unit_test_pelda.UnitTestExamplesForExam.between_100_1000(self, 100)
        )

    def test_between_100_1000_if_input_is_500(self) -> None:
        self.assertTrue(
            unit_test_pelda.UnitTestExamplesForExam.between_100_1000(self, 500)
        )

    def test_between_100_1000_if_input_is_1000(self) -> None:
        self.assertFalse(
            unit_test_pelda.UnitTestExamplesForExam.between_100_1000(self, 1000)
        )

    def test_between_100_1000_if_input_is_string(self) -> None:
        self.assertRaises(
            TypeError,
            unit_test_pelda.UnitTestExamplesForExam.between_100_1000(
                self, "this_is_a_string"
            ),
        )

    def test_multiply_chars_multiplied_chars(self) -> None:
        self.assertEqual(
            "aaaaaaaa",
            unit_test_pelda.UnitTestExamplesForExam.multiply_chars(self, "a", 8),
        )

    def test_multiply_chars_multiply_variable_is_character(self) -> None:
        self.assertEqual(
            "11111111",
            unit_test_pelda.UnitTestExamplesForExam.multiply_chars(self, "1", 8),
        )

    def test_multiply_chars_multiply_variable_is_number(self) -> None:
        self.assertEqual(
            "11111111",
            unit_test_pelda.UnitTestExamplesForExam.multiply_chars(self, 1, 8),
        )

    def test_wordlist_from_string(self) -> None:
        self.assertEqual(
            ["Python", "is", "awesome"],
            unit_test_pelda.UnitTestExamplesForExam.wordlist_from_string(
                self, "Python is awesome"
            ),
        )
