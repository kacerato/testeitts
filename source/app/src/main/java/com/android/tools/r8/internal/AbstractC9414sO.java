package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.function.Function;
import org.eclipse.jdt.core.Signature;

public abstract class AbstractC9414sO {
    public static String a(String str) {
        return "L" + str + ";";
    }

    public static String b(String str) {
        return a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return new IllegalStateException((String) obj);
            }
        }, str);
    }

    public static String c(String str) {
        if (str.length() != 1) {
            if (str.charAt(0) == '[') {
                return c(str.substring(1)) + okhttp3.v.f99450n;
            }
            if (str.charAt(0) == 'L') {
                return str.substring(1, str.length() - 1).replace('/', '.');
            }
            throw new IllegalStateException("Unexpected descriptor: " + str);
        }
        char charAt = str.charAt(0);
        if (charAt == 'F') {
            return TypedValues.Custom.S_FLOAT;
        }
        if (charAt == 'S') {
            return "short";
        }
        if (charAt == 'V') {
            return "void";
        }
        if (charAt == 'Z') {
            return TypedValues.Custom.S_BOOLEAN;
        }
        if (charAt == 'I') {
            return "int";
        }
        if (charAt == 'J') {
            return "long";
        }
        switch (charAt) {
            case 'B':
                return "byte";
            case 'C':
                return "char";
            case 'D':
                return "double";
            default:
                throw new IllegalStateException("Unexpected descriptor: " + str);
        }
    }

    public static DP a(String str, final H50 h50) {
        return DP.a(a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return H50.this.a((String) obj);
            }
        }, str));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String a(Function function, String str) {
        char c10;
        str.getClass();
        switch (str.hashCode()) {
            case -1325958191:
                if (str.equals("double")) {
                    c10 = 0;
                    break;
                }
                c10 = '\uffff';
                break;
            case 104431:
                if (str.equals("int")) {
                    c10 = 1;
                    break;
                }
                c10 = '\uffff';
                break;
            case 3039496:
                if (str.equals("byte")) {
                    c10 = 2;
                    break;
                }
                c10 = '\uffff';
                break;
            case 3052374:
                if (str.equals("char")) {
                    c10 = 3;
                    break;
                }
                c10 = '\uffff';
                break;
            case 3327612:
                if (str.equals("long")) {
                    c10 = 4;
                    break;
                }
                c10 = '\uffff';
                break;
            case 3625364:
                if (str.equals("void")) {
                    c10 = 5;
                    break;
                }
                c10 = '\uffff';
                break;
            case 64711720:
                if (str.equals(TypedValues.Custom.S_BOOLEAN)) {
                    c10 = 6;
                    break;
                }
                c10 = '\uffff';
                break;
            case 97526364:
                if (str.equals(TypedValues.Custom.S_FLOAT)) {
                    c10 = 7;
                    break;
                }
                c10 = '\uffff';
                break;
            case 109413500:
                if (str.equals("short")) {
                    c10 = '\b';
                    break;
                }
                c10 = '\uffff';
                break;
            default:
                c10 = '\uffff';
                break;
        }
        switch (c10) {
            case 0:
                return Signature.SIG_DOUBLE;
            case 1:
                return Signature.SIG_INT;
            case 2:
                return Signature.SIG_BYTE;
            case 3:
                return Signature.SIG_CHAR;
            case 4:
                return Signature.SIG_LONG;
            case 5:
                return "V";
            case 6:
                return Signature.SIG_BOOLEAN;
            case 7:
                return Signature.SIG_FLOAT;
            case '\b':
                return "S";
            default:
                StringBuilder sb2 = new StringBuilder(str.length());
                int length = str.length() - 1;
                if (length >= 0) {
                    while (str.charAt(length) == ']') {
                        if (str.charAt(length - 1) != '[') {
                            throw ((RuntimeException) function.apply("Invalid type: '" + str + "'"));
                        }
                        sb2.append('[');
                        length -= 2;
                    }
                    sb2.append('L');
                    for (int i10 = 0; i10 <= length; i10++) {
                        char charAt = str.charAt(i10);
                        if (charAt == '.') {
                            charAt = '/';
                        }
                        sb2.append(charAt);
                    }
                    sb2.append(';');
                    return sb2.toString();
                }
                throw ((RuntimeException) function.apply("Invalid empty type"));
        }
    }
}
