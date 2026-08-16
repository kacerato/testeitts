package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4798y;

public abstract class EW {

    public static final boolean f39887a = true;

    public static class a extends EW {

        public final FW f39888b;

        public boolean f39889c;

        public a(FW fw) {
            this.f39888b = fw;
        }

        @Override
        public boolean a() {
            return this.f39888b == FW.f40236b;
        }

        @Override
        public boolean b() {
            return this.f39888b == FW.f40237c;
        }

        @Override
        public boolean c() {
            return this.f39888b == FW.f40238d;
        }

        @Override
        public final boolean e() {
            return this.f39889c;
        }
    }

    public static a a(C4798y<?> c4798y) {
        return b(c4798y, null);
    }

    public static a b(C4798y c4798y) {
        if (!c4798y.m()) {
            return a(c4798y);
        }
        if (f39887a || c4798y.H().c()) {
            return new a(a(c4798y, (com.android.tools.r8.graph.H5) null));
        }
        throw new AssertionError();
    }

    public static a c(C4798y<?> c4798y) {
        if (!c4798y.m()) {
            return a(c4798y);
        }
        if (!f39887a && c4798y.H().f50887j1 != 3) {
            throw new AssertionError();
        }
        return new a(c4798y.E().f50697l instanceof ClassFileConsumer ? FW.f40236b : FW.f40237c);
    }

    public static a d() {
        return new GW();
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c();

    public abstract boolean e();

    public final AbstractC8215lB a(C4798y c4798y, com.android.tools.r8.ir.optimize.F f10) {
        if (c()) {
            return new C9717uB(c4798y);
        }
        if (a()) {
            return new C9383sB(c4798y, f10);
        }
        if (f39887a || b()) {
            return new C9550tB(c4798y, f10);
        }
        throw new AssertionError();
    }

    public static a b(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        if (f39887a || !c4798y.m()) {
            return new a(a(c4798y, h52));
        }
        throw new AssertionError();
    }

    public static FW a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        c4798y.H().getClass();
        if (c4798y.m()) {
            return FW.f40238d;
        }
        if (c4798y.E().f50697l instanceof ClassFileConsumer) {
            return FW.f40236b;
        }
        if (!f39887a && !c4798y.E().P()) {
            throw new AssertionError();
        }
        AbstractC9109qb0 abstractC9109qb0 = c4798y.E().f50596E1;
        if (abstractC9109qb0 != null && (abstractC9109qb0 instanceof C8775ob0)) {
            return abstractC9109qb0.a().a(c4798y, h52);
        }
        return FW.f40237c;
    }
}
