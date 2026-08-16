package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.C5417Jv0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public abstract class EnumC11299l3 {

    public static final EnumC11299l3 f57505b;

    public static final EnumC11299l3 f57506c;

    public static final C11249i3 f57507d;

    public static final C11265j3 f57508e;

    public static final EnumC11299l3[] f57509f;

    static {
        EnumC11299l3 enumC11299l3 = new EnumC11299l3() {
            @Override
            public final boolean a(com.android.tools.r8.graph.E0 e02) {
                return e02.f36246f.J() && e02.f36246f.H();
            }
        };
        f57505b = enumC11299l3;
        EnumC11299l3 enumC11299l32 = new EnumC11299l3() {
            @Override
            public final boolean a(com.android.tools.r8.graph.E0 e02) {
                return true;
            }
        };
        f57506c = enumC11299l32;
        C11249i3 c11249i3 = new C11249i3();
        f57507d = c11249i3;
        C11265j3 c11265j3 = new C11265j3();
        f57508e = c11265j3;
        f57509f = new EnumC11299l3[]{enumC11299l3, enumC11299l32, c11249i3, c11265j3};
    }

    public EnumC11299l3(int i10, String str) {
    }

    public abstract boolean a(com.android.tools.r8.graph.E0 e02);

    @Override
    public final String toString() {
        int i10 = AbstractC11282k3.f57470a[ordinal()];
        if (i10 == 1) {
            return "@interface";
        }
        if (i10 == 2) {
            return "class";
        }
        if (i10 == 3) {
            return "enum";
        }
        if (i10 == 4) {
            return "interface";
        }
        throw new C5417Jv0("Invalid proguard class type '" + ((Object) this) + "'");
    }
}
