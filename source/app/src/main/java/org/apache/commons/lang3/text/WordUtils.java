package org.apache.commons.lang3.text;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;

@Deprecated
public class WordUtils {
    public static String capitalize(String str) {
        return capitalize(str, null);
    }

    public static String capitalizeFully(String str) {
        return capitalizeFully(str, null);
    }

    public static boolean containsAllWords(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (StringUtils.isEmpty(charSequence) || ArrayUtils.isEmpty(charSequenceArr)) {
            return false;
        }
        for (CharSequence charSequence2 : charSequenceArr) {
            if (StringUtils.isBlank(charSequence2)) {
                return false;
            }
            if (!Pattern.compile(".*\\b" + ((Object) charSequence2) + "\\b.*").matcher(charSequence).matches()) {
                return false;
            }
        }
        return true;
    }

    public static String initials(String str) {
        return initials(str, null);
    }

    private static boolean isDelimiter(char c10, char[] cArr) {
        if (cArr == null) {
            return Character.isWhitespace(c10);
        }
        for (char c11 : cArr) {
            if (c10 == c11) {
                return true;
            }
        }
        return false;
    }

    public static String swapCase(String str) {
        if (StringUtils.isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        boolean z10 = true;
        for (int i10 = 0; i10 < charArray.length; i10++) {
            char c10 = charArray[i10];
            if (Character.isUpperCase(c10)) {
                charArray[i10] = Character.toLowerCase(c10);
            } else if (Character.isTitleCase(c10)) {
                charArray[i10] = Character.toLowerCase(c10);
            } else {
                if (!Character.isLowerCase(c10)) {
                    z10 = Character.isWhitespace(c10);
                } else if (z10) {
                    charArray[i10] = Character.toTitleCase(c10);
                } else {
                    charArray[i10] = Character.toUpperCase(c10);
                }
            }
            z10 = false;
        }
        return new String(charArray);
    }

    public static String uncapitalize(String str) {
        return uncapitalize(str, null);
    }

    public static String wrap(String str, int i10) {
        return wrap(str, i10, null, false);
    }

    public static String capitalize(String str, char... cArr) {
        int length = cArr == null ? -1 : cArr.length;
        if (StringUtils.isEmpty(str) || length == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        boolean z10 = true;
        for (int i10 = 0; i10 < charArray.length; i10++) {
            char c10 = charArray[i10];
            if (isDelimiter(c10, cArr)) {
                z10 = true;
            } else if (z10) {
                charArray[i10] = Character.toTitleCase(c10);
                z10 = false;
            }
        }
        return new String(charArray);
    }

    public static String capitalizeFully(String str, char... cArr) {
        return (StringUtils.isEmpty(str) || (cArr == null ? -1 : cArr.length) == 0) ? str : capitalize(str.toLowerCase(), cArr);
    }

    public static String initials(String str, char... cArr) {
        if (StringUtils.isEmpty(str)) {
            return str;
        }
        if (cArr != null && cArr.length == 0) {
            return "";
        }
        int length = str.length();
        char[] cArr2 = new char[(length / 2) + 1];
        boolean z10 = true;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char charAt = str.charAt(i11);
            if (isDelimiter(charAt, cArr)) {
                z10 = true;
            } else if (z10) {
                cArr2[i10] = charAt;
                i10++;
                z10 = false;
            }
        }
        return new String(cArr2, 0, i10);
    }

    public static String uncapitalize(String str, char... cArr) {
        int length = cArr == null ? -1 : cArr.length;
        if (StringUtils.isEmpty(str) || length == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        boolean z10 = true;
        for (int i10 = 0; i10 < charArray.length; i10++) {
            char c10 = charArray[i10];
            if (isDelimiter(c10, cArr)) {
                z10 = true;
            } else if (z10) {
                charArray[i10] = Character.toLowerCase(c10);
                z10 = false;
            }
        }
        return new String(charArray);
    }

    public static String wrap(String str, int i10, String str2, boolean z10) {
        return wrap(str, i10, str2, z10, " ");
    }

    public static String wrap(String str, int i10, String str2, boolean z10, String str3) {
        int i11;
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = System.lineSeparator();
        }
        if (i10 < 1) {
            i10 = 1;
        }
        if (StringUtils.isBlank(str3)) {
            str3 = " ";
        }
        Pattern compile = Pattern.compile(str3);
        int length = str.length();
        StringBuilder sb2 = new StringBuilder(length + 32);
        int i12 = 0;
        while (i12 < length) {
            int i13 = i12 + i10;
            Matcher matcher = compile.matcher(str.substring(i12, Math.min(i13 + 1, length)));
            if (!matcher.find()) {
                i11 = -1;
            } else if (matcher.start() == 0) {
                i12 += matcher.end();
            } else {
                i11 = matcher.start() + i12;
            }
            if (length - i12 <= i10) {
                break;
            }
            while (matcher.find()) {
                i11 = matcher.start() + i12;
            }
            if (i11 >= i12) {
                sb2.append(str.substring(i12, i11));
                sb2.append(str2);
            } else if (z10) {
                sb2.append(str.substring(i12, i13));
                sb2.append(str2);
                i12 = i13;
            } else {
                Matcher matcher2 = compile.matcher(str.substring(i13));
                if (matcher2.find()) {
                    i11 = matcher2.start() + i12 + i10;
                }
                if (i11 >= 0) {
                    sb2.append(str.substring(i12, i11));
                    sb2.append(str2);
                } else {
                    sb2.append(str.substring(i12));
                    i12 = length;
                }
            }
            i12 = i11 + 1;
        }
        sb2.append(str.substring(i12));
        return sb2.toString();
    }
}
