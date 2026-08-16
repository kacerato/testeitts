package com.android.tools.r8.internal;

public enum C9160qs0 extends EnumC9493ss0 {
    public C9160qs0() {
        super(2, "LONG_OR_DOUBLE");
    }

    @Override
    public final Number a(C8240lL c8240lL) {
        String s10 = c8240lL.s();
        try {
            try {
                return Long.valueOf(Long.parseLong(s10));
            } catch (NumberFormatException unused) {
                Double valueOf = Double.valueOf(s10);
                if (!valueOf.isInfinite()) {
                    if (valueOf.isNaN()) {
                    }
                    return valueOf;
                }
                if (!c8240lL.f49939b) {
                    throw new GU("JSON forbids NaN and infinities: " + ((Object) valueOf) + "; at path " + c8240lL.j());
                }
                return valueOf;
            }
        } catch (NumberFormatException e10) {
            throw new C7574hL("Cannot parse " + s10 + "; at path " + c8240lL.j(), e10);
        }
    }
}
