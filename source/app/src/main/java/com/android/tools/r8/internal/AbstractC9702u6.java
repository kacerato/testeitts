package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;

public abstract class AbstractC9702u6 extends AbstractC10561zE {

    public static final boolean f52780l = true;

    public final T10 f52781k;

    public AbstractC9702u6(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        super(c10340xw0);
        this.f52781k = t10;
        b(c10340xw02);
        b(c10340xw03);
    }

    @Override
    public final AbstractC9702u6 C() {
        return this;
    }

    public abstract double a(double d10, double d11);

    public abstract float a(float f10, float f11);

    public abstract int a(int i10, int i11);

    public abstract long a(long j10, long j11);

    public abstract F1 a(C4798y c4798y, F1 f12, F1 f13);

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    public boolean e(C10340xw0 c10340xw0) {
        return this.f52781k == T10.f44369e && c10340xw0.M() && P10.a(c10340xw0.n().J().f51851l);
    }

    @Override
    public int p2() {
        return w2();
    }

    @Override
    public int q2() {
        return w2();
    }

    @Override
    public final boolean s1() {
        return true;
    }

    public T10 u2() {
        return this.f52781k;
    }

    public abstract boolean v2();

    public int w2() {
        return (!e(y2()) || y2().n().J().x2()) ? 255 : 15;
    }

    public final void x2() {
        if (!f52780l && !v2()) {
            throw new AssertionError();
        }
        if (v2() && !y2().K() && ((C10340xw0) this.f54321f.get(0)).K()) {
            C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
            ArrayList arrayList = this.f54321f;
            arrayList.set(0, (C10340xw0) arrayList.get(1));
            this.f54321f.set(1, c10340xw0);
        }
    }

    public C10340xw0 y2() {
        return (C10340xw0) this.f54321f.get(1);
    }

    @Override
    public final boolean a(InterfaceC5381Je0 interfaceC5381Je0) {
        if (y2().T() && ((C10340xw0) this.f54321f.get(0)).T()) {
            int b10 = interfaceC5381Je0.b((C10340xw0) this.f54321f.get(0), this.f54322g);
            int b11 = interfaceC5381Je0.b(y2(), this.f54322g);
            int b12 = interfaceC5381Je0.b(this.f54320e, this.f54322g);
            if ((b10 == b12 || (v2() && b11 == b12)) && b10 <= 15 && b11 <= 15) {
                C8570nJ e10 = interfaceC5381Je0.e();
                e10.getClass();
                if (!e10.a(C2.M) || !(this instanceof C7433gY)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
        nt.b(this);
    }

    @Override
    public AbstractC8999pu0 a(C4798y c4798y) {
        return D70.a(this.f52781k);
    }
}
