package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C8015k0 extends AbstractC8516n0 {

    public static final boolean f49440e = true;

    public int f49441b;

    public int f49442c = -1;

    public final C8182l0 f49443d;

    public C8015k0(C8182l0 c8182l0, int i10) {
        this.f49443d = c8182l0;
        this.f49441b = i10;
    }

    @Override
    public final long a() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        C8182l0 c8182l0 = this.f49443d;
        AbstractC8349m0 abstractC8349m0 = c8182l0.f49859b;
        int i10 = c8182l0.f49860c;
        int i11 = this.f49441b - 1;
        this.f49441b = i11;
        this.f49442c = i11;
        return abstractC8349m0.d(i10 + i11);
    }

    @Override
    public final void b(long j10) {
        int i10 = this.f49442c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f49443d.b(i10, j10);
    }

    @Override
    public final boolean hasNext() {
        int i10 = this.f49441b;
        C8182l0 c8182l0 = this.f49443d;
        return i10 < c8182l0.f49861d - c8182l0.f49860c;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f49441b > 0;
    }

    @Override
    public final long l() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        C8182l0 c8182l0 = this.f49443d;
        AbstractC8349m0 abstractC8349m0 = c8182l0.f49859b;
        int i10 = c8182l0.f49860c;
        int i11 = this.f49441b;
        this.f49441b = i11 + 1;
        this.f49442c = i11;
        return abstractC8349m0.d(i10 + i11);
    }

    @Override
    public final int nextIndex() {
        return this.f49441b;
    }

    @Override
    public final int previousIndex() {
        return this.f49441b - 1;
    }

    @Override
    public final void remove() {
        int i10 = this.f49442c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f49443d.f(i10);
        int i11 = this.f49442c;
        int i12 = this.f49441b;
        if (i11 < i12) {
            this.f49441b = i12 - 1;
        }
        this.f49442c = -1;
        if (f49440e) {
            return;
        }
        this.f49443d.b();
    }

    @Override
    public final void a(long j10) {
        if (this.f49442c != -1) {
            C8182l0 c8182l0 = this.f49443d;
            int i10 = this.f49441b;
            this.f49441b = i10 + 1;
            c8182l0.a(i10, j10);
            this.f49442c = -1;
            if (f49440e) {
                return;
            }
            this.f49443d.b();
            return;
        }
        throw new IllegalStateException();
    }
}
