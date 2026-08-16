package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public final class C8182l0 extends AbstractC8349m0 implements Serializable {

    public static final boolean f49858e = true;

    public final AbstractC8349m0 f49859b;

    public final int f49860c;

    public int f49861d;

    public C8182l0(AbstractC8349m0 abstractC8349m0, int i10, int i11) {
        this.f49859b = abstractC8349m0;
        this.f49860c = i10;
        this.f49861d = i11;
    }

    @Override
    public final boolean a(long j10) {
        this.f49859b.a(this.f49861d, j10);
        this.f49861d++;
        if (!f49858e) {
            b();
        }
        return true;
    }

    @Override
    public final void add(int i10, Object obj) {
        a(i10, ((Long) obj).longValue());
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        j(i10);
        this.f49861d = collection.size() + this.f49861d;
        return this.f49859b.addAll(this.f49860c + i10, collection);
    }

    public final void b() {
        boolean z10 = f49858e;
        if (!z10 && this.f49860c > this.f49859b.size()) {
            throw new AssertionError();
        }
        if (!z10 && this.f49861d > this.f49859b.size()) {
            throw new AssertionError();
        }
        if (!z10 && this.f49861d < this.f49860c) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean c(long j10) {
        int d10 = d(j10);
        if (d10 == -1) {
            return false;
        }
        this.f49861d--;
        this.f49859b.f(this.f49860c + d10);
        if (!f49858e) {
            b();
        }
        return true;
    }

    @Override
    public final int compareTo(Object obj) {
        return compareTo((List) obj);
    }

    @Override
    public final long d(int i10) {
        k(i10);
        return this.f49859b.d(this.f49860c + i10);
    }

    @Override
    public final C8182l0 subList(int i10, int i11) {
        j(i10);
        j(i11);
        if (i10 <= i11) {
            return new C8182l0(this, i10, i11);
        }
        throw new IllegalArgumentException("Start index (" + i10 + ") is greater than end index (" + i11 + ")");
    }

    @Override
    public final long f(int i10) {
        k(i10);
        this.f49861d--;
        return this.f49859b.f(this.f49860c + i10);
    }

    @Override
    public final Object get(int i10) {
        return Long.valueOf(d(i10));
    }

    @Override
    public final Iterator iterator() {
        j(0);
        return new C8015k0(this, 0);
    }

    @Override
    public final AbstractC8516n0 l(int i10) {
        j(i10);
        return new C8015k0(this, i10);
    }

    @Override
    public final ListIterator listIterator() {
        j(0);
        return new C8015k0(this, 0);
    }

    @Override
    public final Object remove(int i10) {
        return Long.valueOf(f(i10));
    }

    @Override
    public final Object set(int i10, Object obj) {
        return Long.valueOf(b(i10, ((Long) obj).longValue()));
    }

    @Override
    public final int size() {
        return this.f49861d - this.f49860c;
    }

    @Override
    public final ListIterator listIterator(int i10) {
        j(i10);
        return new C8015k0(this, i10);
    }

    @Override
    public final void a(int i10, long j10) {
        j(i10);
        this.f49859b.a(this.f49860c + i10, j10);
        this.f49861d++;
        if (f49858e) {
            return;
        }
        b();
    }

    @Override
    public final long b(int i10, long j10) {
        k(i10);
        return this.f49859b.b(this.f49860c + i10, j10);
    }

    @Override
    public final void a(int i10, int i11) {
        j(i10);
        j(i11);
        AbstractC8349m0 abstractC8349m0 = this.f49859b;
        int i12 = this.f49860c;
        abstractC8349m0.a(i12 + i10, i12 + i11);
        this.f49861d -= i11 - i10;
        if (f49858e) {
            return;
        }
        b();
    }

    @Override
    public final InterfaceC8258lU a() {
        j(0);
        return new C8015k0(this, 0);
    }
}
