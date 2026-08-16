package com.android.tools.r8.graph;

import java.util.function.Function;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC4629p0 {

    public static final EnumC4629p0 f37566b = new EnumC4629p0(0, "FIELD");

    public static final EnumC4629p0 f37567c = new EnumC4629p0(1, "METHOD");

    public static final EnumC4629p0 f37568d = new EnumC4629p0(2, "TYPE");

    public static final EnumC4629p0 f37569e = new EnumC4629p0(3, "PARAMETER");

    public EnumC4629p0(int i10, String str) {
    }

    public static EnumC4629p0 a(D5 d52) {
        return a(d52.getReference());
    }

    public static EnumC4629p0 a(J2 j22) {
        return (EnumC4629p0) j22.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                EnumC4629p0 enumC4629p0;
                enumC4629p0 = EnumC4629p0.f37568d;
                return enumC4629p0;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                EnumC4629p0 enumC4629p0;
                enumC4629p0 = EnumC4629p0.f37566b;
                return enumC4629p0;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                EnumC4629p0 enumC4629p0;
                enumC4629p0 = EnumC4629p0.f37567c;
                return enumC4629p0;
            }
        });
    }
}
