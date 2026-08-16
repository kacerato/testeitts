package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5829Qz;
import com.android.tools.r8.internal.EnumC8071kK;
import java.lang.constant.ConstantDescs;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class B2 {

    public static final B2 f36147c = new B2("STATIC_PUT", 0, 0);

    public static final B2 f36148d = new B2("STATIC_GET", 1, 1);

    public static final B2 f36149e = new B2("INSTANCE_PUT", 2, 2);

    public static final B2 f36150f = new B2("INSTANCE_GET", 3, 3);

    public static final B2 f36151g = new B2("INVOKE_STATIC", 4, 4);

    public static final B2 f36152h = new B2("INVOKE_INSTANCE", 5, 5);

    public static final B2 f36153i = new B2("INVOKE_CONSTRUCTOR", 6, 6);

    public static final B2 f36154j = new B2("INVOKE_DIRECT", 7, 7);

    public static final B2 f36155k = new B2("INVOKE_INTERFACE", 8, 8);

    public static final B2 f36156l = new B2("INVOKE_SUPER", 9, 9);

    public static final boolean f36157m = true;

    public final short f36158b;

    public B2(String str, int i10, short s10) {
        this.f36158b = s10;
    }

    public static B2 a(C5829Qz c5829Qz, C4482h4 c4482h4, M2 m22) {
        switch (c5829Qz.f43768a) {
            case 1:
                return f36150f;
            case 2:
                return f36148d;
            case 3:
                return f36149e;
            case 4:
                return f36147c;
            case 5:
                return f36152h;
            case 6:
                return f36151g;
            case 7:
                boolean z10 = f36157m;
                if (!z10 && c5829Qz.f43770c.equals(ConstantDescs.INIT_NAME)) {
                    throw new AssertionError();
                }
                if (!z10 && c5829Qz.f43770c.equals(ConstantDescs.CLASS_INIT_NAME)) {
                    throw new AssertionError();
                }
                if (c4482h4.f(c5829Qz.f43769b) == m22) {
                    return f36154j;
                }
                return f36156l;
            case 8:
                return f36153i;
            case 9:
                return f36155k;
            default:
                throw new C5417Jv0("MethodHandle tag is not supported: " + c5829Qz.f43768a);
        }
    }

    public final boolean b() {
        return this == f36154j;
    }

    public final boolean c() {
        return this == f36151g;
    }

    public final boolean d() {
        return c() || this == f36152h || this == f36155k || this == f36156l || this == f36153i || b();
    }

    public final EnumC8071kK e() {
        if (!f36157m && !d()) {
            throw new AssertionError();
        }
        switch (ordinal()) {
            case 4:
                return EnumC8071kK.f49582f;
            case 5:
                return EnumC8071kK.f49584h;
            case 6:
                return EnumC8071kK.f49580d;
            case 7:
                return EnumC8071kK.f49580d;
            case 8:
                return EnumC8071kK.f49581e;
            case 9:
                return EnumC8071kK.f49583g;
            default:
                throw new C5417Jv0("Conversion to invoke type with unexpected method handle: " + ((Object) this));
        }
    }

    public final boolean a() {
        return this == f36147c || this == f36148d || this == f36149e || this == f36150f;
    }
}
