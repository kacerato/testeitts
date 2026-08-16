package org.luaj.vm2.ast;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import org.luaj.vm2.LuaString;

public class Str {
    private Str() {
    }

    public static LuaString charString(String str) {
        return LuaString.valueUsing(unquote(str.substring(1, str.length() - 1)));
    }

    public static byte[] iso88591bytes(String str) {
        try {
            return str.getBytes("ISO8859-1");
        } catch (UnsupportedEncodingException unused) {
            throw new IllegalStateException("ISO8859-1 not supported");
        }
    }

    public static LuaString longString(String str) {
        int indexOf = str.indexOf(91, str.indexOf(91) + 1) + 1;
        return LuaString.valueUsing(iso88591bytes(str.substring(indexOf, str.length() - indexOf)));
    }

    public static LuaString quoteString(String str) {
        return LuaString.valueUsing(unquote(str.substring(1, str.length() - 1)));
    }

    public static byte[] unquote(String str) {
        byte b10;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i10 = 0;
        while (i10 < length) {
            char c10 = charArray[i10];
            if (c10 != '\\' || i10 >= length) {
                byteArrayOutputStream.write((byte) c10);
            } else {
                int i11 = i10 + 1;
                char c11 = charArray[i11];
                int i12 = 34;
                if (c11 != '\"') {
                    i12 = 39;
                    if (c11 != '\'') {
                        if (c11 != '\\') {
                            if (c11 == 'f') {
                                b10 = 12;
                            } else if (c11 == 'n') {
                                b10 = 10;
                            } else if (c11 == 'r') {
                                b10 = 13;
                            } else if (c11 == 't') {
                                b10 = 9;
                            } else if (c11 == 'v') {
                                b10 = 11;
                            } else if (c11 == 'a') {
                                b10 = 7;
                            } else if (c11 != 'b') {
                                switch (c11) {
                                    case '0':
                                    case '1':
                                    case '2':
                                    case '3':
                                    case '4':
                                    case '5':
                                    case '6':
                                    case '7':
                                    case '8':
                                    case '9':
                                        int i13 = i10 + 2;
                                        int i14 = c11 - '0';
                                        for (int i15 = 0; i13 < length && i15 < 2; i15++) {
                                            char c12 = charArray[i13];
                                            if (c12 >= '0' && c12 <= '9') {
                                                i14 = (i14 * 10) + (c12 - '0');
                                                i13++;
                                            }
                                        }
                                        byteArrayOutputStream.write((byte) i14);
                                        i10 = i13 - 1;
                                        continue;
                                    default:
                                        b10 = (byte) c11;
                                        break;
                                }
                            } else {
                                b10 = 8;
                            }
                            byteArrayOutputStream.write(b10);
                        } else {
                            byteArrayOutputStream.write(92);
                        }
                        i10 = i11;
                    }
                }
                byteArrayOutputStream.write(i12);
                i10 = i11;
            }
            i10++;
        }
        return byteArrayOutputStream.toByteArray();
    }
}
