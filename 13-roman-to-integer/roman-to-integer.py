class Solution:
    def romanToInt(self, s: str) -> int:
        # Buat kamus (dictionary) untuk nilai Romawi
        roman_map = {
            'I': 1,
            'V': 5,
            'X': 10,
            'L': 50,
            'C': 100,
            'D': 500,
            'M': 1000
        }

        # Langkah 1: Atasi semua kasus pengurangan dengan mengganti string-nya.
        # Ganti kasus khusus yang "mengurangi" menjadi kasus yang hanya "menambah".
        s = s.replace("IV", "IIII")
        s = s.replace("IX", "VIIII")
        s = s.replace("XL", "XXXX")
        s = s.replace("XC", "LXXXX")
        s = s.replace("CD", "CCCC")
        s = s.replace("CM", "DCCCC")

        # Langkah 2: Sekarang string hanya berisi kasus penjumlahan murni.
        # Kita tinggal menjumlahkan nilai dari setiap karakter.
        total = 0
        for char in s:
            total += roman_map[char]
            
        return total