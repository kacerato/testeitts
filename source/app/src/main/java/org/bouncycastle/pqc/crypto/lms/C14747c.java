package org.bouncycastle.pqc.crypto.lms;

import java.util.Arrays;
import java.util.List;
import org.bouncycastle.pqc.crypto.ExhaustedPrivateKeyException;

public class C14747c {

    public static class a extends v {
        public a(A a10, j jVar, int i10, byte[] bArr, int i11, byte[] bArr2) {
            super(a10, jVar, i10, bArr, i11, bArr2);
        }

        @Override
        public k n() {
            throw new RuntimeException("placeholder only");
        }

        @Override
        public w p() {
            throw new RuntimeException("placeholder only");
        }
    }

    public static f a(C14748d c14748d) {
        byte[] bArr;
        int c10 = c14748d.c();
        v[] vVarArr = new v[c10];
        x[] xVarArr = new x[c14748d.c() - 1];
        int i10 = 0;
        byte[] bArr2 = new byte[c14748d.d()[0].b().d()];
        c14748d.a().nextBytes(bArr2);
        byte[] bArr3 = new byte[16];
        c14748d.a().nextBytes(bArr3);
        byte[] bArr4 = new byte[0];
        long j10 = 1;
        while (i10 < c10) {
            if (i10 == 0) {
                vVarArr[i10] = new v(c14748d.d()[i10].b(), c14748d.d()[i10].a(), 0, bArr3, 1 << c14748d.d()[i10].b().c(), bArr2);
                bArr = bArr4;
            } else {
                bArr = bArr4;
                vVarArr[i10] = new a(c14748d.d()[i10].b(), c14748d.d()[i10].a(), -1, bArr, 1 << c14748d.d()[i10].b().c(), bArr);
            }
            j10 *= 1 << c14748d.d()[i10].b().c();
            i10++;
            bArr4 = bArr;
        }
        if (j10 == 0) {
            j10 = Long.MAX_VALUE;
        }
        return new f(c14748d.c(), Arrays.asList(vVarArr), Arrays.asList(xVarArr), 0L, j10);
    }

    public static h b(int i10, o oVar) {
        return new h(i10 - 1, oVar.n(), n.b(oVar));
    }

    public static h c(f fVar, byte[] bArr) {
        v vVar;
        y[] yVarArr;
        int j10 = fVar.j();
        synchronized (fVar) {
            try {
                e(fVar);
                List<v> i10 = fVar.i();
                List<x> n10 = fVar.n();
                int i11 = j10 - 1;
                vVar = fVar.i().get(i11);
                yVarArr = new y[i11];
                int i12 = 0;
                while (i12 < i11) {
                    int i13 = i12 + 1;
                    yVarArr[i12] = new y(n10.get(i12), i10.get(i13).p());
                    i12 = i13;
                }
                fVar.o();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        o o10 = vVar.T0().o(yVarArr);
        o10.update(bArr, 0, bArr.length);
        return b(j10, o10);
    }

    public static void d(f fVar) {
        synchronized (fVar) {
            e(fVar);
            fVar.o();
            fVar.i().get(fVar.j() - 1).r();
        }
    }

    public static void e(f fVar) {
        synchronized (fVar) {
            try {
                if (fVar.e() >= fVar.f()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("hss private key");
                    sb2.append(fVar.p() ? " shard" : "");
                    sb2.append(" is exhausted");
                    throw new ExhaustedPrivateKeyException(sb2.toString());
                }
                int j10 = fVar.j();
                List<v> i10 = fVar.i();
                int i11 = j10;
                while (true) {
                    int i12 = i11 - 1;
                    if (i10.get(i12).j() != (1 << i10.get(i12).q().c())) {
                        while (i11 < j10) {
                            fVar.r(i11);
                            i11++;
                        }
                    } else {
                        if (i12 == 0) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("hss private key");
                            sb3.append(fVar.p() ? " shard" : "");
                            sb3.append(" is exhausted the maximum limit for this HSS private key");
                            throw new ExhaustedPrivateKeyException(sb3.toString());
                        }
                        i11 = i12;
                    }
                }
            } finally {
            }
        }
    }

    public static boolean f(g gVar, h hVar, byte[] bArr) {
        int d10 = hVar.d();
        int i10 = d10 + 1;
        if (i10 != gVar.e()) {
            return false;
        }
        x[] xVarArr = new x[i10];
        w[] wVarArr = new w[d10];
        for (int i11 = 0; i11 < d10; i11++) {
            xVarArr[i11] = hVar.c()[i11].b();
            wVarArr[i11] = hVar.c()[i11].a();
        }
        xVarArr[d10] = hVar.b();
        w f10 = gVar.f();
        for (int i12 = 0; i12 < d10; i12++) {
            if (!n.e(f10, xVarArr[i12], wVarArr[i12].toByteArray())) {
                return false;
            }
            try {
                f10 = wVarArr[i12];
            } catch (Exception e10) {
                throw new IllegalStateException(e10.getMessage(), e10);
            }
        }
        return n.e(f10, xVarArr[d10], bArr);
    }
}
