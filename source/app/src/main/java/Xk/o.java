package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class o extends AbstractC14545v {

    public C14539s f29593b;

    public C14549x f29594c;

    public byte[][] f29595d;

    public byte[] f29596e;

    public byte[][] f29597f;

    public byte[] f29598g;

    public byte[] f29599h;

    public Ul.a[] f29600i;

    public o(E e10) {
        int i10 = 0;
        if (e10.I(0) instanceof C14539s) {
            this.f29593b = C14539s.F(e10.I(0));
        } else {
            this.f29594c = C14549x.K(e10.I(0));
        }
        E e11 = (E) e10.I(1);
        this.f29595d = new byte[e11.size()];
        for (int i11 = 0; i11 < e11.size(); i11++) {
            this.f29595d[i11] = ((AbstractC14551y) e11.I(i11)).H();
        }
        this.f29596e = ((AbstractC14551y) ((E) e10.I(2)).I(0)).H();
        E e12 = (E) e10.I(3);
        this.f29597f = new byte[e12.size()];
        for (int i12 = 0; i12 < e12.size(); i12++) {
            this.f29597f[i12] = ((AbstractC14551y) e12.I(i12)).H();
        }
        this.f29598g = ((AbstractC14551y) ((E) e10.I(4)).I(0)).H();
        this.f29599h = ((AbstractC14551y) ((E) e10.I(5)).I(0)).H();
        E e13 = (E) e10.I(6);
        byte[][][][] bArr = new byte[e13.size()][][];
        byte[][][][] bArr2 = new byte[e13.size()][][];
        byte[][][] bArr3 = new byte[e13.size()][];
        byte[][] bArr4 = new byte[e13.size()];
        int i13 = 0;
        while (i13 < e13.size()) {
            E e14 = (E) e13.I(i13);
            E e15 = (E) e14.I(i10);
            bArr[i13] = new byte[e15.size()][];
            for (int i14 = i10; i14 < e15.size(); i14++) {
                E e16 = (E) e15.I(i14);
                bArr[i13][i14] = new byte[e16.size()];
                for (int i15 = 0; i15 < e16.size(); i15++) {
                    bArr[i13][i14][i15] = ((AbstractC14551y) e16.I(i15)).H();
                }
            }
            E e17 = (E) e14.I(1);
            bArr2[i13] = new byte[e17.size()][];
            for (int i16 = 0; i16 < e17.size(); i16++) {
                E e18 = (E) e17.I(i16);
                bArr2[i13][i16] = new byte[e18.size()];
                for (int i17 = 0; i17 < e18.size(); i17++) {
                    bArr2[i13][i16][i17] = ((AbstractC14551y) e18.I(i17)).H();
                }
            }
            E e19 = (E) e14.I(2);
            bArr3[i13] = new byte[e19.size()];
            for (int i18 = 0; i18 < e19.size(); i18++) {
                bArr3[i13][i18] = ((AbstractC14551y) e19.I(i18)).H();
            }
            bArr4[i13] = ((AbstractC14551y) e14.I(3)).H();
            i13++;
            i10 = 0;
        }
        int length = this.f29599h.length - 1;
        this.f29600i = new Ul.a[length];
        int i19 = 0;
        while (i19 < length) {
            byte[] bArr5 = this.f29599h;
            int i20 = i19 + 1;
            this.f29600i[i19] = new Ul.a(bArr5[i19], bArr5[i20], Vl.c.f(bArr[i19]), Vl.c.f(bArr2[i19]), Vl.c.d(bArr3[i19]), Vl.c.b(bArr4[i19]));
            i19 = i20;
        }
    }

    public static o w(Object obj) {
        if (obj instanceof o) {
            return (o) obj;
        }
        if (obj != null) {
            return new o(E.G(obj));
        }
        return null;
    }

    public C14539s A() {
        return this.f29593b;
    }

    public int[] B() {
        return Vl.c.g(this.f29599h);
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        InterfaceC14516g interfaceC14516g = this.f29593b;
        if (interfaceC14516g == null) {
            interfaceC14516g = this.f29594c;
        }
        c14518h.a(interfaceC14516g);
        C14518h c14518h2 = new C14518h();
        for (int i10 = 0; i10 < this.f29595d.length; i10++) {
            c14518h2.a(new C0(this.f29595d[i10]));
        }
        c14518h.a(new G0(c14518h2));
        C14518h c14518h3 = new C14518h();
        c14518h3.a(new C0(this.f29596e));
        c14518h.a(new G0(c14518h3));
        C14518h c14518h4 = new C14518h();
        for (int i11 = 0; i11 < this.f29597f.length; i11++) {
            c14518h4.a(new C0(this.f29597f[i11]));
        }
        c14518h.a(new G0(c14518h4));
        C14518h c14518h5 = new C14518h();
        c14518h5.a(new C0(this.f29598g));
        c14518h.a(new G0(c14518h5));
        C14518h c14518h6 = new C14518h();
        c14518h6.a(new C0(this.f29599h));
        c14518h.a(new G0(c14518h6));
        C14518h c14518h7 = new C14518h();
        for (int i12 = 0; i12 < this.f29600i.length; i12++) {
            C14518h c14518h8 = new C14518h();
            byte[][][] e10 = Vl.c.e(this.f29600i[i12].a());
            C14518h c14518h9 = new C14518h();
            for (int i13 = 0; i13 < e10.length; i13++) {
                C14518h c14518h10 = new C14518h();
                for (int i14 = 0; i14 < e10[i13].length; i14++) {
                    c14518h10.a(new C0(e10[i13][i14]));
                }
                c14518h9.a(new G0(c14518h10));
            }
            c14518h8.a(new G0(c14518h9));
            byte[][][] e11 = Vl.c.e(this.f29600i[i12].b());
            C14518h c14518h11 = new C14518h();
            for (int i15 = 0; i15 < e11.length; i15++) {
                C14518h c14518h12 = new C14518h();
                for (int i16 = 0; i16 < e11[i15].length; i16++) {
                    c14518h12.a(new C0(e11[i15][i16]));
                }
                c14518h11.a(new G0(c14518h12));
            }
            c14518h8.a(new G0(c14518h11));
            byte[][] c10 = Vl.c.c(this.f29600i[i12].d());
            C14518h c14518h13 = new C14518h();
            for (byte[] bArr : c10) {
                c14518h13.a(new C0(bArr));
            }
            c14518h8.a(new G0(c14518h13));
            c14518h8.a(new C0(Vl.c.a(this.f29600i[i12].c())));
            c14518h7.a(new G0(c14518h8));
        }
        c14518h.a(new G0(c14518h7));
        return new G0(c14518h);
    }

    public short[] u() {
        return Vl.c.b(this.f29596e);
    }

    public short[] v() {
        return Vl.c.b(this.f29598g);
    }

    public short[][] x() {
        return Vl.c.d(this.f29595d);
    }

    public short[][] y() {
        return Vl.c.d(this.f29597f);
    }

    public Ul.a[] z() {
        return this.f29600i;
    }

    public o(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, Ul.a[] aVarArr) {
        this.f29593b = new C14539s(1L);
        this.f29595d = Vl.c.c(sArr);
        this.f29596e = Vl.c.a(sArr2);
        this.f29597f = Vl.c.c(sArr3);
        this.f29598g = Vl.c.a(sArr4);
        this.f29599h = Vl.c.h(iArr);
        this.f29600i = aVarArr;
    }
}
