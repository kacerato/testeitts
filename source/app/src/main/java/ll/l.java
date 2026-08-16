package ll;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.r;
import Xi.x0;
import java.lang.reflect.Array;
import java.security.SecureRandom;

public class l implements Yk.g {

    public static final int f96620g = 65536;

    public SecureRandom f96621a;

    public int f96622b;

    public C14155a f96623c = new C14155a();

    public g f96624d;

    public InterfaceC2392y f96625e;

    public n f96626f;

    public static class a {

        public static final int[] f96627a;

        static {
            int[] iArr = new int[n.values().length];
            f96627a = iArr;
            try {
                iArr[n.CLASSIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f96627a[n.CIRCUMZENITHAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f96627a[n.COMPRESSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        g gVar;
        if (z10) {
            if (interfaceC2379k instanceof x0) {
                x0 x0Var = (x0) interfaceC2379k;
                this.f96621a = x0Var.b();
                gVar = (g) x0Var.a();
            } else {
                gVar = (g) interfaceC2379k;
                SecureRandom h10 = r.h();
                byte[] bArr = new byte[gVar.e().d()];
                h10.nextBytes(bArr);
                this.f96621a = new C14157c(bArr, gVar.e().a());
            }
            this.f96626f = gVar.e().l();
            this.f96624d = gVar;
        } else {
            g gVar2 = (g) interfaceC2379k;
            this.f96624d = gVar2;
            this.f96626f = gVar2.e().l();
        }
        this.f96622b = this.f96624d.d();
        this.f96625e = this.f96624d.e().a();
    }

    @Override
    public byte[] b(byte[] bArr) {
        return e(bArr);
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        short[] c10;
        byte[] bArr3 = new byte[this.f96625e.f()];
        this.f96625e.update(bArr, 0, bArr.length);
        this.f96625e.c(bArr3, 0);
        int e10 = this.f96624d.e().e();
        int f10 = this.f96624d.e().f();
        k kVar = new k(this.f96624d.e());
        short[] f11 = f(m.m(this.f96625e, bArr3, org.bouncycastle.util.a.X(bArr2, f10, bArr2.length), new byte[e10]));
        short[] d10 = m.d(org.bouncycastle.util.a.X(bArr2, 0, f10));
        int i10 = a.f96627a[this.f96626f.ordinal()];
        if (i10 == 1) {
            c10 = kVar.c((j) this.f96624d, d10);
        } else {
            if (i10 != 2 && i10 != 3) {
                throw new IllegalArgumentException("No valid version. Please choose one of the following: classic, circumzenithal, compressed");
            }
            c10 = kVar.d((j) this.f96624d, d10);
        }
        return m.e(f11, c10);
    }

    public final byte[] e(byte[] bArr) {
        short[][] sArr;
        byte[] bArr2;
        byte[] bArr3 = new byte[this.f96625e.f()];
        this.f96625e.update(bArr, 0, bArr.length);
        this.f96625e.c(bArr3, 0);
        int j10 = this.f96624d.e().j();
        int h10 = this.f96624d.e().h();
        int i10 = this.f96624d.e().i();
        int e10 = this.f96624d.e().e();
        int f10 = this.f96624d.e().f();
        i iVar = (i) this.f96624d;
        InterfaceC2392y interfaceC2392y = this.f96625e;
        this.f96621a = new C14157c(m.m(interfaceC2392y, iVar.f96596e, bArr3, new byte[interfaceC2392y.f()]), iVar.e().a());
        short[] sArr2 = new short[j10];
        short[] sArr3 = new short[h10];
        short[] sArr4 = new short[i10];
        Class<Short> cls = Short.TYPE;
        short[][] sArr5 = (short[][]) Array.newInstance(cls, i10, h10);
        short[][] sArr6 = (short[][]) Array.newInstance(cls, i10, i10);
        byte[] bArr4 = new byte[iVar.e().c()];
        short[] sArr7 = new short[h10];
        short[] sArr8 = null;
        short[] sArr9 = new short[i10];
        short[] sArr10 = new short[e10];
        short[][] sArr11 = null;
        int i11 = 0;
        while (sArr11 == null && i11 < 65536) {
            byte[] bArr5 = new byte[j10];
            this.f96621a.nextBytes(bArr5);
            int i12 = 0;
            while (true) {
                bArr2 = bArr3;
                if (i12 >= j10) {
                    break;
                }
                sArr2[i12] = (short) (bArr5[i12] & 255);
                i12++;
                bArr3 = bArr2;
            }
            short[][] sArr12 = (short[][]) Array.newInstance(Short.TYPE, h10, h10);
            for (int i13 = 0; i13 < j10; i13++) {
                int i14 = 0;
                while (i14 < h10) {
                    byte[] bArr6 = bArr4;
                    int i15 = 0;
                    while (i15 < h10) {
                        int i16 = e10;
                        short[][] sArr13 = sArr6;
                        short x10 = C14156b.x(iVar.f96602k[i14][i13][i15], sArr2[i13]);
                        short[] sArr14 = sArr12[i14];
                        sArr14[i15] = C14156b.a(sArr14[i15], x10);
                        i15++;
                        e10 = i16;
                        sArr6 = sArr13;
                        sArr5 = sArr5;
                    }
                    i14++;
                    bArr4 = bArr6;
                }
            }
            sArr11 = this.f96623c.e(sArr12);
            i11++;
            bArr3 = bArr2;
            sArr6 = sArr6;
        }
        byte[] bArr7 = bArr3;
        short[][] sArr15 = sArr6;
        int i17 = e10;
        byte[] bArr8 = bArr4;
        short[][] sArr16 = sArr5;
        for (int i18 = 0; i18 < h10; i18++) {
            sArr3[i18] = this.f96623c.k(iVar.f96601j[i18], sArr2);
        }
        for (int i19 = 0; i19 < j10; i19++) {
            for (int i20 = 0; i20 < i10; i20++) {
                sArr4[i20] = this.f96623c.k(iVar.f96603l[i20], sArr2);
                for (int i21 = 0; i21 < h10; i21++) {
                    short x11 = C14156b.x(iVar.f96604m[i20][i19][i21], sArr2[i19]);
                    short[] sArr17 = sArr16[i20];
                    sArr17[i21] = C14156b.a(sArr17[i21], x11);
                }
                for (int i22 = 0; i22 < i10; i22++) {
                    short x12 = C14156b.x(iVar.f96605n[i20][i19][i22], sArr2[i19]);
                    short[] sArr18 = sArr15[i20];
                    sArr18[i22] = C14156b.a(sArr18[i22], x12);
                }
            }
        }
        int i23 = i17;
        byte[] bArr9 = new byte[i23];
        short[] sArr19 = sArr7;
        while (sArr8 == null && i11 < 65536) {
            short[][] sArr20 = (short[][]) Array.newInstance(Short.TYPE, i10, i10);
            this.f96621a.nextBytes(bArr8);
            short[] f11 = f(m.m(this.f96625e, bArr7, bArr8, bArr9));
            byte[] bArr10 = bArr9;
            short[] sArr21 = sArr10;
            System.arraycopy(this.f96623c.c(org.bouncycastle.util.a.V(f11, h10), this.f96623c.i(iVar.f96597f, org.bouncycastle.util.a.c0(f11, h10, i23))), 0, sArr21, 0, h10);
            System.arraycopy(f11, h10, sArr21, h10, i10);
            short[] i24 = this.f96623c.i(sArr11, this.f96623c.c(sArr3, org.bouncycastle.util.a.V(sArr21, h10)));
            short[][] sArr22 = sArr16;
            short[] i25 = this.f96623c.i(sArr22, i24);
            short[] sArr23 = sArr3;
            int i26 = 0;
            while (true) {
                sArr = sArr11;
                if (i26 >= i10) {
                    break;
                }
                sArr9[i26] = this.f96623c.k(iVar.f96606o[i26], i24);
                i26++;
                sArr11 = sArr;
                sArr22 = sArr22;
            }
            sArr16 = sArr22;
            short[] sArr24 = sArr9;
            short[] c10 = this.f96623c.c(this.f96623c.c(this.f96623c.c(i25, sArr24), sArr4), org.bouncycastle.util.a.c0(sArr21, h10, i23));
            for (int i27 = 0; i27 < h10; i27++) {
                int i28 = 0;
                while (true) {
                    int i29 = i23;
                    if (i28 < i10) {
                        int i30 = 0;
                        while (i30 < i10) {
                            short[] sArr25 = sArr4;
                            short[] sArr26 = sArr24;
                            short x13 = C14156b.x(iVar.f96607p[i28][i27][i30], i24[i27]);
                            short[] sArr27 = sArr20[i28];
                            sArr27[i30] = C14156b.a(sArr27[i30], x13);
                            i30++;
                            i24 = i24;
                            sArr4 = sArr25;
                            sArr24 = sArr26;
                        }
                        i28++;
                        i23 = i29;
                    }
                }
            }
            int i31 = i23;
            short[] sArr28 = sArr24;
            short[] m10 = this.f96623c.m(this.f96623c.a(sArr20, sArr15), c10);
            i11++;
            sArr19 = i24;
            bArr9 = bArr10;
            sArr3 = sArr23;
            sArr11 = sArr;
            sArr8 = m10;
            sArr10 = sArr21;
            i23 = i31;
            sArr9 = sArr28;
        }
        short[] sArr29 = sArr8 == null ? new short[i10] : sArr8;
        short[] c11 = this.f96623c.c(this.f96623c.c(sArr2, this.f96623c.i(iVar.f96598g, sArr19)), this.f96623c.i(iVar.f96600i, sArr29));
        short[] c12 = this.f96623c.c(sArr19, this.f96623c.i(iVar.f96599h, sArr29));
        short[] V10 = org.bouncycastle.util.a.V(c11, f10);
        System.arraycopy(c12, 0, V10, j10, h10);
        System.arraycopy(sArr29, 0, V10, h10 + j10, i10);
        if (i11 != 65536) {
            return org.bouncycastle.util.a.B(m.c(V10), bArr8);
        }
        throw new IllegalStateException("unable to generate signature - LES not solvable");
    }

    public final short[] f(byte[] bArr) {
        int i10 = this.f96622b;
        short[] sArr = new short[i10];
        int i11 = 0;
        int i12 = 0;
        while (i11 < bArr.length) {
            sArr[i11] = (short) (bArr[i12] & 255);
            i12++;
            i11++;
            if (i11 >= i10) {
                break;
            }
        }
        return sArr;
    }
}
