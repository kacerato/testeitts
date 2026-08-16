package com.google.android.gms.internal.measurement;

import android.net.Uri;
import javax.annotation.Nullable;
import w2.InterfaceC15902t;

public final class C12162q4 {

    @Nullable
    public final Uri f62404a;

    public final String f62405b;

    public final String f62406c;

    public final boolean f62407d;

    public final boolean f62408e;

    public C12162q4(@Nullable String str, @Nullable Uri uri, String str2, String str3, boolean z10, boolean z11, boolean z12, boolean z13, @Nullable InterfaceC15902t interfaceC15902t) {
        this.f62404a = uri;
        this.f62405b = "";
        this.f62406c = "";
        this.f62407d = z10;
        this.f62408e = z12;
    }

    public final C12162q4 a() {
        String str = this.f62405b;
        if (str.isEmpty()) {
            return new C12162q4(null, this.f62404a, str, this.f62406c, true, false, this.f62408e, false, null);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    public final C12162q4 b() {
        return new C12162q4(null, this.f62404a, this.f62405b, this.f62406c, this.f62407d, false, true, false, null);
    }

    public final AbstractC12215w4 c(String str, long j10) {
        Long valueOf = Long.valueOf(j10);
        int i10 = AbstractC12215w4.f62465k;
        return new C12126m4(this, str, valueOf, true);
    }

    public final AbstractC12215w4 d(String str, boolean z10) {
        Boolean valueOf = Boolean.valueOf(z10);
        int i10 = AbstractC12215w4.f62465k;
        return new C12135n4(this, str, valueOf, true);
    }

    public final AbstractC12215w4 e(String str, double d10) {
        Double valueOf = Double.valueOf(-3.0d);
        int i10 = AbstractC12215w4.f62465k;
        return new C12144o4(this, "measurement.test.double_flag", valueOf, true);
    }

    public final AbstractC12215w4 f(String str, String str2) {
        int i10 = AbstractC12215w4.f62465k;
        return new C12153p4(this, str, str2, true);
    }

    public C12162q4(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }
}
