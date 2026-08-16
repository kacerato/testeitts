package Xd;

import be.InterfaceC3868a;
import he.InterfaceC13453h;
import java.util.Random;
import java.util.RandomAccess;

public class C3275i extends C3267e implements InterfaceC3868a {

    public static final long f28503f = -7754090372962971524L;

    public final InterfaceC3868a f28504e;

    public C3275i(InterfaceC3868a interfaceC3868a) {
        super(interfaceC3868a);
        this.f28504e = interfaceC3868a;
    }

    private Object b() {
        InterfaceC3868a interfaceC3868a = this.f28504e;
        return interfaceC3868a instanceof RandomAccess ? new y0(interfaceC3868a) : this;
    }

    @Override
    public void Ae(int i10, byte[] bArr, int i11, int i12) {
        synchronized (this.f28471c) {
            this.f28504e.Ae(i10, bArr, i11, i12);
        }
    }

    @Override
    public byte B0(int i10) {
        byte B02;
        synchronized (this.f28471c) {
            B02 = this.f28504e.B0(i10);
        }
        return B02;
    }

    @Override
    public void C7(byte[] bArr, int i10, int i11) {
        synchronized (this.f28471c) {
            this.f28504e.C7(bArr, i10, i11);
        }
    }

    @Override
    public void D7(int i10, int i11, byte b10) {
        synchronized (this.f28471c) {
            this.f28504e.D7(i10, i11, b10);
        }
    }

    @Override
    public byte E8(int i10, byte b10) {
        byte E82;
        synchronized (this.f28471c) {
            E82 = this.f28504e.E8(i10, b10);
        }
        return E82;
    }

    @Override
    public void Fe(int i10, byte[] bArr) {
        synchronized (this.f28471c) {
            this.f28504e.Fe(i10, bArr);
        }
    }

    @Override
    public void J0(Random random) {
        synchronized (this.f28471c) {
            this.f28504e.J0(random);
        }
    }

    @Override
    public int J4(int i10, byte b10) {
        int J42;
        synchronized (this.f28471c) {
            J42 = this.f28504e.J4(i10, b10);
        }
        return J42;
    }

    @Override
    public int O3(byte b10) {
        int O32;
        synchronized (this.f28471c) {
            O32 = this.f28504e.O3(b10);
        }
        return O32;
    }

    @Override
    public byte[] Oe(byte[] bArr, int i10, int i11, int i12) {
        byte[] Oe2;
        synchronized (this.f28471c) {
            Oe2 = this.f28504e.Oe(bArr, i10, i11, i12);
        }
        return Oe2;
    }

    @Override
    public int Rb(byte b10, int i10, int i11) {
        int Rb2;
        synchronized (this.f28471c) {
            Rb2 = this.f28504e.Rb(b10, i10, i11);
        }
        return Rb2;
    }

    @Override
    public InterfaceC3868a S6(InterfaceC13453h interfaceC13453h) {
        InterfaceC3868a S62;
        synchronized (this.f28471c) {
            S62 = this.f28504e.S6(interfaceC13453h);
        }
        return S62;
    }

    @Override
    public void T2(byte b10) {
        synchronized (this.f28471c) {
            this.f28504e.T2(b10);
        }
    }

    @Override
    public boolean b8(InterfaceC13453h interfaceC13453h) {
        boolean b82;
        synchronized (this.f28471c) {
            b82 = this.f28504e.b8(interfaceC13453h);
        }
        return b82;
    }

    @Override
    public byte[] cd(byte[] bArr, int i10, int i11) {
        byte[] cd2;
        synchronized (this.f28471c) {
            cd2 = this.f28504e.cd(bArr, i10, i11);
        }
        return cd2;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28471c) {
            equals = this.f28504e.equals(obj);
        }
        return equals;
    }

    @Override
    public byte get(int i10) {
        byte b10;
        synchronized (this.f28471c) {
            b10 = this.f28504e.get(i10);
        }
        return b10;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28471c) {
            hashCode = this.f28504e.hashCode();
        }
        return hashCode;
    }

    @Override
    public void l1(byte[] bArr) {
        synchronized (this.f28471c) {
            this.f28504e.l1(bArr);
        }
    }

    @Override
    public byte max() {
        byte max;
        synchronized (this.f28471c) {
            max = this.f28504e.max();
        }
        return max;
    }

    @Override
    public byte min() {
        byte min;
        synchronized (this.f28471c) {
            min = this.f28504e.min();
        }
        return min;
    }

    @Override
    public void n8(int i10, byte b10) {
        synchronized (this.f28471c) {
            this.f28504e.n8(i10, b10);
        }
    }

    @Override
    public byte o() {
        byte o10;
        synchronized (this.f28471c) {
            o10 = this.f28504e.o();
        }
        return o10;
    }

    @Override
    public int p1(byte b10) {
        int p12;
        synchronized (this.f28471c) {
            p12 = this.f28504e.p1(b10);
        }
        return p12;
    }

    @Override
    public void r2(int i10, byte[] bArr) {
        synchronized (this.f28471c) {
            this.f28504e.r2(i10, bArr);
        }
    }

    @Override
    public void s(Ud.a aVar) {
        synchronized (this.f28471c) {
            this.f28504e.s(aVar);
        }
    }

    @Override
    public InterfaceC3868a sb(InterfaceC13453h interfaceC13453h) {
        InterfaceC3868a sb2;
        synchronized (this.f28471c) {
            sb2 = this.f28504e.sb(interfaceC13453h);
        }
        return sb2;
    }

    @Override
    public byte set(int i10, byte b10) {
        byte b11;
        synchronized (this.f28471c) {
            b11 = this.f28504e.set(i10, b10);
        }
        return b11;
    }

    @Override
    public void sort() {
        synchronized (this.f28471c) {
            this.f28504e.sort();
        }
    }

    @Override
    public InterfaceC3868a subList(int i10, int i11) {
        C3275i c3275i;
        synchronized (this.f28471c) {
            c3275i = new C3275i(this.f28504e.subList(i10, i11), this.f28471c);
        }
        return c3275i;
    }

    @Override
    public void t0(int i10, int i11) {
        synchronized (this.f28471c) {
            this.f28504e.t0(i10, i11);
        }
    }

    @Override
    public void u0() {
        synchronized (this.f28471c) {
            this.f28504e.u0();
        }
    }

    @Override
    public void w0(int i10, int i11) {
        synchronized (this.f28471c) {
            this.f28504e.w0(i10, i11);
        }
    }

    @Override
    public int w6(int i10, byte b10) {
        int w62;
        synchronized (this.f28471c) {
            w62 = this.f28504e.w6(i10, b10);
        }
        return w62;
    }

    @Override
    public void y0(int i10, int i11) {
        synchronized (this.f28471c) {
            this.f28504e.y0(i10, i11);
        }
    }

    @Override
    public byte[] z0(int i10, int i11) {
        byte[] z02;
        synchronized (this.f28471c) {
            z02 = this.f28504e.z0(i10, i11);
        }
        return z02;
    }

    @Override
    public int z3(byte b10) {
        int z32;
        synchronized (this.f28471c) {
            z32 = this.f28504e.z3(b10);
        }
        return z32;
    }

    @Override
    public void set(int i10, byte[] bArr, int i11, int i12) {
        synchronized (this.f28471c) {
            this.f28504e.set(i10, bArr, i11, i12);
        }
    }

    public C3275i(InterfaceC3868a interfaceC3868a, Object obj) {
        super(interfaceC3868a, obj);
        this.f28504e = interfaceC3868a;
    }
}
