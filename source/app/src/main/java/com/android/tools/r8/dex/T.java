package com.android.tools.r8.dex;

import com.android.tools.r8.internal.AbstractC5635Np;

public final class T {

    public static final boolean f35773d = true;

    public AbstractC5635Np f35774a;

    public AbstractC5635Np f35775b;

    public final boolean f35776c;

    public T(AbstractC5635Np abstractC5635Np, AbstractC5635Np abstractC5635Np2, boolean z10) {
        boolean z11 = f35773d;
        if (!z11 && abstractC5635Np == null) {
            throw new AssertionError();
        }
        if (!z11 && abstractC5635Np2 == null) {
            throw new AssertionError();
        }
        this.f35774a = abstractC5635Np;
        this.f35775b = abstractC5635Np2;
        this.f35776c = z10;
    }

    public final int a() {
        if (!this.f35776c) {
            return this.f35775b.u() - this.f35774a.u();
        }
        return (this.f35775b.y() + this.f35775b.u()) - this.f35774a.u();
    }
}
