package Xd;

import be.InterfaceC3872e;
import java.util.Random;
import java.util.RandomAccess;

public class C3262b0 extends X implements InterfaceC3872e {

    public static final long f28447f = -7754090372962971524L;

    public final InterfaceC3872e f28448e;

    public C3262b0(InterfaceC3872e interfaceC3872e) {
        super(interfaceC3872e);
        this.f28448e = interfaceC3872e;
    }

    private Object b() {
        InterfaceC3872e interfaceC3872e = this.f28448e;
        return interfaceC3872e instanceof RandomAccess ? new C0(interfaceC3872e) : this;
    }

    @Override
    public int B0(int i10) {
        int B02;
        synchronized (this.f28427c) {
            B02 = this.f28448e.B0(i10);
        }
        return B02;
    }

    @Override
    public int B6(int i10, int i11) {
        int B62;
        synchronized (this.f28427c) {
            B62 = this.f28448e.B6(i10, i11);
        }
        return B62;
    }

    @Override
    public int F3(int i10) {
        int F32;
        synchronized (this.f28427c) {
            F32 = this.f28448e.F3(i10);
        }
        return F32;
    }

    @Override
    public void I4(int i10, int[] iArr, int i11, int i12) {
        synchronized (this.f28427c) {
            this.f28448e.I4(i10, iArr, i11, i12);
        }
    }

    @Override
    public void J0(Random random) {
        synchronized (this.f28427c) {
            this.f28448e.J0(random);
        }
    }

    @Override
    public InterfaceC3872e Kb(he.S s10) {
        InterfaceC3872e Kb2;
        synchronized (this.f28427c) {
            Kb2 = this.f28448e.Kb(s10);
        }
        return Kb2;
    }

    @Override
    public void M7(int i10, int i11) {
        synchronized (this.f28427c) {
            this.f28448e.M7(i10, i11);
        }
    }

    @Override
    public int Q3(int i10) {
        int Q32;
        synchronized (this.f28427c) {
            Q32 = this.f28448e.Q3(i10);
        }
        return Q32;
    }

    @Override
    public int R8(int i10, int i11) {
        int R82;
        synchronized (this.f28427c) {
            R82 = this.f28448e.R8(i10, i11);
        }
        return R82;
    }

    @Override
    public void Ue(int i10, int[] iArr) {
        synchronized (this.f28427c) {
            this.f28448e.Ue(i10, iArr);
        }
    }

    @Override
    public boolean Wc(he.S s10) {
        boolean Wc2;
        synchronized (this.f28427c) {
            Wc2 = this.f28448e.Wc(s10);
        }
        return Wc2;
    }

    @Override
    public int[] Xa(int[] iArr, int i10, int i11, int i12) {
        int[] Xa2;
        synchronized (this.f28427c) {
            Xa2 = this.f28448e.Xa(iArr, i10, i11, i12);
        }
        return Xa2;
    }

    @Override
    public int c6(int i10, int i11) {
        int c62;
        synchronized (this.f28427c) {
            c62 = this.f28448e.c6(i10, i11);
        }
        return c62;
    }

    @Override
    public void d3(int i10) {
        synchronized (this.f28427c) {
            this.f28448e.d3(i10);
        }
    }

    @Override
    public void dd(int i10, int[] iArr) {
        synchronized (this.f28427c) {
            this.f28448e.dd(i10, iArr);
        }
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28427c) {
            equals = this.f28448e.equals(obj);
        }
        return equals;
    }

    @Override
    public void f(Ud.e eVar) {
        synchronized (this.f28427c) {
            this.f28448e.f(eVar);
        }
    }

    @Override
    public void f9(int[] iArr, int i10, int i11) {
        synchronized (this.f28427c) {
            this.f28448e.f9(iArr, i10, i11);
        }
    }

    @Override
    public int get(int i10) {
        int i11;
        synchronized (this.f28427c) {
            i11 = this.f28448e.get(i10);
        }
        return i11;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28427c) {
            hashCode = this.f28448e.hashCode();
        }
        return hashCode;
    }

    @Override
    public void k3(int[] iArr) {
        synchronized (this.f28427c) {
            this.f28448e.k3(iArr);
        }
    }

    @Override
    public int m6(int i10) {
        int m62;
        synchronized (this.f28427c) {
            m62 = this.f28448e.m6(i10);
        }
        return m62;
    }

    @Override
    public int max() {
        int max;
        synchronized (this.f28427c) {
            max = this.f28448e.max();
        }
        return max;
    }

    @Override
    public int min() {
        int min;
        synchronized (this.f28427c) {
            min = this.f28448e.min();
        }
        return min;
    }

    @Override
    public int n5(int i10, int i11) {
        int n52;
        synchronized (this.f28427c) {
            n52 = this.f28448e.n5(i10, i11);
        }
        return n52;
    }

    @Override
    public int o() {
        int o10;
        synchronized (this.f28427c) {
            o10 = this.f28448e.o();
        }
        return o10;
    }

    @Override
    public void s6(int i10, int i11, int i12) {
        synchronized (this.f28427c) {
            this.f28448e.s6(i10, i11, i12);
        }
    }

    @Override
    public void sort() {
        synchronized (this.f28427c) {
            this.f28448e.sort();
        }
    }

    public InterfaceC3872e subList(int i10, int i11) {
        C3262b0 c3262b0;
        synchronized (this.f28427c) {
            c3262b0 = new C3262b0(this.f28448e.subList(i10, i11), this.f28427c);
        }
        return c3262b0;
    }

    @Override
    public void t0(int i10, int i11) {
        synchronized (this.f28427c) {
            this.f28448e.t0(i10, i11);
        }
    }

    @Override
    public void u0() {
        synchronized (this.f28427c) {
            this.f28448e.u0();
        }
    }

    @Override
    public void v7(int i10, int[] iArr, int i11, int i12) {
        synchronized (this.f28427c) {
            this.f28448e.v7(i10, iArr, i11, i12);
        }
    }

    @Override
    public void w0(int i10, int i11) {
        synchronized (this.f28427c) {
            this.f28448e.w0(i10, i11);
        }
    }

    @Override
    public int[] w9(int[] iArr, int i10, int i11) {
        int[] w92;
        synchronized (this.f28427c) {
            w92 = this.f28448e.w9(iArr, i10, i11);
        }
        return w92;
    }

    @Override
    public void y0(int i10, int i11) {
        synchronized (this.f28427c) {
            this.f28448e.y0(i10, i11);
        }
    }

    @Override
    public int y7(int i10, int i11, int i12) {
        int y72;
        synchronized (this.f28427c) {
            y72 = this.f28448e.y7(i10, i11, i12);
        }
        return y72;
    }

    @Override
    public int[] z0(int i10, int i11) {
        int[] z02;
        synchronized (this.f28427c) {
            z02 = this.f28448e.z0(i10, i11);
        }
        return z02;
    }

    @Override
    public InterfaceC3872e ze(he.S s10) {
        InterfaceC3872e ze2;
        synchronized (this.f28427c) {
            ze2 = this.f28448e.ze(s10);
        }
        return ze2;
    }

    public C3262b0(InterfaceC3872e interfaceC3872e, Object obj) {
        super(interfaceC3872e, obj);
        this.f28448e = interfaceC3872e;
    }
}
