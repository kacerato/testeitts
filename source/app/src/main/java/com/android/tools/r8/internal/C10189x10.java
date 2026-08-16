package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Objects;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C10189x10 extends F00 {

    public static final boolean f53666d = true;

    public final long f53667b;

    public final long f53668c;

    public C10189x10(long j10, long j11) {
        if (!f53666d && j11 <= j10) {
            throw new AssertionError();
        }
        this.f53667b = j10;
        this.f53668c = j11;
    }

    @Override
    public final long A() {
        return this.f53667b;
    }

    @Override
    public final boolean a(int i10) {
        long j10 = i10;
        return this.f53667b <= j10 && j10 <= this.f53668c;
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
        if (obj != null && obj.getClass() == C10189x10.class) {
            C10189x10 c10189x10 = (C10189x10) obj;
            if (this.f53667b == c10189x10.f53667b && this.f53668c == c10189x10.f53668c) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        int hashCode = Long.hashCode(this.f53668c) + ((Long.hashCode(this.f53667b) + 31) * 31);
        if (f53666d || hashCode == Objects.hash(Long.valueOf(this.f53667b), Long.valueOf(this.f53668c))) {
            return hashCode;
        }
        throw new AssertionError();
    }

    @Override
    public final C10189x10 l() {
        return this;
    }

    @Override
    public final String toString() {
        return "NumberFromIntervalValue([" + this.f53667b + VectorFormat.DEFAULT_SEPARATOR + this.f53668c + "])";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean a(InterfaceC4924Bh interfaceC4924Bh) {
        F1 f12 = (F1) interfaceC4924Bh;
        f12.getClass();
        if (f12 instanceof C5392Jj) {
            return true;
        }
        if (f12 instanceof C5341Im0) {
            return a((int) interfaceC4924Bh.m().f41207c);
        }
        if (f12 instanceof C10189x10) {
            C10189x10 l10 = interfaceC4924Bh.l();
            return this.f53667b <= l10.f53668c && this.f53668c >= l10.f53667b;
        }
        if (!f53666d && !(f12 instanceof AbstractC10356y10)) {
            throw new AssertionError();
        }
        interfaceC4924Bh.u().a(this);
        return true;
    }

    @Override
    public final AbstractC9530t40 a(int[] iArr) {
        return AbstractC9530t40.f52519c;
    }
}
