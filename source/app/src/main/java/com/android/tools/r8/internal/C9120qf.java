package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

public final class C9120qf extends AbstractC5754Pq0 {

    public static final boolean f51837e = true;

    public final AbstractC9286rf f51838a;

    public final Object f51839b;

    public final Object f51840c;

    public int f51841d = 0;

    public C9120qf(Object obj, Object obj2, AbstractC9286rf abstractC9286rf) {
        this.f51839b = obj;
        this.f51840c = obj2;
        this.f51838a = abstractC9286rf;
    }

    @Override
    public final AbstractC5754Pq0 a() {
        return this;
    }

    @Override
    public final AbstractC5754Pq0 b(Predicate predicate) {
        if (this.f51841d == 0) {
            AbstractC9286rf abstractC9286rf = this.f51838a;
            boolean test = predicate.test(this.f51839b);
            boolean test2 = predicate.test(this.f51840c);
            abstractC9286rf.getClass();
            this.f51841d = Boolean.compare(test, test2);
        }
        return this;
    }

    @Override
    public final AbstractC5754Pq0 c(Function function) {
        if (this.f51841d == 0) {
            this.f51841d = this.f51838a.a((com.android.tools.r8.graph.J2) function.apply(this.f51839b), (com.android.tools.r8.graph.J2) function.apply(this.f51840c));
        }
        return this;
    }

    @Override
    public final AbstractC5754Pq0 d(Function function) {
        if (this.f51841d == 0) {
            int[] iArr = (int[]) function.apply(this.f51839b);
            int[] iArr2 = (int[]) function.apply(this.f51840c);
            int min = Math.min(iArr.length, iArr2.length);
            for (int i10 = 0; i10 < min && this.f51841d == 0; i10++) {
                AbstractC9286rf abstractC9286rf = this.f51838a;
                int i11 = iArr[i10];
                int i12 = iArr2[i10];
                abstractC9286rf.getClass();
                this.f51841d = Integer.compare(i11, i12);
            }
            if (this.f51841d == 0) {
                AbstractC9286rf abstractC9286rf2 = this.f51838a;
                int length = iArr.length;
                int length2 = iArr2.length;
                abstractC9286rf2.getClass();
                this.f51841d = Integer.compare(length, length2);
            }
        }
        return this;
    }

    @Override
    public final AbstractC5754Pq0 k(Function function) {
        if (this.f51841d == 0) {
            short[] sArr = (short[]) function.apply(this.f51839b);
            short[] sArr2 = (short[]) function.apply(this.f51840c);
            int min = Math.min(sArr.length, sArr2.length);
            for (int i10 = 0; i10 < min && this.f51841d == 0; i10++) {
                AbstractC9286rf abstractC9286rf = this.f51838a;
                short s10 = sArr[i10];
                short s11 = sArr2[i10];
                abstractC9286rf.getClass();
                this.f51841d = Integer.compare(s10, s11);
            }
            if (this.f51841d == 0) {
                AbstractC9286rf abstractC9286rf2 = this.f51838a;
                int length = sArr.length;
                int length2 = sArr2.length;
                abstractC9286rf2.getClass();
                this.f51841d = Integer.compare(length, length2);
            }
        }
        return this;
    }

    @Override
    public final AbstractC5754Pq0 a(Predicate predicate) {
        boolean z10 = f51837e;
        if (!z10 && !predicate.test(this.f51839b)) {
            throw new AssertionError();
        }
        if (z10 || predicate.test(this.f51840c)) {
            return this;
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC5754Pq0 a(ToIntFunction toIntFunction) {
        if (this.f51841d == 0) {
            AbstractC9286rf abstractC9286rf = this.f51838a;
            int applyAsInt = toIntFunction.applyAsInt(this.f51839b);
            int applyAsInt2 = toIntFunction.applyAsInt(this.f51840c);
            abstractC9286rf.getClass();
            this.f51841d = Integer.compare(applyAsInt, applyAsInt2);
        }
        return this;
    }

    @Override
    public final AbstractC5754Pq0 b(Function function, InterfaceC5465Kq0 interfaceC5465Kq0, InterfaceC5523Lq0 interfaceC5523Lq0) {
        if (this.f51841d == 0) {
            this.f51841d = this.f51838a.a((Iterator) function.apply(this.f51839b), (Iterator) function.apply(this.f51840c), interfaceC5465Kq0);
        }
        return this;
    }

    @Override
    public final AbstractC5754Pq0 a(ToLongFunction toLongFunction) {
        if (this.f51841d == 0) {
            AbstractC9286rf abstractC9286rf = this.f51838a;
            long applyAsLong = toLongFunction.applyAsLong(this.f51839b);
            long applyAsLong2 = toLongFunction.applyAsLong(this.f51840c);
            abstractC9286rf.getClass();
            this.f51841d = Long.compare(applyAsLong, applyAsLong2);
        }
        return this;
    }

    @Override
    public final AbstractC5754Pq0 a(Function function) {
        if (this.f51841d == 0) {
            byte[] bArr = (byte[]) function.apply(this.f51839b);
            byte[] bArr2 = (byte[]) function.apply(this.f51840c);
            int min = Math.min(bArr.length, bArr2.length);
            for (int i10 = 0; i10 < min && this.f51841d == 0; i10++) {
                AbstractC9286rf abstractC9286rf = this.f51838a;
                byte b10 = bArr[i10];
                byte b11 = bArr2[i10];
                abstractC9286rf.getClass();
                this.f51841d = Integer.compare(b10, b11);
            }
            if (this.f51841d == 0) {
                AbstractC9286rf abstractC9286rf2 = this.f51838a;
                int length = bArr.length;
                int length2 = bArr2.length;
                abstractC9286rf2.getClass();
                this.f51841d = Integer.compare(length, length2);
            }
        }
        return this;
    }

    @Override
    public final AbstractC5754Pq0 a(Predicate predicate, Function function, InterfaceC5465Kq0 interfaceC5465Kq0, InterfaceC5523Lq0 interfaceC5523Lq0) {
        if (this.f51841d == 0) {
            boolean test = predicate.test(this.f51839b);
            boolean test2 = predicate.test(this.f51840c);
            if (test && test2) {
                this.f51841d = interfaceC5465Kq0.a(function.apply(this.f51839b), function.apply(this.f51840c), this.f51838a);
                return this;
            }
            this.f51841d = Boolean.compare(test, test2);
        }
        return this;
    }
}
