package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.lang.constant.ConstantDescs;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC8071kK {

    public static final EnumC8071kK f49580d = new EnumC8071kK(0, 112, 118, "DIRECT");

    public static final EnumC8071kK f49581e = new EnumC8071kK(1, 114, 120, "INTERFACE");

    public static final EnumC8071kK f49582f = new EnumC8071kK(2, 113, 119, "STATIC");

    public static final EnumC8071kK f49583g = new EnumC8071kK(3, 111, 117, "SUPER");

    public static final EnumC8071kK f49584h = new EnumC8071kK(4, 110, 116, "VIRTUAL");

    public static final EnumC8071kK f49585i = new EnumC8071kK(5, 35, -1, "NEW_ARRAY");

    public static final EnumC8071kK f49586j = new EnumC8071kK(6, -1, -1, "MULTI_NEW_ARRAY");

    public static final EnumC8071kK f49587k = new EnumC8071kK(8, 250, 251, "POLYMORPHIC");

    public static final boolean f49588l = true;

    public final int f49589b;

    public final int f49590c;

    public EnumC8071kK(int i10, int i11, int i12, String str) {
        this.f49589b = i11;
        this.f49590c = i12;
    }

    public static EnumC8071kK a(int i10, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H0 h02, C4798y c4798y, AbstractC5308Hz abstractC5308Hz) {
        switch (i10) {
            case 182:
                if (c4798y.b().f38015b5.a(a22) && !c4798y.E().d0()) {
                    return f49587k;
                }
                return f49584h;
            case 183:
                return a(a22, h02, c4798y, abstractC5308Hz);
            case 184:
                return f49582f;
            case 185:
                return f49581e;
            default:
                throw new C5417Jv0("unknown CfInvoke opcode " + i10);
        }
    }

    public final boolean b() {
        return this == f49581e;
    }

    public final boolean c() {
        return this == f49582f;
    }

    public final boolean d() {
        return this == f49583g;
    }

    public final boolean e() {
        return this == f49584h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0109, code lost:
    
        if (r10.f51122c.containsKey(r11) == false) goto L56;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static EnumC8071kK a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H0 h02, C4798y c4798y, AbstractC5308Hz abstractC5308Hz) {
        com.android.tools.r8.graph.E0 g10;
        if (a22.b(c4798y.b())) {
            return f49580d;
        }
        AbstractC5308Hz v10 = c4798y.v();
        com.android.tools.r8.graph.A2 a10 = v10.a(abstractC5308Hz, h02.getReference());
        if (a22.s0() != a10.s0()) {
            if (c4798y.E().P() && c4798y.E().i() && h02.getHolder().q1() && (g10 = c4798y.g(a22.s0())) != null && g10.q1()) {
                com.android.tools.r8.graph.E0 holder = h02.getHolder();
                if (g10.q1() && holder.q1() && g10.T0().a(holder.T0())) {
                    com.android.tools.r8.graph.A2 reference = h02.getReference();
                    EnumC8071kK enumC8071kK = f49580d;
                    C4516j1 b10 = g10.b((com.android.tools.r8.graph.A2) v10.a(a22, reference, enumC8071kK, abstractC5308Hz, AbstractC9530t40.f52519c).f41111a);
                    return (b10 == null || !b10.G0()) ? f49583g : enumC8071kK;
                }
            }
            return f49583g;
        }
        com.android.tools.r8.graph.A2 reference2 = h02.getReference();
        EnumC8071kK enumC8071kK2 = f49580d;
        NW a11 = v10.a(a22, reference2, enumC8071kK2, abstractC5308Hz, AbstractC9530t40.f52519c);
        if (!a11.f42623d.c() && !a11.f42623d.e()) {
            C4516j1 b11 = h02.getHolder().b((com.android.tools.r8.graph.A2) a11.f41111a);
            if (b11 == null) {
                return f49583g;
            }
            if (v10.a(abstractC5308Hz, b11.getReference()).s0() != a10.s0()) {
                return f49583g;
            }
            if (!h02.getHolder().isInterface()) {
                C8674nx0 c8674nx0 = c4798y.f38393H;
                if (c8674nx0 != null) {
                    com.android.tools.r8.graph.M2 s02 = a10.s0();
                    if (!c8674nx0.f51121b.containsKey(s02)) {
                    }
                }
                if (!f49588l && !b11.G0() && !a11.f42623d.e()) {
                    throw new AssertionError();
                }
            }
            if (b11.J0()) {
                return f49583g;
            }
        }
        return enumC8071kK2;
    }

    public final int a() {
        int ordinal = ordinal();
        if (ordinal == 8) {
            return 182;
        }
        if (ordinal == 0) {
            return 183;
        }
        if (ordinal == 1) {
            return 185;
        }
        if (ordinal == 2) {
            return 184;
        }
        if (ordinal == 3) {
            return 183;
        }
        if (ordinal == 4) {
            return 182;
        }
        throw new C5417Jv0();
    }

    public final int a(boolean z10) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return z10 ? 206 : 205;
        }
        if (ordinal == 1) {
            return 185;
        }
        if (ordinal == 2) {
            return z10 ? 204 : 184;
        }
        if (ordinal == 3) {
            return z10 ? 208 : 207;
        }
        if (ordinal == 4) {
            return 182;
        }
        throw new C5417Jv0();
    }

    public final com.android.tools.r8.graph.B2 a(com.android.tools.r8.graph.A2 a22) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            if (a22.f38298g.toString().equals(ConstantDescs.INIT_NAME)) {
                return com.android.tools.r8.graph.B2.f36153i;
            }
            return com.android.tools.r8.graph.B2.f36154j;
        }
        if (ordinal == 1) {
            return com.android.tools.r8.graph.B2.f36155k;
        }
        if (ordinal == 2) {
            return com.android.tools.r8.graph.B2.f36151g;
        }
        if (ordinal == 3) {
            return com.android.tools.r8.graph.B2.f36156l;
        }
        if (ordinal == 4) {
            return com.android.tools.r8.graph.B2.f36152h;
        }
        throw new C5417Jv0("Conversion to method handle with unexpected invoke type: " + ((Object) this));
    }
}
