package com.google.android.gms.measurement.internal;

public final class E {

    public final String f62600a;

    public final String f62601b;

    public final long f62602c;

    public final long f62603d;

    public final long f62604e;

    public final long f62605f;

    public final long f62606g;

    public final Long f62607h;

    public final Long f62608i;

    public final Long f62609j;

    public final Boolean f62610k;

    public E(String str, String str2, long j10, long j11, long j12, long j13, long j14, Long l10, Long l11, Long l12, Boolean bool) {
        G0.A.l(str);
        G0.A.l(str2);
        G0.A.a(j10 >= 0);
        G0.A.a(j11 >= 0);
        G0.A.a(j12 >= 0);
        G0.A.a(j14 >= 0);
        this.f62600a = str;
        this.f62601b = str2;
        this.f62602c = j10;
        this.f62603d = j11;
        this.f62604e = j12;
        this.f62605f = j13;
        this.f62606g = j14;
        this.f62607h = l10;
        this.f62608i = l11;
        this.f62609j = l12;
        this.f62610k = bool;
    }

    public final E a(long j10) {
        return new E(this.f62600a, this.f62601b, this.f62602c, this.f62603d, this.f62604e, j10, this.f62606g, this.f62607h, this.f62608i, this.f62609j, this.f62610k);
    }

    public final E b(long j10, long j11) {
        return new E(this.f62600a, this.f62601b, this.f62602c, this.f62603d, this.f62604e, this.f62605f, j10, Long.valueOf(j11), this.f62608i, this.f62609j, this.f62610k);
    }

    public final E c(Long l10, Long l11, Boolean bool) {
        return new E(this.f62600a, this.f62601b, this.f62602c, this.f62603d, this.f62604e, this.f62605f, this.f62606g, this.f62607h, l10, l11, bool);
    }
}
