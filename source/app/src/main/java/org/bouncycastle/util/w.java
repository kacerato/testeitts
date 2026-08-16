package org.bouncycastle.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Vector;
import w2.C15883c;

public final class w {

    public static String f102340a;

    public class a implements PrivilegedAction<String> {
        @Override
        public String run() {
            return System.getProperty("line.separator");
        }
    }

    public static class b extends ArrayList<String> implements v {
        public b() {
        }

        @Override
        public String[] Q6(int i10, int i11) {
            String[] strArr = new String[i11 - i10];
            for (int i12 = i10; i12 != size() && i12 != i11; i12++) {
                strArr[i12 - i10] = get(i12);
            }
            return strArr;
        }

        @Override
        public void add(int i10, String str) {
            super.add(i10, str);
        }

        @Override
        public String set(int i10, String str) {
            return (String) super.set(i10, str);
        }

        @Override
        public String get(int i10) {
            return (String) super.get(i10);
        }

        @Override
        public String[] t4() {
            int size = size();
            String[] strArr = new String[size];
            for (int i10 = 0; i10 != size; i10++) {
                strArr[i10] = get(i10);
            }
            return strArr;
        }

        public b(a aVar) {
            this();
        }

        @Override
        public boolean add(String str) {
            return super.add((b) str);
        }
    }

    static {
        try {
            try {
                f102340a = (String) AccessController.doPrivileged(new a());
            } catch (Exception unused) {
                f102340a = String.format("%n", new Object[0]);
            }
        } catch (Exception unused2) {
            f102340a = "\n";
        }
    }

    public static char[] a(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i10 = 0; i10 != length; i10++) {
            cArr[i10] = (char) (bArr[i10] & 255);
        }
        return cArr;
    }

    public static boolean b(String str, String str2) {
        boolean z10 = str.length() == str2.length();
        int length = str.length();
        if (z10) {
            for (int i10 = 0; i10 != length; i10++) {
                z10 &= str.charAt(i10) == str2.charAt(i10);
            }
        } else {
            for (int i11 = 0; i11 != length; i11++) {
                z10 &= str.charAt(i11) == ' ';
            }
        }
        return z10;
    }

    public static String c(byte[] bArr) {
        return new String(a(bArr));
    }

    public static String d(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        int c10 = em.l.c(bArr, cArr);
        if (c10 >= 0) {
            return new String(cArr, 0, c10);
        }
        throw new IllegalArgumentException("Invalid UTF-8 input");
    }

    public static String e(byte[] bArr, int i10, int i11) {
        char[] cArr = new char[i11];
        int b10 = em.l.b(bArr, i10, i11, cArr);
        if (b10 >= 0) {
            return new String(cArr, 0, b10);
        }
        throw new IllegalArgumentException("Invalid UTF-8 input");
    }

    public static String f() {
        return f102340a;
    }

    public static v g() {
        return new b(null);
    }

    public static String[] h(String str, char c10) {
        int i10;
        Vector vector = new Vector();
        boolean z10 = true;
        while (true) {
            if (!z10) {
                break;
            }
            int indexOf = str.indexOf(c10);
            if (indexOf > 0) {
                vector.addElement(str.substring(0, indexOf));
                str = str.substring(indexOf + 1);
            } else {
                vector.addElement(str);
                z10 = false;
            }
        }
        int size = vector.size();
        String[] strArr = new String[size];
        for (i10 = 0; i10 != size; i10++) {
            strArr[i10] = (String) vector.elementAt(i10);
        }
        return strArr;
    }

    public static int i(String str, byte[] bArr, int i10) {
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            bArr[i10 + i11] = (byte) str.charAt(i11);
        }
        return length;
    }

    public static byte[] j(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 != length; i10++) {
            bArr[i10] = (byte) str.charAt(i10);
        }
        return bArr;
    }

    public static byte[] k(char[] cArr) {
        int length = cArr.length;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 != length; i10++) {
            bArr[i10] = (byte) cArr[i10];
        }
        return bArr;
    }

    public static String l(String str) {
        char[] charArray = str.toCharArray();
        boolean z10 = false;
        for (int i10 = 0; i10 != charArray.length; i10++) {
            char c10 = charArray[i10];
            if ('A' <= c10 && 'Z' >= c10) {
                charArray[i10] = (char) (c10 + C15883c.f126249O);
                z10 = true;
            }
        }
        return z10 ? new String(charArray) : str;
    }

    public static void m(char[] cArr, OutputStream outputStream) throws IOException {
        int i10;
        int i11;
        int i12 = 0;
        while (i12 < cArr.length) {
            char c10 = cArr[i12];
            int i13 = c10;
            if (c10 >= '\u0080') {
                if (c10 < '\u0800') {
                    i10 = (c10 >> 6) | 192;
                } else if (c10 < '\ud800' || c10 > '\udfff') {
                    outputStream.write((c10 >> '\f') | 224);
                    i10 = ((c10 >> 6) & 63) | 128;
                } else {
                    i12++;
                    if (i12 >= cArr.length) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    char c11 = cArr[i12];
                    if (c10 > '\udbff') {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    int i14 = (((c10 & '\u03ff') << 10) | (c11 & '\u03ff')) + 65536;
                    outputStream.write((i14 >> 18) | 240);
                    outputStream.write(((i14 >> 12) & 63) | 128);
                    outputStream.write(((i14 >> 6) & 63) | 128);
                    i11 = i14;
                    i13 = (i11 & 63) | 128;
                }
                outputStream.write(i10);
                i11 = c10;
                i13 = (i11 & 63) | 128;
            }
            outputStream.write(i13);
            i12++;
        }
    }

    public static byte[] n(String str) {
        return o(str.toCharArray());
    }

    public static byte[] o(char[] cArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            m(cArr, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            throw new IllegalStateException("cannot encode string to byte array!");
        }
    }

    public static String p(String str) {
        char[] charArray = str.toCharArray();
        boolean z10 = false;
        for (int i10 = 0; i10 != charArray.length; i10++) {
            char c10 = charArray[i10];
            if ('a' <= c10 && 'z' >= c10) {
                charArray[i10] = (char) (c10 - ' ');
                z10 = true;
            }
        }
        return z10 ? new String(charArray) : str;
    }
}
