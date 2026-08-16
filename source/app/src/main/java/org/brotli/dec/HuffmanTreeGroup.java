package org.brotli.dec;

final class HuffmanTreeGroup {
    private int alphabetSize;
    int[] codes;
    int[] trees;

    public static void decode(HuffmanTreeGroup huffmanTreeGroup, BitReader bitReader) {
        int length = huffmanTreeGroup.trees.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            huffmanTreeGroup.trees[i11] = i10;
            Decode.readHuffmanCode(huffmanTreeGroup.alphabetSize, huffmanTreeGroup.codes, i10, bitReader);
            i10 += 1080;
        }
    }

    public static void init(HuffmanTreeGroup huffmanTreeGroup, int i10, int i11) {
        huffmanTreeGroup.alphabetSize = i10;
        huffmanTreeGroup.codes = new int[i11 * 1080];
        huffmanTreeGroup.trees = new int[i11];
    }
}
