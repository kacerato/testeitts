package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.measurement.C12116l3;
import java.util.Map;

public final class f7 {

    public final long f63289a;

    public final C12116l3 f63290b;

    public final String f63291c;

    public final Map f63292d;

    public final EnumC12332k5 f63293e;

    public final long f63294f;

    public final long f63295g;

    public final long f63296h;

    public final int f63297i;

    public f7(long j10, C12116l3 c12116l3, String str, Map map, EnumC12332k5 enumC12332k5, long j11, long j12, long j13, int i10, byte[] bArr) {
        this.f63289a = j10;
        this.f63290b = c12116l3;
        this.f63291c = str;
        this.f63292d = map;
        this.f63293e = enumC12332k5;
        this.f63294f = j11;
        this.f63295g = j12;
        this.f63296h = j13;
        this.f63297i = i10;
    }

    public final O6 a() {
        return new O6(this.f63291c, this.f63292d, this.f63293e, null);
    }

    public final H6 b() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.f63292d.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        long j10 = this.f63289a;
        C12116l3 c12116l3 = this.f63290b;
        String str = this.f63291c;
        EnumC12332k5 enumC12332k5 = this.f63293e;
        return new H6(j10, c12116l3.g(), str, bundle, enumC12332k5.N1(), this.f63295g, "");
    }

    public final long c() {
        return this.f63289a;
    }

    @Nullable
    public final C12116l3 d() {
        return this.f63290b;
    }

    public final String e() {
        return this.f63291c;
    }

    public final EnumC12332k5 f() {
        return this.f63293e;
    }

    public final long g() {
        return this.f63294f;
    }

    public final long h() {
        return this.f63296h;
    }

    public final int i() {
        return this.f63297i;
    }
}
