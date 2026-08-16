package org.apache.commons.lang3;

import java.util.Random;

@Deprecated
public class RandomStringUtils {
    private static final Random RANDOM = new Random();

    public static String random(int i10) {
        return random(i10, false, false);
    }

    public static String randomAlphabetic(int i10) {
        return random(i10, true, false);
    }

    public static String randomAlphanumeric(int i10) {
        return random(i10, true, true);
    }

    public static String randomAscii(int i10) {
        return random(i10, 32, 127, false, false);
    }

    public static String randomGraph(int i10) {
        return random(i10, 33, 126, false, false);
    }

    public static String randomNumeric(int i10) {
        return random(i10, false, true);
    }

    public static String randomPrint(int i10) {
        return random(i10, 32, 126, false, false);
    }

    public static String random(int i10, boolean z10, boolean z11) {
        return random(i10, 0, 0, z10, z11);
    }

    public static String randomAlphabetic(int i10, int i11) {
        return randomAlphabetic(RandomUtils.nextInt(i10, i11));
    }

    public static String randomAlphanumeric(int i10, int i11) {
        return randomAlphanumeric(RandomUtils.nextInt(i10, i11));
    }

    public static String randomAscii(int i10, int i11) {
        return randomAscii(RandomUtils.nextInt(i10, i11));
    }

    public static String randomGraph(int i10, int i11) {
        return randomGraph(RandomUtils.nextInt(i10, i11));
    }

    public static String randomNumeric(int i10, int i11) {
        return randomNumeric(RandomUtils.nextInt(i10, i11));
    }

    public static String randomPrint(int i10, int i11) {
        return randomPrint(RandomUtils.nextInt(i10, i11));
    }

    public static String random(int i10, int i11, int i12, boolean z10, boolean z11) {
        return random(i10, i11, i12, z10, z11, null, RANDOM);
    }

    public static String random(int i10, int i11, int i12, boolean z10, boolean z11, char... cArr) {
        return random(i10, i11, i12, z10, z11, cArr, RANDOM);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String random(int i10, int i11, int i12, boolean z10, boolean z11, char[] cArr, Random random) {
        char c10;
        if (i10 == 0) {
            return "";
        }
        if (i10 >= 0) {
            if (cArr != 0 && cArr.length == 0) {
                throw new IllegalArgumentException("The chars array must not be empty");
            }
            if (i11 == 0 && i12 == 0) {
                if (cArr != 0) {
                    i12 = cArr.length;
                } else if (z10 || z11) {
                    i12 = 123;
                    i11 = 32;
                } else {
                    i12 = 1114111;
                }
            } else if (i12 <= i11) {
                throw new IllegalArgumentException("Parameter end (" + i12 + ") must be greater than start (" + i11 + ")");
            }
            if (cArr == 0 && ((z11 && i12 <= 48) || (z10 && i12 <= 65))) {
                throw new IllegalArgumentException("Parameter end (" + i12 + ") must be greater then (48) for generating digits or greater then (65) for generating letters.");
            }
            StringBuilder sb2 = new StringBuilder(i10);
            int i13 = i12 - i11;
            while (true) {
                int i14 = i10 - 1;
                if (i10 != 0) {
                    if (cArr == 0) {
                        c10 = random.nextInt(i13) + i11;
                        int type = Character.getType(c10);
                        if (type != 0 && type != 18 && type != 19) {
                        }
                    } else {
                        c10 = cArr[random.nextInt(i13) + i11];
                    }
                    int charCount = Character.charCount(c10);
                    if (i14 != 0 || charCount <= 1) {
                        if ((z10 && Character.isLetter(c10)) || ((z11 && Character.isDigit(c10)) || (!z10 && !z11))) {
                            sb2.appendCodePoint(c10);
                            i10 = charCount == 2 ? i10 - 2 : i14;
                        }
                    }
                } else {
                    return sb2.toString();
                }
            }
        } else {
            throw new IllegalArgumentException("Requested random string length " + i10 + " is less than 0.");
        }
    }

    public static String random(int i10, String str) {
        if (str == null) {
            return random(i10, 0, 0, false, false, null, RANDOM);
        }
        return random(i10, str.toCharArray());
    }

    public static String random(int i10, char... cArr) {
        if (cArr == null) {
            return random(i10, 0, 0, false, false, null, RANDOM);
        }
        return random(i10, 0, cArr.length, false, false, cArr, RANDOM);
    }
}
