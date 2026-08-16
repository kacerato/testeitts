package org.openjdk.tools.javac.util;

import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class Convert {
    public static int chars2utf(char[] cArr, int i10, byte[] bArr, int i11, int i12) {
        int i13 = i12 + i10;
        while (i10 < i13) {
            char c10 = cArr[i10];
            if (1 <= c10 && c10 <= '\u007f') {
                bArr[i11] = (byte) c10;
                i11++;
            } else if (c10 <= '\u07ff') {
                int i14 = i11 + 1;
                bArr[i11] = (byte) ((c10 >> 6) | 192);
                i11 += 2;
                bArr[i14] = (byte) ((c10 & '?') | 128);
            } else {
                bArr[i11] = (byte) ((c10 >> '\f') | 224);
                int i15 = i11 + 2;
                bArr[i11 + 1] = (byte) (((c10 >> 6) & 63) | 128);
                i11 += 3;
                bArr[i15] = (byte) ((c10 & '?') | 128);
            }
            i10++;
        }
        return i11;
    }

    public static List<Name> classCandidates(Name name) {
        List nil = List.nil();
        String name2 = name.toString();
        int i10 = -1;
        while (true) {
            i10 = name2.indexOf(46, i10 + 1);
            if (i10 <= 0) {
                return nil.reverse();
            }
            int i11 = i10 + 1;
            String substring = name2.substring(0, i11);
            String replace = name2.substring(i11).replace('.', '$');
            nil = nil.prepend(name.table.names.fromString(substring + replace));
        }
    }

    public static List<Name> enclosingCandidates(Name name) {
        List<Name> nil = List.nil();
        while (true) {
            int lastIndexOf = name.lastIndexOf(Opcodes.OPC_fload_2);
            if (lastIndexOf <= 0) {
                return nil;
            }
            name = name.subName(0, lastIndexOf);
            nil = nil.prepend(name);
        }
    }

    public static String escapeUnicode(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            if (str.charAt(i10) > '\u00ff') {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str.substring(0, i10));
                while (i10 < length) {
                    char charAt = str.charAt(i10);
                    if (charAt > '\u00ff') {
                        sb2.append("\\u");
                        sb2.append(Character.forDigit((charAt >> '\f') % 16, 16));
                        sb2.append(Character.forDigit((charAt >> '\b') % 16, 16));
                        sb2.append(Character.forDigit((charAt >> 4) % 16, 16));
                        sb2.append(Character.forDigit(charAt % 16, 16));
                    } else {
                        sb2.append(charAt);
                    }
                    i10++;
                }
                str = sb2.toString();
            } else {
                i10++;
            }
        }
        return str;
    }

    private static boolean isPrintableAscii(char c10) {
        return c10 >= ' ' && c10 <= '~';
    }

    public static Name packagePart(Name name) {
        return name.subName(0, name.lastIndexOf(Opcodes.OPC_iaload));
    }

    public static String quote(String str) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < str.length(); i10++) {
            sb2.append(quote(str.charAt(i10)));
        }
        return sb2.toString();
    }

    public static Name shortName(Name name) {
        return name.subName(name.lastIndexOf(Opcodes.OPC_iaload) + 1, name.getByteLength());
    }

    public static int string2int(String str, int i10) throws NumberFormatException {
        int i11;
        if (i10 == 10) {
            return Integer.parseInt(str, i10);
        }
        int i12 = Integer.MAX_VALUE / (i10 / 2);
        int i13 = 0;
        for (char c10 : str.toCharArray()) {
            int digit = Character.digit(c10, i10);
            if (i13 < 0 || i13 > i12 || (i11 = i13 * i10) > Integer.MAX_VALUE - digit) {
                throw new NumberFormatException();
            }
            i13 = i11 + digit;
        }
        return i13;
    }

    public static long string2long(String str, int i10) throws NumberFormatException {
        if (i10 == 10) {
            return Long.parseLong(str, i10);
        }
        long j10 = Long.MAX_VALUE / (i10 / 2);
        long j11 = 0;
        for (char c10 : str.toCharArray()) {
            int digit = Character.digit(c10, i10);
            if (j11 >= 0 && j11 <= j10) {
                long j12 = j11 * i10;
                long j13 = digit;
                if (j12 <= Long.MAX_VALUE - j13) {
                    j11 = j12 + j13;
                }
            }
            throw new NumberFormatException();
        }
        return j11;
    }

    public static byte[] string2utf(String str) {
        return chars2utf(str.toCharArray());
    }

    public static int utf2chars(byte[] bArr, int i10, char[] cArr, int i11, int i12) {
        int i13 = i12 + i10;
        while (i10 < i13) {
            int i14 = i10 + 1;
            byte b10 = bArr[i10];
            int i15 = b10 & 255;
            if (i15 >= 224) {
                int i16 = i10 + 2;
                i10 += 3;
                i15 = ((bArr[i14] & Opcodes.OPC_lstore_0) << 6) | ((b10 & 15) << 12) | (bArr[i16] & Opcodes.OPC_lstore_0);
            } else if (i15 >= 192) {
                i10 += 2;
                i15 = ((b10 & 31) << 6) | (bArr[i14] & Opcodes.OPC_lstore_0);
            } else {
                i10 = i14;
            }
            cArr[i11] = (char) i15;
            i11++;
        }
        return i11;
    }

    public static String utf2string(byte[] bArr, int i10, int i11) {
        char[] cArr = new char[i11];
        return new String(cArr, 0, utf2chars(bArr, i10, cArr, 0, i11));
    }

    public static String packagePart(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf < 0 ? "" : str.substring(0, lastIndexOf);
    }

    public static String shortName(String str) {
        return str.substring(str.lastIndexOf(46) + 1);
    }

    public static String utf2string(byte[] bArr) {
        return utf2string(bArr, 0, bArr.length);
    }

    public static String quote(char c10) {
        if (c10 == '\f') {
            return "\\f";
        }
        if (c10 == '\r') {
            return "\\r";
        }
        if (c10 == '\"') {
            return "\\\"";
        }
        if (c10 == '\'') {
            return "\\'";
        }
        if (c10 != '\\') {
            switch (c10) {
                case '\b':
                    return "\\b";
                case '\t':
                    return "\\t";
                case '\n':
                    return "\\n";
                default:
                    if (isPrintableAscii(c10)) {
                        return String.valueOf(c10);
                    }
                    return String.format("\\u%04x", Integer.valueOf(c10));
            }
        }
        return "\\\\";
    }

    public static char[] utf2chars(byte[] bArr, int i10, int i11) {
        char[] cArr = new char[i11];
        int utf2chars = utf2chars(bArr, i10, cArr, 0, i11);
        char[] cArr2 = new char[utf2chars];
        System.arraycopy(cArr, 0, cArr2, 0, utf2chars);
        return cArr2;
    }

    public static byte[] chars2utf(char[] cArr, int i10, int i11) {
        byte[] bArr = new byte[i11 * 3];
        int chars2utf = chars2utf(cArr, i10, bArr, 0, i11);
        byte[] bArr2 = new byte[chars2utf];
        System.arraycopy(bArr, 0, bArr2, 0, chars2utf);
        return bArr2;
    }

    public static char[] utf2chars(byte[] bArr) {
        return utf2chars(bArr, 0, bArr.length);
    }

    public static byte[] chars2utf(char[] cArr) {
        return chars2utf(cArr, 0, cArr.length);
    }
}
