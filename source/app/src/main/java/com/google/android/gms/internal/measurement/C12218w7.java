package com.google.android.gms.internal.measurement;

public final class C12218w7 implements InterfaceC12209v7 {

    public static final AbstractC12215w4 f62472a;

    public static final AbstractC12215w4 f62473b;

    public static final AbstractC12215w4 f62474c;

    public static final AbstractC12215w4 f62475d;

    public static final AbstractC12215w4 f62476e;

    public static final AbstractC12215w4 f62477f;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        f62472a = b10.d("measurement.test.boolean_flag", false);
        f62473b = b10.c("measurement.test.cached_long_flag", -1L);
        f62474c = b10.e("measurement.test.double_flag", -3.0d);
        f62475d = b10.c("measurement.test.int_flag", -2L);
        f62476e = b10.c("measurement.test.long_flag", -1L);
        f62477f = b10.f("measurement.test.string_flag", "---");
    }

    @Override
    public final boolean N1() {
        return ((Boolean) f62472a.d()).booleanValue();
    }

    @Override
    public final long O1() {
        return ((Long) f62473b.d()).longValue();
    }

    @Override
    public final double P1() {
        return ((Double) f62474c.d()).doubleValue();
    }

    @Override
    public final long Q1() {
        return ((Long) f62475d.d()).longValue();
    }

    @Override
    public final long R1() {
        return ((Long) f62476e.d()).longValue();
    }

    @Override
    public final String a() {
        return (String) f62477f.d();
    }
}
