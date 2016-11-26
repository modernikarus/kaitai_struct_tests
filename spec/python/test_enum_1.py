import unittest

from enum_1 import Enum1

class TestEnum1(unittest.TestCase):
    def test_enum_1(self):
        r = Enum1.from_file("src/enum_0.bin")

        self.assertEqual(r.main.pet_1, Enum1.MainObj.Animal.cat)
        self.assertEqual(r.main.pet_2, Enum1.MainObj.Animal.chicken)
