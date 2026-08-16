package com.android.tools.r8.internal;

import android.security.keystore.KeyProperties;
import com.android.tools.r8.C11699z2;
import com.android.tools.r8.graph.C4724u1;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC9948vd {

    public static final EnumC9948vd f53154b = new EnumC9948vd(0, KeyProperties.DIGEST_NONE);

    public static final EnumC9948vd f53155c = new EnumC9948vd(1, "NAME");

    public static final EnumC9948vd f53156d = new EnumC9948vd(2, "TYPE_NAME");

    public static final EnumC9948vd f53157e = new EnumC9948vd(3, "CANONICAL_NAME");

    public static final EnumC9948vd f53158f = new EnumC9948vd(4, "SIMPLE_NAME");

    public static final boolean f53159g = true;

    public EnumC9948vd(int i10, String str) {
    }

    public final com.android.tools.r8.graph.L2 a(String str, com.android.tools.r8.graph.E0 e02, C4724u1 c4724u1, int i10) {
        String j10;
        int ordinal = ordinal();
        boolean z10 = true;
        if (ordinal == 1) {
            j10 = C4932Bl.j(str);
            if (i10 > 0) {
                j10 = C11699z2.a("[", i10) + "L" + j10 + ";";
            }
        } else {
            if (ordinal == 2) {
                throw new C5417Jv0("Type#getTypeName not supported yet");
            }
            if (ordinal == 3) {
                j10 = C4932Bl.j(str).replace('$', '.');
                if (i10 > 0) {
                    j10 = j10 + C11699z2.a(okhttp3.v.f99450n, i10);
                }
            } else {
                if (ordinal != 4) {
                    throw new C5417Jv0("Unexpected ClassNameMapping: " + ((Object) this));
                }
                if (!f53159g && e02 == null) {
                    throw new AssertionError();
                }
                boolean equals = str.equals(e02.f36245e.V0());
                if (!e02.s1() && !e02.r1()) {
                    z10 = false;
                }
                j10 = (equals && z10) ? e02.P0().c().toString() : C4932Bl.v(str);
                if (i10 > 0) {
                    j10 = j10 + C11699z2.a(okhttp3.v.f99450n, i10);
                }
            }
        }
        return c4724u1.b(j10);
    }
}
