package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import java.util.Objects;

public class C10497yt extends C10664zt {

    public static final boolean f54179h = true;

    public final C6949de f54180g;

    public C10497yt(C6949de c6949de, C6949de c6949de2) {
        super(c6949de);
        boolean z10 = f54179h;
        if (!z10 && c6949de.equals(c6949de2)) {
            throw new AssertionError();
        }
        if (!z10 && c6949de.f46573b != c6949de2.f46573b) {
            throw new AssertionError();
        }
        this.f54180g = c6949de2;
    }

    public static C10497yt a(C4798y c4798y, C6949de c6949de, C6949de c6949de2) {
        boolean z10 = f54179h;
        if (!z10 && c6949de == null) {
            throw new AssertionError();
        }
        if (!z10 && c6949de2 == null) {
            throw new AssertionError();
        }
        if (!z10 && c6949de.f46573b != c6949de2.f46573b) {
            throw new AssertionError();
        }
        if (!z10 && !((C4514j) c4798y.f()).b(c6949de2.E(), c6949de.E())) {
            throw new AssertionError();
        }
        return new C10497yt(c6949de, c6949de2);
    }

    @Override
    public final C10664zt a(C8854p10 c8854p10) {
        return super.n().b().f46573b == c8854p10 ? this : new C10497yt(super.n().b().a(c8854p10), this.f54180g.a(c8854p10));
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            C10497yt c10497yt = (C10497yt) obj;
            if (super.n().b().equals(super.n().b()) && this.f54180g.equals(c10497yt.f54180g)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return Objects.hash(super.n().b(), this.f54180g);
    }

    @Override
    public final AbstractC8999pu0 n() {
        return super.n().b();
    }

    @Override
    public final String toString() {
        return "DynamicTypeWithLowerBound(upperBound=" + ((Object) super.n().b()) + ", lowerBound=" + ((Object) this.f54180g) + ")";
    }

    @Override
    public final C6949de b() {
        return this.f54180g;
    }

    @Override
    public final AbstractC10330xt a(C8854p10 c8854p10) {
        return super.n().b().f46573b == c8854p10 ? this : new C10497yt(super.n().b().a(c8854p10), this.f54180g.a(c8854p10));
    }
}
