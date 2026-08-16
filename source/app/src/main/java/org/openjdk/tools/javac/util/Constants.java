package org.openjdk.tools.javac.util;

import org.eclipse.jdt.internal.core.JavaElement;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;

public class Constants {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;

        static {
            int[] iArr = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr;
            try {
                iArr[TypeTag.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.DOUBLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static Object decode(Object obj, Type type) {
        if (!(obj instanceof Integer)) {
            return obj;
        }
        int intValue = ((Integer) obj).intValue();
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? i10 != 3 ? i10 != 4 ? obj : Short.valueOf((short) intValue) : Byte.valueOf((byte) intValue) : Character.valueOf((char) intValue);
        }
        return Boolean.valueOf(intValue != 0);
    }

    public static String format(Object obj, Type type) {
        Object decode = decode(obj, type);
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
        if (i10 == 2) {
            return formatChar(((Character) decode).charValue());
        }
        if (i10 == 3) {
            return formatByte(((Byte) decode).byteValue());
        }
        if (i10 == 5) {
            return formatLong(((Long) decode).longValue());
        }
        if (i10 == 6) {
            return formatFloat(((Float) decode).floatValue());
        }
        if (i10 != 7) {
            if (decode instanceof String) {
                return formatString((String) decode);
            }
            return decode + "";
        }
        return formatDouble(((Double) decode).doubleValue());
    }

    private static String formatByte(byte b10) {
        return String.format("(byte)0x%02x", Byte.valueOf(b10));
    }

    private static String formatChar(char c10) {
        return JavaElement.JEM_MODULAR_CLASSFILE + Convert.quote(c10) + JavaElement.JEM_MODULAR_CLASSFILE;
    }

    private static String formatDouble(double d10) {
        if (Double.isNaN(d10)) {
            return "0.0/0.0";
        }
        if (Double.isInfinite(d10)) {
            return d10 < 0.0d ? "-1.0/0.0" : "1.0/0.0";
        }
        return d10 + "";
    }

    private static String formatFloat(float f10) {
        if (Float.isNaN(f10)) {
            return "0.0f/0.0f";
        }
        if (Float.isInfinite(f10)) {
            return f10 < 0.0f ? "-1.0f/0.0f" : "1.0f/0.0f";
        }
        return f10 + "f";
    }

    private static String formatLong(long j10) {
        return j10 + "L";
    }

    private static String formatShort(short s10) {
        return String.format("(short)%d", Short.valueOf(s10));
    }

    private static String formatString(String str) {
        return '\"' + Convert.quote(str) + '\"';
    }

    public static String format(Object obj) {
        String str;
        if (obj instanceof Byte) {
            return formatByte(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return formatShort(((Short) obj).shortValue());
        }
        if (obj instanceof Long) {
            return formatLong(((Long) obj).longValue());
        }
        if (obj instanceof Float) {
            return formatFloat(((Float) obj).floatValue());
        }
        if (obj instanceof Double) {
            return formatDouble(((Double) obj).doubleValue());
        }
        if (obj instanceof Character) {
            return formatChar(((Character) obj).charValue());
        }
        if (obj instanceof String) {
            return formatString((String) obj);
        }
        if (!(obj instanceof Integer) && !(obj instanceof Boolean)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Argument is not a primitive type or a string; it ");
            if (obj == null) {
                str = "is a null value.";
            } else {
                str = "has class " + obj.getClass().getName();
            }
            sb2.append(str);
            sb2.append(".");
            throw new IllegalArgumentException(sb2.toString());
        }
        return obj.toString();
    }
}
