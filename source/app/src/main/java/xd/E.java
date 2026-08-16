package Xd;

import be.InterfaceC3870c;
import he.InterfaceC13470z;
import java.util.Random;
import java.util.RandomAccess;

public class E extends A implements InterfaceC3870c {

    public static final long f28304f = -7754090372962971524L;

    public final InterfaceC3870c f28305e;

    public E(InterfaceC3870c interfaceC3870c) {
        super(interfaceC3870c);
        this.f28305e = interfaceC3870c;
    }

    private Object c() {
        InterfaceC3870c interfaceC3870c = this.f28305e;
        return interfaceC3870c instanceof RandomAccess ? new A0(interfaceC3870c) : this;
    }

    @Override
    public double B0(int i10) {
        double B02;
        synchronized (this.f28284c) {
            B02 = this.f28305e.B0(i10);
        }
        return B02;
    }

    @Override
    public void Bc(int i10, double[] dArr, int i11, int i12) {
        synchronized (this.f28284c) {
            this.f28305e.Bc(i10, dArr, i11, i12);
        }
    }

    @Override
    public void F7(int i10, int i11, double d10) {
        synchronized (this.f28284c) {
            this.f28305e.F7(i10, i11, d10);
        }
    }

    @Override
    public double G8(int i10, double d10) {
        double G82;
        synchronized (this.f28284c) {
            G82 = this.f28305e.G8(i10, d10);
        }
        return G82;
    }

    @Override
    public void Ie(int i10, double[] dArr) {
        synchronized (this.f28284c) {
            this.f28305e.Ie(i10, dArr);
        }
    }

    @Override
    public void J0(Random random) {
        synchronized (this.f28284c) {
            this.f28305e.J0(random);
        }
    }

    @Override
    public void P2(double d10) {
        synchronized (this.f28284c) {
            this.f28305e.P2(d10);
        }
    }

    @Override
    public InterfaceC3870c a6(InterfaceC13470z interfaceC13470z) {
        InterfaceC3870c a62;
        synchronized (this.f28284c) {
            a62 = this.f28305e.a6(interfaceC13470z);
        }
        return a62;
    }

    @Override
    public void ad(int i10, double[] dArr) {
        synchronized (this.f28284c) {
            this.f28305e.ad(i10, dArr);
        }
    }

    @Override
    public int e4(double d10) {
        int e42;
        synchronized (this.f28284c) {
            e42 = this.f28305e.e4(d10);
        }
        return e42;
    }

    @Override
    public int e6(int i10, double d10) {
        int e62;
        synchronized (this.f28284c) {
            e62 = this.f28305e.e6(i10, d10);
        }
        return e62;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28284c) {
            equals = this.f28305e.equals(obj);
        }
        return equals;
    }

    @Override
    public double g5(int i10, double d10) {
        double g52;
        synchronized (this.f28284c) {
            g52 = this.f28305e.g5(i10, d10);
        }
        return g52;
    }

    @Override
    public int g6(double d10) {
        int g62;
        synchronized (this.f28284c) {
            g62 = this.f28305e.g6(d10);
        }
        return g62;
    }

    @Override
    public double get(int i10) {
        double d10;
        synchronized (this.f28284c) {
            d10 = this.f28305e.get(i10);
        }
        return d10;
    }

    @Override
    public double[] ha(double[] dArr, int i10, int i11, int i12) {
        double[] ha2;
        synchronized (this.f28284c) {
            ha2 = this.f28305e.ha(dArr, i10, i11, i12);
        }
        return ha2;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28284c) {
            hashCode = this.f28305e.hashCode();
        }
        return hashCode;
    }

    @Override
    public double[] i3(double[] dArr, int i10, int i11) {
        double[] i32;
        synchronized (this.f28284c) {
            i32 = this.f28305e.i3(dArr, i10, i11);
        }
        return i32;
    }

    @Override
    public boolean i7(InterfaceC13470z interfaceC13470z) {
        boolean i72;
        synchronized (this.f28284c) {
            i72 = this.f28305e.i7(interfaceC13470z);
        }
        return i72;
    }

    @Override
    public void i8(int i10, double d10) {
        synchronized (this.f28284c) {
            this.f28305e.i8(i10, d10);
        }
    }

    @Override
    public double max() {
        double max;
        synchronized (this.f28284c) {
            max = this.f28305e.max();
        }
        return max;
    }

    @Override
    public double min() {
        double min;
        synchronized (this.f28284c) {
            min = this.f28305e.min();
        }
        return min;
    }

    @Override
    public void n3(double[] dArr) {
        synchronized (this.f28284c) {
            this.f28305e.n3(dArr);
        }
    }

    @Override
    public double o() {
        double o10;
        synchronized (this.f28284c) {
            o10 = this.f28305e.o();
        }
        return o10;
    }

    @Override
    public void p(Ud.c cVar) {
        synchronized (this.f28284c) {
            this.f28305e.p(cVar);
        }
    }

    @Override
    public void q3(double[] dArr, int i10, int i11) {
        synchronized (this.f28284c) {
            this.f28305e.q3(dArr, i10, i11);
        }
    }

    @Override
    public void q7(int i10, double[] dArr, int i11, int i12) {
        synchronized (this.f28284c) {
            this.f28305e.q7(i10, dArr, i11, i12);
        }
    }

    @Override
    public InterfaceC3870c q8(InterfaceC13470z interfaceC13470z) {
        InterfaceC3870c q82;
        synchronized (this.f28284c) {
            q82 = this.f28305e.q8(interfaceC13470z);
        }
        return q82;
    }

    @Override
    public void sort() {
        synchronized (this.f28284c) {
            this.f28305e.sort();
        }
    }

    public InterfaceC3870c subList(int i10, int i11) {
        E e10;
        synchronized (this.f28284c) {
            e10 = new E(this.f28305e.subList(i10, i11), this.f28284c);
        }
        return e10;
    }

    @Override
    public void t0(int i10, int i11) {
        synchronized (this.f28284c) {
            this.f28305e.t0(i10, i11);
        }
    }

    @Override
    public void u0() {
        synchronized (this.f28284c) {
            this.f28305e.u0();
        }
    }

    @Override
    public int uc(double d10, int i10, int i11) {
        int uc2;
        synchronized (this.f28284c) {
            uc2 = this.f28305e.uc(d10, i10, i11);
        }
        return uc2;
    }

    @Override
    public void w0(int i10, int i11) {
        synchronized (this.f28284c) {
            this.f28305e.w0(i10, i11);
        }
    }

    @Override
    public int w3(double d10) {
        int w32;
        synchronized (this.f28284c) {
            w32 = this.f28305e.w3(d10);
        }
        return w32;
    }

    @Override
    public int x6(int i10, double d10) {
        int x62;
        synchronized (this.f28284c) {
            x62 = this.f28305e.x6(i10, d10);
        }
        return x62;
    }

    @Override
    public void y0(int i10, int i11) {
        synchronized (this.f28284c) {
            this.f28305e.y0(i10, i11);
        }
    }

    @Override
    public double[] z0(int i10, int i11) {
        double[] z02;
        synchronized (this.f28284c) {
            z02 = this.f28305e.z0(i10, i11);
        }
        return z02;
    }

    public E(InterfaceC3870c interfaceC3870c, Object obj) {
        super(interfaceC3870c, obj);
        this.f28305e = interfaceC3870c;
    }
}
