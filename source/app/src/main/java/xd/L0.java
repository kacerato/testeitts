package Xd;

import be.InterfaceC3876i;
import java.util.Random;
import java.util.RandomAccess;

public class L0 extends H0 implements InterfaceC3876i {

    public static final long f28364f = -7754090372962971524L;

    public final InterfaceC3876i f28365e;

    public L0(InterfaceC3876i interfaceC3876i) {
        super(interfaceC3876i);
        this.f28365e = interfaceC3876i;
    }

    @Override
    public short B0(int i10) {
        short B02;
        synchronized (this.f28330c) {
            B02 = this.f28365e.B0(i10);
        }
        return B02;
    }

    @Override
    public int H6(int i10, short s10) {
        int H62;
        synchronized (this.f28330c) {
            H62 = this.f28365e.H6(i10, s10);
        }
        return H62;
    }

    @Override
    public void J0(Random random) {
        synchronized (this.f28330c) {
            this.f28365e.J0(random);
        }
    }

    @Override
    public void O7(int i10, short s10) {
        synchronized (this.f28330c) {
            this.f28365e.O7(i10, s10);
        }
    }

    @Override
    public short O8(int i10, short s10) {
        short O82;
        synchronized (this.f28330c) {
            O82 = this.f28365e.O8(i10, s10);
        }
        return O82;
    }

    @Override
    public void Ve(int i10, short[] sArr) {
        synchronized (this.f28330c) {
            this.f28365e.Ve(i10, sArr);
        }
    }

    @Override
    public void X2(short[] sArr) {
        synchronized (this.f28330c) {
            this.f28365e.X2(sArr);
        }
    }

    @Override
    public InterfaceC3876i Y6(he.t0 t0Var) {
        InterfaceC3876i Y62;
        synchronized (this.f28330c) {
            Y62 = this.f28365e.Y6(t0Var);
        }
        return Y62;
    }

    @Override
    public void Y7(int i10, short[] sArr, int i11, int i12) {
        synchronized (this.f28330c) {
            this.f28365e.Y7(i10, sArr, i11, i12);
        }
    }

    @Override
    public void a3(int i10, short[] sArr, int i11, int i12) {
        synchronized (this.f28330c) {
            this.f28365e.a3(i10, sArr, i11, i12);
        }
    }

    public final Object b() {
        InterfaceC3876i interfaceC3876i = this.f28365e;
        return interfaceC3876i instanceof RandomAccess ? new E0(interfaceC3876i) : this;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28330c) {
            equals = this.f28365e.equals(obj);
        }
        return equals;
    }

    @Override
    public int f6(int i10, short s10) {
        int f62;
        synchronized (this.f28330c) {
            f62 = this.f28365e.f6(i10, s10);
        }
        return f62;
    }

    @Override
    public short get(int i10) {
        short s10;
        synchronized (this.f28330c) {
            s10 = this.f28365e.get(i10);
        }
        return s10;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28330c) {
            hashCode = this.f28365e.hashCode();
        }
        return hashCode;
    }

    @Override
    public void ib(short[] sArr, int i10, int i11) {
        synchronized (this.f28330c) {
            this.f28365e.ib(sArr, i10, i11);
        }
    }

    @Override
    public void j3(short s10) {
        synchronized (this.f28330c) {
            this.f28365e.j3(s10);
        }
    }

    @Override
    public InterfaceC3876i l7(he.t0 t0Var) {
        InterfaceC3876i l72;
        synchronized (this.f28330c) {
            l72 = this.f28365e.l7(t0Var);
        }
        return l72;
    }

    @Override
    public short max() {
        short max;
        synchronized (this.f28330c) {
            max = this.f28365e.max();
        }
        return max;
    }

    @Override
    public short min() {
        short min;
        synchronized (this.f28330c) {
            min = this.f28365e.min();
        }
        return min;
    }

    @Override
    public short o() {
        short o10;
        synchronized (this.f28330c) {
            o10 = this.f28365e.o();
        }
        return o10;
    }

    @Override
    public void o6(int i10, int i11, short s10) {
        synchronized (this.f28330c) {
            this.f28365e.o6(i10, i11, s10);
        }
    }

    @Override
    public void qd(int i10, short[] sArr) {
        synchronized (this.f28330c) {
            this.f28365e.qd(i10, sArr);
        }
    }

    @Override
    public void r(Ud.h hVar) {
        synchronized (this.f28330c) {
            this.f28365e.r(hVar);
        }
    }

    @Override
    public int r5(short s10, int i10, int i11) {
        int r52;
        synchronized (this.f28330c) {
            r52 = this.f28365e.r5(s10, i10, i11);
        }
        return r52;
    }

    @Override
    public short[] rd(short[] sArr, int i10, int i11, int i12) {
        short[] rd2;
        synchronized (this.f28330c) {
            rd2 = this.f28365e.rd(sArr, i10, i11, i12);
        }
        return rd2;
    }

    @Override
    public void sort() {
        synchronized (this.f28330c) {
            this.f28365e.sort();
        }
    }

    public InterfaceC3876i subList(int i10, int i11) {
        L0 l02;
        synchronized (this.f28330c) {
            l02 = new L0(this.f28365e.subList(i10, i11), this.f28330c);
        }
        return l02;
    }

    @Override
    public void t0(int i10, int i11) {
        synchronized (this.f28330c) {
            this.f28365e.t0(i10, i11);
        }
    }

    @Override
    public short t5(int i10, short s10) {
        short t52;
        synchronized (this.f28330c) {
            t52 = this.f28365e.t5(i10, s10);
        }
        return t52;
    }

    @Override
    public void u0() {
        synchronized (this.f28330c) {
            this.f28365e.u0();
        }
    }

    @Override
    public void w0(int i10, int i11) {
        synchronized (this.f28330c) {
            this.f28365e.w0(i10, i11);
        }
    }

    @Override
    public int w4(short s10) {
        int w42;
        synchronized (this.f28330c) {
            w42 = this.f28365e.w4(s10);
        }
        return w42;
    }

    @Override
    public boolean wb(he.t0 t0Var) {
        boolean wb2;
        synchronized (this.f28330c) {
            wb2 = this.f28365e.wb(t0Var);
        }
        return wb2;
    }

    @Override
    public void y0(int i10, int i11) {
        synchronized (this.f28330c) {
            this.f28365e.y0(i10, i11);
        }
    }

    @Override
    public int y3(short s10) {
        int y32;
        synchronized (this.f28330c) {
            y32 = this.f28365e.y3(s10);
        }
        return y32;
    }

    @Override
    public int y5(short s10) {
        int y52;
        synchronized (this.f28330c) {
            y52 = this.f28365e.y5(s10);
        }
        return y52;
    }

    @Override
    public short[] z0(int i10, int i11) {
        short[] z02;
        synchronized (this.f28330c) {
            z02 = this.f28365e.z0(i10, i11);
        }
        return z02;
    }

    @Override
    public short[] zb(short[] sArr, int i10, int i11) {
        short[] zb2;
        synchronized (this.f28330c) {
            zb2 = this.f28365e.zb(sArr, i10, i11);
        }
        return zb2;
    }

    public L0(InterfaceC3876i interfaceC3876i, Object obj) {
        super(interfaceC3876i, obj);
        this.f28365e = interfaceC3876i;
    }
}
