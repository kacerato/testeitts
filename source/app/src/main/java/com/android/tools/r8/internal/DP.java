package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

public abstract class DP {
    public static DP a(String str) {
        char charAt = str.charAt(0);
        int i10 = 1;
        if (charAt != 'L') {
            if (charAt == '[') {
                while (str.charAt(i10) == '[') {
                    i10++;
                }
                return new AP(new JM(a(str.substring(i10)), i10));
            }
            CP cp = (CP) CP.f39216c.get(str);
            if (cp != null) {
                return cp;
            }
            throw new FN("Invalid type descriptor: " + str);
        }
        if (str.charAt(str.length() - 1) == ';') {
            YM ym2 = YM.f45975c;
            C8415mP b10 = C8415mP.b(str);
            C8415mP.a();
            CO co = CO.f39210c;
            if (!b10.c() || !co.f39212a.c()) {
                ym2 = new YM(b10, co);
            }
            return new BP(ym2);
        }
        throw new FN("Invalid type descriptor: " + str);
    }

    public static void b() {
    }

    public abstract Object a(Supplier supplier, Function function, Function function2, Function function3);

    public static DP a(KeepSpecProtos.TypePattern typePattern) {
        DP dp;
        C8081kP c8081kP;
        if (typePattern.hasPrimitive()) {
            KeepSpecProtos.TypePatternPrimitive primitive = typePattern.getPrimitive();
            C8081kP c8081kP2 = C8081kP.f49607b;
            switch (primitive.getNumber()) {
                case 1:
                    c8081kP = C8081kP.f49608c;
                    break;
                case 2:
                    c8081kP = C8081kP.f49609d;
                    break;
                case 3:
                    c8081kP = C8081kP.f49610e;
                    break;
                case 4:
                    c8081kP = C8081kP.f49611f;
                    break;
                case 5:
                    c8081kP = C8081kP.f49612g;
                    break;
                case 6:
                    c8081kP = C8081kP.f49613h;
                    break;
                case 7:
                    c8081kP = C8081kP.f49614i;
                    break;
                case 8:
                    c8081kP = C8081kP.f49615j;
                    break;
                default:
                    c8081kP = c8081kP2;
                    break;
            }
            if (c8081kP == c8081kP2) {
                return CP.f39215b;
            }
            return (DP) CP.f39216c.get(Character.toString(c8081kP.a()));
        }
        if (typePattern.hasArray()) {
            KeepSpecProtos.TypePatternArray array = typePattern.getArray();
            JM jm2 = JM.f41381c;
            if (array.hasBaseType()) {
                dp = a(array.getBaseType());
            } else {
                dp = C10585zP.f54372a;
            }
            return new AP(new JM(dp, Math.max(1, array.getDimensions())));
        }
        if (typePattern.hasClassPattern()) {
            return new BP(YM.a(typePattern.getClassPattern()));
        }
        return C10585zP.f54372a;
    }

    public final KeepSpecProtos.TypePattern.Builder a() {
        final KeepSpecProtos.TypePattern.Builder newBuilder = KeepSpecProtos.TypePattern.newBuilder();
        a(H4.b(new Runnable() {
            @Override
            public final void run() {
                DP.b();
            }
        }), H4.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DP.a(KeepSpecProtos.TypePattern.Builder.this, (C8081kP) obj);
            }
        }), H4.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DP.a(KeepSpecProtos.TypePattern.Builder.this, (JM) obj);
            }
        }), H4.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.TypePattern.Builder.this.setClassPattern(((YM) obj).a());
            }
        }));
        return newBuilder;
    }

    public static void a(KeepSpecProtos.TypePattern.Builder builder, C8081kP c8081kP) {
        KeepSpecProtos.TypePatternPrimitive typePatternPrimitive;
        c8081kP.getClass();
        if (c8081kP == C8081kP.f49608c) {
            typePatternPrimitive = KeepSpecProtos.TypePatternPrimitive.PRIMITIVE_BOOLEAN;
        } else if (c8081kP == C8081kP.f49609d) {
            typePatternPrimitive = KeepSpecProtos.TypePatternPrimitive.PRIMITIVE_BYTE;
        } else if (c8081kP == C8081kP.f49610e) {
            typePatternPrimitive = KeepSpecProtos.TypePatternPrimitive.PRIMITIVE_CHAR;
        } else if (c8081kP == C8081kP.f49611f) {
            typePatternPrimitive = KeepSpecProtos.TypePatternPrimitive.PRIMITIVE_SHORT;
        } else if (c8081kP == C8081kP.f49612g) {
            typePatternPrimitive = KeepSpecProtos.TypePatternPrimitive.PRIMITIVE_INT;
        } else if (c8081kP == C8081kP.f49613h) {
            typePatternPrimitive = KeepSpecProtos.TypePatternPrimitive.PRIMITIVE_LONG;
        } else if (c8081kP == C8081kP.f49614i) {
            typePatternPrimitive = KeepSpecProtos.TypePatternPrimitive.PRIMITIVE_FLOAT;
        } else if (c8081kP == C8081kP.f49615j) {
            typePatternPrimitive = KeepSpecProtos.TypePatternPrimitive.PRIMITIVE_DOUBLE;
        } else {
            if (!C8081kP.f49617l && c8081kP != C8081kP.f49607b) {
                throw new AssertionError();
            }
            typePatternPrimitive = KeepSpecProtos.TypePatternPrimitive.PRIMITIVE_UNSPECIFIED;
        }
        builder.setPrimitive(typePatternPrimitive);
    }

    public static void a(KeepSpecProtos.TypePattern.Builder builder, JM jm2) {
        jm2.getClass();
        builder.setArray(KeepSpecProtos.TypePatternArray.newBuilder().setDimensions(jm2.f41384b).setBaseType(jm2.f41383a.a()));
    }
}
