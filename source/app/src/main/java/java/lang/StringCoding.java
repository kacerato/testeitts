package java.lang;

import jdk.internal.vm.annotation.IntrinsicCandidate;

public class StringCoding {
    private StringCoding() {
    }

    public static int countNonZeroAscii(String s10) {
        byte[] value = s10.value();
        if (s10.isLatin1()) {
            return countNonZeroAsciiLatin1(value, 0, value.length);
        }
        return countNonZeroAsciiUTF16(value, 0, s10.length());
    }

    public static int countNonZeroAsciiLatin1(byte[] ba2, int off, int len) {
        int limit = off + len;
        for (int i10 = off; i10 < limit; i10++) {
            if (ba2[i10] <= 0) {
                return i10 - off;
            }
        }
        return len;
    }

    public static int countNonZeroAsciiUTF16(byte[] ba2, int off, int strlen) {
        int limit = off + strlen;
        for (int i10 = off; i10 < limit; i10++) {
            char c10 = StringUTF16.charAt(ba2, i10);
            if (c10 == 0 || c10 > '\u007f') {
                return i10 - off;
            }
        }
        return strlen;
    }

    public static boolean hasNegatives(byte[] ba2, int off, int len) {
        return countPositives(ba2, off, len) != len;
    }

    @IntrinsicCandidate
    public static int countPositives(byte[] ba2, int off, int len) {
        int limit = off + len;
        for (int i10 = off; i10 < limit; i10++) {
            if (ba2[i10] < 0) {
                return i10 - off;
            }
        }
        return len;
    }

    @IntrinsicCandidate
    public static int implEncodeISOArray(byte[] sa2, int sp, byte[] da2, int dp, int len) {
        int i10 = 0;
        while (i10 < len) {
            int i11 = sp;
            sp++;
            char c10 = StringUTF16.getChar(sa2, i11);
            if (c10 > '\u00ff') {
                break;
            }
            int i12 = dp;
            dp++;
            da2[i12] = (byte) c10;
            i10++;
        }
        return i10;
    }

    @IntrinsicCandidate
    public static int implEncodeAsciiArray(char[] sa2, int sp, byte[] da2, int dp, int len) {
        int i10 = 0;
        while (i10 < len) {
            int i11 = sp;
            sp++;
            char c10 = sa2[i11];
            if (c10 >= '\u0080') {
                break;
            }
            int i12 = dp;
            dp++;
            da2[i12] = (byte) c10;
            i10++;
        }
        return i10;
    }
}
