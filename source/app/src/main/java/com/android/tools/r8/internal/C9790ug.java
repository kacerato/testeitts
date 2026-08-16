package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.function.Supplier;

public final class C9790ug extends AbstractC10458yg {

    public static final boolean f52913f = true;

    public F1 f52914e;

    public C9790ug(F1 f12, Set set) {
        super(set);
        this.f52914e = f12;
        boolean z10 = f52913f;
        if (!z10 && u()) {
            throw new AssertionError((Object) "Must use BottomPrimitiveTypeParameterState instead");
        }
        if (!z10 && this.f52914e.isUnknown()) {
            throw new AssertionError((Object) "Must use UnknownParameterState instead");
        }
    }

    public static Q00 a(F1 f12) {
        Set set = Collections.EMPTY_SET;
        if (f12.isUnknown()) {
            return C10671zv0.f54579b;
        }
        return new C9790ug(f12, set);
    }

    @Override
    public final C9790ug e() {
        return this;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C9790ug)) {
            return false;
        }
        C9790ug c9790ug = (C9790ug) obj;
        return this.f52914e.equals(c9790ug.f52914e) && s().equals(c9790ug.s());
    }

    public final int hashCode() {
        return Objects.hash(C9790ug.class, this.f52914e, s());
    }

    @Override
    public final B7 q() {
        return C10206x7.f53688b;
    }

    @Override
    public final AbstractC7836iw0 r() {
        return C7671hw0.f48740b;
    }

    public final String toString() {
        if (!f52913f && t()) {
            throw new AssertionError();
        }
        return "PrimitiveState(" + ((Object) this.f52914e) + ")";
    }

    @Override
    public final boolean v() {
        F1 f12 = this.f52914e;
        f12.getClass();
        return f12 instanceof A7;
    }

    @Override
    public final boolean w() {
        return this.f52914e.isUnknown();
    }

    @Override
    public final AbstractC10458yg a(Supplier supplier) {
        return new C9790ug(this.f52914e, (Set) supplier.get());
    }

    @Override
    public final F1 a(C4798y c4798y) {
        return this.f52914e;
    }
}
