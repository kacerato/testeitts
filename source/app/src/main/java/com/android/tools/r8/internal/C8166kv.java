package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class C8166kv extends C10664zt {

    public static final boolean f49837g = true;

    public C8166kv(C6949de c6949de) {
        super(c6949de);
    }

    @Override
    public final AbstractC10330xt a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, Set set) {
        AbstractC8999pu0 a10 = super.n().b().a(c4798y, abstractC5308Hz, (AbstractC5308Hz) null, set);
        if (!f49837g && !a10.s() && !a10.x()) {
            throw new AssertionError();
        }
        if (a10.s()) {
            return new C8166kv(a10.b());
        }
        return AbstractC10330xt.m();
    }

    @Override
    public final C6949de b() {
        return super.n().b();
    }

    @Override
    public final C6949de c() {
        return super.n().b();
    }

    @Override
    public final boolean e() {
        return true;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == null || C8166kv.class != obj.getClass()) {
            return false;
        }
        return super.n().b().equals(super.n().b());
    }

    @Override
    public final int hashCode() {
        return super.n().b().hashCode();
    }

    @Override
    public final boolean i() {
        return true;
    }

    @Override
    public final AbstractC8999pu0 n() {
        return super.n().b();
    }

    @Override
    public final String toString() {
        return "ExactDynamicType(" + ((Object) super.n().b()) + ")";
    }

    @Override
    public final C10664zt a(C8854p10 c8854p10) {
        return this.f54564b.B() == c8854p10 ? this : new C8166kv(super.n().b().a(c8854p10));
    }

    @Override
    public final AbstractC10330xt a(C8854p10 c8854p10) {
        return this.f54564b.B() == c8854p10 ? this : new C8166kv(super.n().b().a(c8854p10));
    }
}
