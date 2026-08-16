package org.openjdk.tools.javac.comp;

import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.List;

public class ConstFold {
    private Symtab syms;
    protected static final Context.Key<ConstFold> constFoldKey = new Context.Key<>();
    static final Integer minusOne = -1;
    static final Integer zero = 0;
    static final Integer one = 1;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;

        static {
            int[] iArr = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr;
            try {
                iArr[TypeTag.BYTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.INT.ordinal()] = 4;
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

    private ConstFold(Context context) {
        context.put((Context.Key<Context.Key<ConstFold>>) constFoldKey, (Context.Key<ConstFold>) this);
        this.syms = Symtab.instance(context);
    }

    private static Integer b2i(boolean z10) {
        return z10 ? one : zero;
    }

    private static double doubleValue(Object obj) {
        return ((Number) obj).doubleValue();
    }

    private static float floatValue(Object obj) {
        return ((Number) obj).floatValue();
    }

    public static ConstFold instance(Context context) {
        ConstFold constFold = (ConstFold) context.get(constFoldKey);
        return constFold == null ? new ConstFold(context) : constFold;
    }

    private static int intValue(Object obj) {
        return ((Number) obj).intValue();
    }

    private static long longValue(Object obj) {
        return ((Number) obj).longValue();
    }

    public Type coerce(Type type, Type type2) {
        if (type.tsym.type == type2.tsym.type) {
            return type;
        }
        if (type.isNumeric()) {
            Object constValue = type.constValue();
            switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[type2.getTag().ordinal()]) {
                case 1:
                    return this.syms.byteType.constType(Integer.valueOf((byte) intValue(constValue)));
                case 2:
                    return this.syms.charType.constType(Integer.valueOf((char) intValue(constValue)));
                case 3:
                    return this.syms.shortType.constType(Integer.valueOf((short) intValue(constValue)));
                case 4:
                    return this.syms.intType.constType(Integer.valueOf(intValue(constValue)));
                case 5:
                    return this.syms.longType.constType(Long.valueOf(longValue(constValue)));
                case 6:
                    return this.syms.floatType.constType(Float.valueOf(floatValue(constValue)));
                case 7:
                    return this.syms.doubleType.constType(Double.valueOf(doubleValue(constValue)));
            }
        }
        return type2;
    }

    public Type fold(int i10, List<Type> list) {
        int length = list.length();
        if (length == 1) {
            return fold1(i10, list.head);
        }
        if (length == 2) {
            return fold2(i10, list.head, list.tail.head);
        }
        throw new AssertionError();
    }

    public Type fold1(int i10, Type type) {
        try {
            Object constValue = type.constValue();
            if (i10 == 0) {
                return type;
            }
            if (i10 == 257) {
                return this.syms.booleanType.constType(b2i(intValue(constValue) == 0));
            }
            if (i10 == 130) {
                return this.syms.intType.constType(Integer.valueOf(~intValue(constValue)));
            }
            if (i10 == 131) {
                return this.syms.longType.constType(Long.valueOf(~longValue(constValue)));
            }
            switch (i10) {
                case 116:
                    return this.syms.intType.constType(Integer.valueOf(-intValue(constValue)));
                case 117:
                    return this.syms.longType.constType(Long.valueOf(-longValue(constValue)));
                case 118:
                    return this.syms.floatType.constType(Float.valueOf(-floatValue(constValue)));
                case 119:
                    return this.syms.doubleType.constType(Double.valueOf(-doubleValue(constValue)));
                default:
                    switch (i10) {
                        case 153:
                            return this.syms.booleanType.constType(b2i(intValue(constValue) == 0));
                        case 154:
                            return this.syms.booleanType.constType(b2i(intValue(constValue) != 0));
                        case 155:
                            return this.syms.booleanType.constType(b2i(intValue(constValue) < 0));
                        case 156:
                            return this.syms.booleanType.constType(b2i(intValue(constValue) >= 0));
                        case 157:
                            return this.syms.booleanType.constType(b2i(intValue(constValue) > 0));
                        case 158:
                            return this.syms.booleanType.constType(b2i(intValue(constValue) <= 0));
                        default:
                            return null;
                    }
            }
        } catch (ArithmeticException unused) {
            return null;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x0031. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x0034. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0037. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02a9 A[Catch: ArithmeticException -> 0x0521, TryCatch #0 {ArithmeticException -> 0x0521, blocks: (B:5:0x0007, B:10:0x0012, B:12:0x0018, B:18:0x002e, B:19:0x0031, B:20:0x0034, B:21:0x0037, B:22:0x003a, B:24:0x003e, B:26:0x0050, B:28:0x0061, B:31:0x0070, B:33:0x0079, B:36:0x0088, B:38:0x0091, B:41:0x00a0, B:43:0x00a9, B:46:0x00b8, B:48:0x00c1, B:51:0x00d0, B:53:0x00d9, B:56:0x00e8, B:58:0x00f1, B:60:0x00fd, B:62:0x0108, B:64:0x0114, B:66:0x011f, B:68:0x012b, B:72:0x013a, B:74:0x0145, B:76:0x0150, B:78:0x015c, B:80:0x0167, B:82:0x0173, B:84:0x017e, B:86:0x018a, B:90:0x0199, B:92:0x01a4, B:94:0x01af, B:96:0x01bb, B:98:0x01c6, B:100:0x01d2, B:102:0x01dd, B:104:0x01e8, B:106:0x01fe, B:108:0x0206, B:109:0x020f, B:111:0x020b, B:112:0x0221, B:114:0x0237, B:116:0x023f, B:117:0x0248, B:119:0x0244, B:120:0x025a, B:122:0x0270, B:124:0x0278, B:125:0x0281, B:127:0x027d, B:128:0x0293, B:130:0x02a9, B:132:0x02bf, B:134:0x02d5, B:136:0x02eb, B:138:0x0301, B:140:0x0317, B:142:0x032d, B:144:0x0343, B:146:0x0359, B:148:0x036f, B:150:0x0385, B:152:0x039b, B:154:0x03b1, B:156:0x03c7, B:158:0x03dd, B:160:0x03f3, B:162:0x0409, B:164:0x041f, B:166:0x0435, B:168:0x044b, B:170:0x0461, B:172:0x0477, B:174:0x048d, B:176:0x04a3, B:178:0x04b9, B:180:0x04cf, B:183:0x04df, B:185:0x04e8, B:188:0x04f8, B:190:0x0501), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02bf A[Catch: ArithmeticException -> 0x0521, TryCatch #0 {ArithmeticException -> 0x0521, blocks: (B:5:0x0007, B:10:0x0012, B:12:0x0018, B:18:0x002e, B:19:0x0031, B:20:0x0034, B:21:0x0037, B:22:0x003a, B:24:0x003e, B:26:0x0050, B:28:0x0061, B:31:0x0070, B:33:0x0079, B:36:0x0088, B:38:0x0091, B:41:0x00a0, B:43:0x00a9, B:46:0x00b8, B:48:0x00c1, B:51:0x00d0, B:53:0x00d9, B:56:0x00e8, B:58:0x00f1, B:60:0x00fd, B:62:0x0108, B:64:0x0114, B:66:0x011f, B:68:0x012b, B:72:0x013a, B:74:0x0145, B:76:0x0150, B:78:0x015c, B:80:0x0167, B:82:0x0173, B:84:0x017e, B:86:0x018a, B:90:0x0199, B:92:0x01a4, B:94:0x01af, B:96:0x01bb, B:98:0x01c6, B:100:0x01d2, B:102:0x01dd, B:104:0x01e8, B:106:0x01fe, B:108:0x0206, B:109:0x020f, B:111:0x020b, B:112:0x0221, B:114:0x0237, B:116:0x023f, B:117:0x0248, B:119:0x0244, B:120:0x025a, B:122:0x0270, B:124:0x0278, B:125:0x0281, B:127:0x027d, B:128:0x0293, B:130:0x02a9, B:132:0x02bf, B:134:0x02d5, B:136:0x02eb, B:138:0x0301, B:140:0x0317, B:142:0x032d, B:144:0x0343, B:146:0x0359, B:148:0x036f, B:150:0x0385, B:152:0x039b, B:154:0x03b1, B:156:0x03c7, B:158:0x03dd, B:160:0x03f3, B:162:0x0409, B:164:0x041f, B:166:0x0435, B:168:0x044b, B:170:0x0461, B:172:0x0477, B:174:0x048d, B:176:0x04a3, B:178:0x04b9, B:180:0x04cf, B:183:0x04df, B:185:0x04e8, B:188:0x04f8, B:190:0x0501), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02d5 A[Catch: ArithmeticException -> 0x0521, TryCatch #0 {ArithmeticException -> 0x0521, blocks: (B:5:0x0007, B:10:0x0012, B:12:0x0018, B:18:0x002e, B:19:0x0031, B:20:0x0034, B:21:0x0037, B:22:0x003a, B:24:0x003e, B:26:0x0050, B:28:0x0061, B:31:0x0070, B:33:0x0079, B:36:0x0088, B:38:0x0091, B:41:0x00a0, B:43:0x00a9, B:46:0x00b8, B:48:0x00c1, B:51:0x00d0, B:53:0x00d9, B:56:0x00e8, B:58:0x00f1, B:60:0x00fd, B:62:0x0108, B:64:0x0114, B:66:0x011f, B:68:0x012b, B:72:0x013a, B:74:0x0145, B:76:0x0150, B:78:0x015c, B:80:0x0167, B:82:0x0173, B:84:0x017e, B:86:0x018a, B:90:0x0199, B:92:0x01a4, B:94:0x01af, B:96:0x01bb, B:98:0x01c6, B:100:0x01d2, B:102:0x01dd, B:104:0x01e8, B:106:0x01fe, B:108:0x0206, B:109:0x020f, B:111:0x020b, B:112:0x0221, B:114:0x0237, B:116:0x023f, B:117:0x0248, B:119:0x0244, B:120:0x025a, B:122:0x0270, B:124:0x0278, B:125:0x0281, B:127:0x027d, B:128:0x0293, B:130:0x02a9, B:132:0x02bf, B:134:0x02d5, B:136:0x02eb, B:138:0x0301, B:140:0x0317, B:142:0x032d, B:144:0x0343, B:146:0x0359, B:148:0x036f, B:150:0x0385, B:152:0x039b, B:154:0x03b1, B:156:0x03c7, B:158:0x03dd, B:160:0x03f3, B:162:0x0409, B:164:0x041f, B:166:0x0435, B:168:0x044b, B:170:0x0461, B:172:0x0477, B:174:0x048d, B:176:0x04a3, B:178:0x04b9, B:180:0x04cf, B:183:0x04df, B:185:0x04e8, B:188:0x04f8, B:190:0x0501), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02eb A[Catch: ArithmeticException -> 0x0521, TryCatch #0 {ArithmeticException -> 0x0521, blocks: (B:5:0x0007, B:10:0x0012, B:12:0x0018, B:18:0x002e, B:19:0x0031, B:20:0x0034, B:21:0x0037, B:22:0x003a, B:24:0x003e, B:26:0x0050, B:28:0x0061, B:31:0x0070, B:33:0x0079, B:36:0x0088, B:38:0x0091, B:41:0x00a0, B:43:0x00a9, B:46:0x00b8, B:48:0x00c1, B:51:0x00d0, B:53:0x00d9, B:56:0x00e8, B:58:0x00f1, B:60:0x00fd, B:62:0x0108, B:64:0x0114, B:66:0x011f, B:68:0x012b, B:72:0x013a, B:74:0x0145, B:76:0x0150, B:78:0x015c, B:80:0x0167, B:82:0x0173, B:84:0x017e, B:86:0x018a, B:90:0x0199, B:92:0x01a4, B:94:0x01af, B:96:0x01bb, B:98:0x01c6, B:100:0x01d2, B:102:0x01dd, B:104:0x01e8, B:106:0x01fe, B:108:0x0206, B:109:0x020f, B:111:0x020b, B:112:0x0221, B:114:0x0237, B:116:0x023f, B:117:0x0248, B:119:0x0244, B:120:0x025a, B:122:0x0270, B:124:0x0278, B:125:0x0281, B:127:0x027d, B:128:0x0293, B:130:0x02a9, B:132:0x02bf, B:134:0x02d5, B:136:0x02eb, B:138:0x0301, B:140:0x0317, B:142:0x032d, B:144:0x0343, B:146:0x0359, B:148:0x036f, B:150:0x0385, B:152:0x039b, B:154:0x03b1, B:156:0x03c7, B:158:0x03dd, B:160:0x03f3, B:162:0x0409, B:164:0x041f, B:166:0x0435, B:168:0x044b, B:170:0x0461, B:172:0x0477, B:174:0x048d, B:176:0x04a3, B:178:0x04b9, B:180:0x04cf, B:183:0x04df, B:185:0x04e8, B:188:0x04f8, B:190:0x0501), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0301 A[Catch: ArithmeticException -> 0x0521, TryCatch #0 {ArithmeticException -> 0x0521, blocks: (B:5:0x0007, B:10:0x0012, B:12:0x0018, B:18:0x002e, B:19:0x0031, B:20:0x0034, B:21:0x0037, B:22:0x003a, B:24:0x003e, B:26:0x0050, B:28:0x0061, B:31:0x0070, B:33:0x0079, B:36:0x0088, B:38:0x0091, B:41:0x00a0, B:43:0x00a9, B:46:0x00b8, B:48:0x00c1, B:51:0x00d0, B:53:0x00d9, B:56:0x00e8, B:58:0x00f1, B:60:0x00fd, B:62:0x0108, B:64:0x0114, B:66:0x011f, B:68:0x012b, B:72:0x013a, B:74:0x0145, B:76:0x0150, B:78:0x015c, B:80:0x0167, B:82:0x0173, B:84:0x017e, B:86:0x018a, B:90:0x0199, B:92:0x01a4, B:94:0x01af, B:96:0x01bb, B:98:0x01c6, B:100:0x01d2, B:102:0x01dd, B:104:0x01e8, B:106:0x01fe, B:108:0x0206, B:109:0x020f, B:111:0x020b, B:112:0x0221, B:114:0x0237, B:116:0x023f, B:117:0x0248, B:119:0x0244, B:120:0x025a, B:122:0x0270, B:124:0x0278, B:125:0x0281, B:127:0x027d, B:128:0x0293, B:130:0x02a9, B:132:0x02bf, B:134:0x02d5, B:136:0x02eb, B:138:0x0301, B:140:0x0317, B:142:0x032d, B:144:0x0343, B:146:0x0359, B:148:0x036f, B:150:0x0385, B:152:0x039b, B:154:0x03b1, B:156:0x03c7, B:158:0x03dd, B:160:0x03f3, B:162:0x0409, B:164:0x041f, B:166:0x0435, B:168:0x044b, B:170:0x0461, B:172:0x0477, B:174:0x048d, B:176:0x04a3, B:178:0x04b9, B:180:0x04cf, B:183:0x04df, B:185:0x04e8, B:188:0x04f8, B:190:0x0501), top: B:2:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Type fold2(int i10, Type type, Type type2) {
        try {
            if (i10 > 511) {
                Type fold2 = fold2(i10 >> 9, type, type2);
                return fold2.constValue() == null ? fold2 : fold1(i10 & 511, fold2);
            }
            Object constValue = type.constValue();
            Object constValue2 = type2.constValue();
            if (i10 == 256) {
                return this.syms.stringType.constType(type.stringValue() + type2.stringValue());
            }
            if (i10 == 258) {
                return this.syms.booleanType.constType(b2i((intValue(constValue) & intValue(constValue2)) != 0));
            }
            if (i10 == 259) {
                return this.syms.booleanType.constType(b2i((intValue(constValue) | intValue(constValue2)) != 0));
            }
            switch (i10) {
                case 96:
                    return this.syms.intType.constType(Integer.valueOf(intValue(constValue) + intValue(constValue2)));
                case 97:
                    return this.syms.longType.constType(Long.valueOf(longValue(constValue) + longValue(constValue2)));
                case 98:
                    return this.syms.floatType.constType(Float.valueOf(floatValue(constValue) + floatValue(constValue2)));
                case 99:
                    return this.syms.doubleType.constType(Double.valueOf(doubleValue(constValue) + doubleValue(constValue2)));
                case 100:
                    return this.syms.intType.constType(Integer.valueOf(intValue(constValue) - intValue(constValue2)));
                case 101:
                    return this.syms.longType.constType(Long.valueOf(longValue(constValue) - longValue(constValue2)));
                case 102:
                    return this.syms.floatType.constType(Float.valueOf(floatValue(constValue) - floatValue(constValue2)));
                case 103:
                    return this.syms.doubleType.constType(Double.valueOf(doubleValue(constValue) - doubleValue(constValue2)));
                case 104:
                    return this.syms.intType.constType(Integer.valueOf(intValue(constValue) * intValue(constValue2)));
                case 105:
                    return this.syms.longType.constType(Long.valueOf(longValue(constValue) * longValue(constValue2)));
                case 106:
                    return this.syms.floatType.constType(Float.valueOf(floatValue(constValue) * floatValue(constValue2)));
                case 107:
                    return this.syms.doubleType.constType(Double.valueOf(doubleValue(constValue) * doubleValue(constValue2)));
                case 108:
                    return this.syms.intType.constType(Integer.valueOf(intValue(constValue) / intValue(constValue2)));
                case 109:
                    return this.syms.longType.constType(Long.valueOf(longValue(constValue) / longValue(constValue2)));
                case 110:
                    return this.syms.floatType.constType(Float.valueOf(floatValue(constValue) / floatValue(constValue2)));
                case 111:
                    return this.syms.doubleType.constType(Double.valueOf(doubleValue(constValue) / doubleValue(constValue2)));
                case 112:
                    return this.syms.intType.constType(Integer.valueOf(intValue(constValue) % intValue(constValue2)));
                case 113:
                    return this.syms.longType.constType(Long.valueOf(longValue(constValue) % longValue(constValue2)));
                case 114:
                    return this.syms.floatType.constType(Float.valueOf(floatValue(constValue) % floatValue(constValue2)));
                case 115:
                    return this.syms.doubleType.constType(Double.valueOf(doubleValue(constValue) % doubleValue(constValue2)));
                default:
                    switch (i10) {
                        case 120:
                            return this.syms.intType.constType(Integer.valueOf(intValue(constValue) << intValue(constValue2)));
                        case 121:
                            return this.syms.longType.constType(Long.valueOf(longValue(constValue) << intValue(constValue2)));
                        case 122:
                            return this.syms.intType.constType(Integer.valueOf(intValue(constValue) >> intValue(constValue2)));
                        case 123:
                            return this.syms.longType.constType(Long.valueOf(longValue(constValue) >> intValue(constValue2)));
                        case 124:
                            return this.syms.intType.constType(Integer.valueOf(intValue(constValue) >>> intValue(constValue2)));
                        case 125:
                            return this.syms.longType.constType(Long.valueOf(longValue(constValue) >>> intValue(constValue2)));
                        case 126:
                            return (type.hasTag(TypeTag.BOOLEAN) ? this.syms.booleanType : this.syms.intType).constType(Integer.valueOf(intValue(constValue) & intValue(constValue2)));
                        case 127:
                            return this.syms.longType.constType(Long.valueOf(longValue(constValue) & longValue(constValue2)));
                        case 128:
                            return (type.hasTag(TypeTag.BOOLEAN) ? this.syms.booleanType : this.syms.intType).constType(Integer.valueOf(intValue(constValue) | intValue(constValue2)));
                        case 129:
                            return this.syms.longType.constType(Long.valueOf(longValue(constValue) | longValue(constValue2)));
                        case 130:
                            return (type.hasTag(TypeTag.BOOLEAN) ? this.syms.booleanType : this.syms.intType).constType(Integer.valueOf(intValue(constValue) ^ intValue(constValue2)));
                        case 131:
                            return this.syms.longType.constType(Long.valueOf(longValue(constValue) ^ longValue(constValue2)));
                        default:
                            switch (i10) {
                                case 148:
                                    return longValue(constValue) < longValue(constValue2) ? this.syms.intType.constType(minusOne) : longValue(constValue) > longValue(constValue2) ? this.syms.intType.constType(one) : this.syms.intType.constType(zero);
                                case 149:
                                case 150:
                                    return floatValue(constValue) < floatValue(constValue2) ? this.syms.intType.constType(minusOne) : floatValue(constValue) > floatValue(constValue2) ? this.syms.intType.constType(one) : floatValue(constValue) == floatValue(constValue2) ? this.syms.intType.constType(zero) : i10 == 150 ? this.syms.intType.constType(one) : this.syms.intType.constType(minusOne);
                                case 151:
                                case 152:
                                    return doubleValue(constValue) < doubleValue(constValue2) ? this.syms.intType.constType(minusOne) : doubleValue(constValue) > doubleValue(constValue2) ? this.syms.intType.constType(one) : doubleValue(constValue) == doubleValue(constValue2) ? this.syms.intType.constType(zero) : i10 == 152 ? this.syms.intType.constType(one) : this.syms.intType.constType(minusOne);
                                default:
                                    switch (i10) {
                                        case 159:
                                            return this.syms.booleanType.constType(b2i(intValue(constValue) == intValue(constValue2)));
                                        case 160:
                                            return this.syms.booleanType.constType(b2i(intValue(constValue) != intValue(constValue2)));
                                        case 161:
                                            return this.syms.booleanType.constType(b2i(intValue(constValue) < intValue(constValue2)));
                                        case 162:
                                            return this.syms.booleanType.constType(b2i(intValue(constValue) >= intValue(constValue2)));
                                        case 163:
                                            return this.syms.booleanType.constType(b2i(intValue(constValue) > intValue(constValue2)));
                                        case 164:
                                            return this.syms.booleanType.constType(b2i(intValue(constValue) <= intValue(constValue2)));
                                        case 165:
                                            return this.syms.booleanType.constType(b2i(constValue.equals(constValue2)));
                                        case 166:
                                            return this.syms.booleanType.constType(b2i(!constValue.equals(constValue2)));
                                        default:
                                            switch (i10) {
                                                case 270:
                                                    break;
                                                case 271:
                                                    break;
                                                case 272:
                                                    break;
                                                case 273:
                                                    break;
                                                case 274:
                                                    break;
                                                default:
                                                    return null;
                                            }
                                    }
                            }
                    }
            }
        } catch (ArithmeticException unused) {
            return null;
        }
    }
}
