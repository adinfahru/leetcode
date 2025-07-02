class Solution:
    def replaceWords(self, dictionary: List[str], sentence: str) -> str:
        words = sentence.split(' ')
        new_words = []

        for word in words:
            short_root = ''
            for root in dictionary:
                if word.startswith(root):
                    if not short_root or len(root) < len(short_root):
                        short_root = root
            if short_root:
                new_words.append(short_root)
            else:
                new_words.append(word)
        return ' '.join(new_words) 
