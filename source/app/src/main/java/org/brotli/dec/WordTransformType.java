package org.brotli.dec;

final class WordTransformType {
    static final int IDENTITY = 0;
    static final int OMIT_FIRST_1 = 12;
    static final int OMIT_FIRST_2 = 13;
    static final int OMIT_FIRST_3 = 14;
    static final int OMIT_FIRST_4 = 15;
    static final int OMIT_FIRST_5 = 16;
    static final int OMIT_FIRST_6 = 17;
    static final int OMIT_FIRST_7 = 18;
    static final int OMIT_FIRST_8 = 19;
    static final int OMIT_FIRST_9 = 20;
    static final int OMIT_LAST_1 = 1;
    static final int OMIT_LAST_2 = 2;
    static final int OMIT_LAST_3 = 3;
    static final int OMIT_LAST_4 = 4;
    static final int OMIT_LAST_5 = 5;
    static final int OMIT_LAST_6 = 6;
    static final int OMIT_LAST_7 = 7;
    static final int OMIT_LAST_8 = 8;
    static final int OMIT_LAST_9 = 9;
    static final int UPPERCASE_ALL = 11;
    static final int UPPERCASE_FIRST = 10;

    public static int getOmitFirst(int i10) {
        if (i10 >= 12) {
            return i10 - 11;
        }
        return 0;
    }

    public static int getOmitLast(int i10) {
        if (i10 <= 9) {
            return i10;
        }
        return 0;
    }
}
