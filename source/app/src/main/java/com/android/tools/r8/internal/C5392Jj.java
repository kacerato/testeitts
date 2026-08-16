package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Objects;

public final class C5392Jj extends F00 {

    public static final boolean f41466d = true;

    public final int f41467b;

    public final int f41468c;

    public C5392Jj(int i10, int i11) {
        if (!f41466d && (i10 & i11) != 0) {
            throw new AssertionError();
        }
        this.f41467b = i10;
        this.f41468c = i11;
    }

    @Override
    public final long A() {
        return -2147483648L;
    }

    @Override
    public final C5392Jj H() {
        return this;
    }

    @Override
    public final int R() {
        return this.f41467b;
    }

    @Override
    public final int S() {
        return this.f41468c;
    }

    @Override
    public final boolean a(InterfaceC4924Bh interfaceC4924Bh) {
        return true;
    }

    @Override
    public final F1 b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        return this;
    }

    @Override
    public final boolean b0() {
        return true;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == C5392Jj.class) {
            C5392Jj c5392Jj = (C5392Jj) obj;
            if (this.f41467b == c5392Jj.f41467b && this.f41468c == c5392Jj.f41468c) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        int i10 = this.f41467b;
        int i11 = ((i10 + 31) * 31) + this.f41468c;
        if (f41466d || i11 == Objects.hash(Integer.valueOf(i10), Integer.valueOf(this.f41468c))) {
            return i11;
        }
        throw new AssertionError();
    }

    @Override
    public final String toString() {
        return "DefiniteBitsNumberValue(set: " + Integer.toBinaryString(this.f41467b) + "; unset: " + Integer.toBinaryString(this.f41468c) + ")";
    }

    @Override
    public final boolean a(int i10) {
        return (this.f41467b & (~i10)) == 0 && (i10 & this.f41468c) == 0;
    }

    @Override
    public final AbstractC9530t40 a(int[] iArr) {
        return AbstractC9530t40.f52519c;
    }
}
