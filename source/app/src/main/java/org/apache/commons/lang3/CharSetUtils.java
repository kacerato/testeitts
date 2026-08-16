package org.apache.commons.lang3;

public class CharSetUtils {
    public static boolean containsAny(String str, String... strArr) {
        if (!StringUtils.isEmpty(str) && !deepEmpty(strArr)) {
            CharSet charSet = CharSet.getInstance(strArr);
            for (char c10 : str.toCharArray()) {
                if (charSet.contains(c10)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int count(String str, String... strArr) {
        if (StringUtils.isEmpty(str) || deepEmpty(strArr)) {
            return 0;
        }
        CharSet charSet = CharSet.getInstance(strArr);
        int i10 = 0;
        for (char c10 : str.toCharArray()) {
            if (charSet.contains(c10)) {
                i10++;
            }
        }
        return i10;
    }

    private static boolean deepEmpty(String[] strArr) {
        if (strArr == null) {
            return true;
        }
        for (String str : strArr) {
            if (StringUtils.isNotEmpty(str)) {
                return false;
            }
        }
        return true;
    }

    public static String delete(String str, String... strArr) {
        return (StringUtils.isEmpty(str) || deepEmpty(strArr)) ? str : modify(str, strArr, false);
    }

    public static String keep(String str, String... strArr) {
        if (str == null) {
            return null;
        }
        return (str.isEmpty() || deepEmpty(strArr)) ? "" : modify(str, strArr, true);
    }

    private static String modify(String str, String[] strArr, boolean z10) {
        CharSet charSet = CharSet.getInstance(strArr);
        StringBuilder sb2 = new StringBuilder(str.length());
        for (char c10 : str.toCharArray()) {
            if (charSet.contains(c10) == z10) {
                sb2.append(c10);
            }
        }
        return sb2.toString();
    }

    public static String squeeze(String str, String... strArr) {
        if (StringUtils.isEmpty(str) || deepEmpty(strArr)) {
            return str;
        }
        CharSet charSet = CharSet.getInstance(strArr);
        StringBuilder sb2 = new StringBuilder(str.length());
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        char c10 = charArray[0];
        sb2.append(c10);
        Character ch2 = null;
        Character ch3 = null;
        for (int i10 = 1; i10 < length; i10++) {
            char c11 = charArray[i10];
            if (c11 == c10) {
                if (ch2 == null || c11 != ch2.charValue()) {
                    if (ch3 == null || c11 != ch3.charValue()) {
                        if (charSet.contains(c11)) {
                            ch2 = Character.valueOf(c11);
                        } else {
                            ch3 = Character.valueOf(c11);
                        }
                    }
                }
            }
            sb2.append(c11);
            c10 = c11;
        }
        return sb2.toString();
    }
}
