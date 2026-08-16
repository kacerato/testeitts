package org.eclipse.jdt.internal.core.nd;

public final class StreamHasher {
    private static final long EMPTY_STRING_HASH = new StreamHasher().computeHashInternal();
    private static final long SEED = 3141592653589793238L;
    char previousCharacter;
    long hashedOffset = 0;
    int state = 0;

    int f102537b = -1573762602;

    int f102536a = -1573762602;

    int f102538c = (int) ((-1573762602) + 731459039);

    private long computeHashInternal() {
        int i10 = this.state;
        if (i10 == 1) {
            this.f102536a += this.previousCharacter;
        } else if (i10 == 3) {
            this.f102537b += this.previousCharacter;
        } else if (i10 == 5) {
            this.f102538c += this.previousCharacter;
        }
        this.state = -1;
        finalMix();
        return (this.f102538c & 4294967295L) | (this.f102537b << 32);
    }

    private void finalMix() {
        int i10 = this.f102538c;
        int i11 = this.f102537b;
        int i12 = i10 ^ i11;
        this.f102538c = i12;
        int rotateLeft = i12 - Integer.rotateLeft(i11, 14);
        this.f102538c = rotateLeft;
        int i13 = this.f102536a ^ rotateLeft;
        this.f102536a = i13;
        int rotateLeft2 = i13 - Integer.rotateLeft(rotateLeft, 11);
        this.f102536a = rotateLeft2;
        int i14 = this.f102537b ^ rotateLeft2;
        this.f102537b = i14;
        int rotateLeft3 = i14 - Integer.rotateLeft(rotateLeft2, 25);
        this.f102537b = rotateLeft3;
        int i15 = this.f102538c ^ rotateLeft3;
        this.f102538c = i15;
        int rotateLeft4 = i15 - Integer.rotateLeft(rotateLeft3, 16);
        this.f102538c = rotateLeft4;
        int i16 = this.f102536a ^ rotateLeft4;
        this.f102536a = i16;
        int rotateLeft5 = i16 - Integer.rotateLeft(rotateLeft4, 4);
        this.f102536a = rotateLeft5;
        int i17 = this.f102537b ^ rotateLeft5;
        this.f102537b = i17;
        int rotateLeft6 = i17 - Integer.rotateLeft(rotateLeft5, 14);
        this.f102537b = rotateLeft6;
        int i18 = this.f102538c ^ rotateLeft6;
        this.f102538c = i18;
        this.f102538c = i18 - Integer.rotateLeft(rotateLeft6, 24);
    }

    public static long hash(String str) {
        StreamHasher streamHasher = new StreamHasher();
        streamHasher.addChunk(str.toCharArray());
        return streamHasher.computeHash();
    }

    private void mix() {
        int i10 = this.f102536a;
        int i11 = this.f102538c;
        int i12 = i10 - i11;
        this.f102536a = i12;
        int rotateLeft = i12 ^ Integer.rotateLeft(i11, 4);
        this.f102536a = rotateLeft;
        int i13 = this.f102538c;
        int i14 = this.f102537b;
        this.f102538c = i13 + i14;
        int i15 = i14 - rotateLeft;
        this.f102537b = i15;
        int rotateLeft2 = Integer.rotateLeft(rotateLeft, 6) ^ i15;
        this.f102537b = rotateLeft2;
        int i16 = this.f102536a;
        int i17 = this.f102538c;
        this.f102536a = i16 + i17;
        int i18 = i17 - rotateLeft2;
        this.f102538c = i18;
        int rotateLeft3 = Integer.rotateLeft(rotateLeft2, 8) ^ i18;
        this.f102538c = rotateLeft3;
        int i19 = this.f102537b;
        int i20 = this.f102536a;
        this.f102537b = i19 + i20;
        int i21 = i20 - rotateLeft3;
        this.f102536a = i21;
        int rotateLeft4 = Integer.rotateLeft(rotateLeft3, 16) ^ i21;
        this.f102536a = rotateLeft4;
        int i22 = this.f102538c;
        int i23 = this.f102537b;
        this.f102538c = i22 + i23;
        int i24 = i23 - rotateLeft4;
        this.f102537b = i24;
        int rotateLeft5 = Integer.rotateLeft(rotateLeft4, 19) ^ i24;
        this.f102537b = rotateLeft5;
        int i25 = this.f102536a;
        int i26 = this.f102538c;
        this.f102536a = i25 + i26;
        int i27 = i26 - rotateLeft5;
        this.f102538c = i27;
        this.f102538c = Integer.rotateLeft(rotateLeft5, 4) ^ i27;
        this.f102537b += this.f102536a;
    }

    public void addChunk(char[] cArr) {
        int i10 = 0;
        while (i10 < cArr.length) {
            char c10 = cArr[i10];
            int i11 = this.state;
            this.state = i11 + 1;
            switch (i11) {
                case -1:
                    throw new IllegalStateException("addChunk is called after computeHash.");
                case 0:
                case 2:
                case 4:
                    this.previousCharacter = c10;
                    break;
                case 1:
                    this.f102536a += (c10 << 16) | this.previousCharacter;
                    break;
                case 3:
                    this.f102537b += (c10 << 16) | this.previousCharacter;
                    break;
                case 5:
                    this.f102538c += (c10 << 16) | this.previousCharacter;
                    mix();
                    this.state = 0;
                    break;
            }
            i10++;
            this.hashedOffset++;
        }
    }

    public long computeHash() {
        if (this.state >= 0) {
            return computeHashInternal() ^ EMPTY_STRING_HASH;
        }
        throw new IllegalStateException("computeHash method is called more than once.");
    }
}
