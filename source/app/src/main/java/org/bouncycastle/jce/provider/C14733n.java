package org.bouncycastle.jce.provider;

import android.security.keystore.KeyProperties;
import fk.InterfaceC13237c;
import fk.InterfaceC13239e;
import hi.C13486b;
import hk.C13523c;
import hk.C13524d;
import hk.C13525e;
import hk.C13527g;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import jk.AbstractC13875e;
import oh.A0;
import oh.AbstractC14508c;
import oh.AbstractC14541t;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14549x;
import yh.InterfaceC16192a;

public class C14733n implements ECPublicKey, InterfaceC13239e, InterfaceC13237c {

    public String f101807b;

    public jk.i f101808c;

    public ECParameterSpec f101809d;

    public boolean f101810e;

    public yh.g f101811f;

    public C14733n(hi.h0 h0Var) {
        this.f101807b = KeyProperties.KEY_ALGORITHM_EC;
        f(h0Var);
    }

    private ECParameterSpec a(EllipticCurve ellipticCurve, Xi.G g10) {
        return new ECParameterSpec(ellipticCurve, org.bouncycastle.jcajce.provider.asymmetric.util.h.d(g10.b()), g10.e(), g10.c().intValue());
    }

    private void e(byte[] bArr, int i10, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < 32) {
            byte[] bArr2 = new byte[32];
            System.arraycopy(byteArray, 0, bArr2, 32 - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i11 = 0; i11 != 32; i11++) {
            bArr[i10 + i11] = byteArray[(byteArray.length - 1) - i11];
        }
    }

    private void f(hi.h0 h0Var) {
        AbstractC13875e v10;
        ECParameterSpec eCParameterSpec;
        byte[] F10;
        AbstractC14551y c02;
        byte b10;
        C13486b u10 = h0Var.u();
        if (u10.u().A(InterfaceC16192a.f130281m)) {
            AbstractC14508c z10 = h0Var.z();
            this.f101807b = "ECGOST3410";
            try {
                byte[] H10 = ((AbstractC14551y) oh.B.B(z10.F())).H();
                byte[] bArr = new byte[65];
                bArr[0] = 4;
                for (int i10 = 1; i10 <= 32; i10++) {
                    bArr[i10] = H10[32 - i10];
                    bArr[i10 + 32] = H10[64 - i10];
                }
                yh.g w10 = yh.g.w(u10.x());
                this.f101811f = w10;
                C13523c b11 = org.bouncycastle.jce.a.b(yh.b.l(w10.y()));
                AbstractC13875e a10 = b11.a();
                EllipticCurve a11 = org.bouncycastle.jcajce.provider.asymmetric.util.h.a(a10, b11.e());
                this.f101808c = a10.l(bArr);
                this.f101809d = new C13524d(yh.b.l(this.f101811f.y()), a11, org.bouncycastle.jcajce.provider.asymmetric.util.h.d(b11.b()), b11.d(), b11.c());
                return;
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
        ki.j u11 = ki.j.u(u10.x());
        if (u11.z()) {
            C14549x c14549x = (C14549x) u11.x();
            ki.l j10 = org.bouncycastle.jcajce.provider.asymmetric.util.i.j(c14549x);
            v10 = j10.v();
            eCParameterSpec = new C13524d(org.bouncycastle.jcajce.provider.asymmetric.util.i.e(c14549x), org.bouncycastle.jcajce.provider.asymmetric.util.h.a(v10, j10.D()), org.bouncycastle.jcajce.provider.asymmetric.util.h.d(j10.z()), j10.C(), j10.A());
        } else {
            if (u11.y()) {
                this.f101809d = null;
                v10 = C14720a.f101702f.b().a();
                F10 = h0Var.z().F();
                c02 = new C0(F10);
                if (F10[0] == 4 && F10[1] == F10.length - 2 && (((b10 = F10[2]) == 2 || b10 == 3) && new ki.q().a(v10) >= F10.length - 3)) {
                    try {
                        c02 = (AbstractC14551y) oh.B.B(F10);
                    } catch (IOException unused2) {
                        throw new IllegalArgumentException("error recovering public key");
                    }
                }
                this.f101808c = new ki.n(v10, c02).u();
            }
            ki.l B10 = ki.l.B(u11.x());
            v10 = B10.v();
            eCParameterSpec = new ECParameterSpec(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(v10, B10.D()), org.bouncycastle.jcajce.provider.asymmetric.util.h.d(B10.z()), B10.C(), B10.A().intValue());
        }
        this.f101809d = eCParameterSpec;
        F10 = h0Var.z().F();
        c02 = new C0(F10);
        if (F10[0] == 4) {
            c02 = (AbstractC14551y) oh.B.B(F10);
        }
        this.f101808c = new ki.n(v10, c02).u();
    }

    private void g(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        f(hi.h0.w(oh.B.B((byte[]) objectInputStream.readObject())));
        this.f101807b = (String) objectInputStream.readObject();
        this.f101810e = objectInputStream.readBoolean();
    }

    private void h(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getEncoded());
        objectOutputStream.writeObject(this.f101807b);
        objectOutputStream.writeBoolean(this.f101810e);
    }

    @Override
    public jk.i Ne() {
        return this.f101809d == null ? this.f101808c.k() : this.f101808c;
    }

    @Override
    public void b(String str) {
        this.f101810e = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public jk.i c() {
        return this.f101808c;
    }

    public C13525e d() {
        ECParameterSpec eCParameterSpec = this.f101809d;
        return eCParameterSpec != null ? org.bouncycastle.jcajce.provider.asymmetric.util.h.g(eCParameterSpec) : C14720a.f101702f.b();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C14733n)) {
            return false;
        }
        C14733n c14733n = (C14733n) obj;
        return c().e(c14733n.c()) && d().equals(c14733n.d());
    }

    @Override
    public String getAlgorithm() {
        return this.f101807b;
    }

    @Override
    public byte[] getEncoded() {
        ki.j jVar;
        hi.h0 h0Var;
        AbstractC14545v jVar2;
        if (this.f101807b.equals("ECGOST3410")) {
            AbstractC14545v abstractC14545v = this.f101811f;
            if (abstractC14545v == null) {
                ECParameterSpec eCParameterSpec = this.f101809d;
                if (eCParameterSpec instanceof C13524d) {
                    jVar2 = new yh.g(yh.b.n(((C13524d) eCParameterSpec).c()), InterfaceC16192a.f130284p);
                } else {
                    AbstractC13875e b10 = org.bouncycastle.jcajce.provider.asymmetric.util.h.b(eCParameterSpec.getCurve());
                    jVar2 = new ki.j(new ki.l(b10, new ki.n(org.bouncycastle.jcajce.provider.asymmetric.util.h.f(b10, this.f101809d.getGenerator()), this.f101810e), this.f101809d.getOrder(), BigInteger.valueOf(this.f101809d.getCofactor()), this.f101809d.getCurve().getSeed()));
                }
                abstractC14545v = jVar2;
            }
            BigInteger v10 = this.f101808c.f().v();
            BigInteger v11 = this.f101808c.g().v();
            byte[] bArr = new byte[64];
            e(bArr, 0, v10);
            e(bArr, 32, v11);
            try {
                h0Var = new hi.h0(new C13486b(InterfaceC16192a.f130281m, abstractC14545v), new C0(bArr));
            } catch (IOException unused) {
                return null;
            }
        } else {
            ECParameterSpec eCParameterSpec2 = this.f101809d;
            if (eCParameterSpec2 instanceof C13524d) {
                C14549x l10 = org.bouncycastle.jcajce.provider.asymmetric.util.i.l(((C13524d) eCParameterSpec2).c());
                if (l10 == null) {
                    l10 = new C14549x(((C13524d) this.f101809d).c());
                }
                jVar = new ki.j(l10);
            } else if (eCParameterSpec2 == null) {
                jVar = new ki.j((AbstractC14541t) A0.f98776c);
            } else {
                AbstractC13875e b11 = org.bouncycastle.jcajce.provider.asymmetric.util.h.b(eCParameterSpec2.getCurve());
                jVar = new ki.j(new ki.l(b11, new ki.n(org.bouncycastle.jcajce.provider.asymmetric.util.h.f(b11, this.f101809d.getGenerator()), this.f101810e), this.f101809d.getOrder(), BigInteger.valueOf(this.f101809d.getCofactor()), this.f101809d.getCurve().getSeed()));
            }
            h0Var = new hi.h0(new C13486b(ki.r.f95305I5, jVar), Ne().l(this.f101810e));
        }
        return org.bouncycastle.jcajce.provider.asymmetric.util.l.e(h0Var);
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public C13525e getParameters() {
        ECParameterSpec eCParameterSpec = this.f101809d;
        if (eCParameterSpec == null) {
            return null;
        }
        return org.bouncycastle.jcajce.provider.asymmetric.util.h.g(eCParameterSpec);
    }

    @Override
    public ECParameterSpec getParams() {
        return this.f101809d;
    }

    @Override
    public ECPoint getW() {
        return org.bouncycastle.jcajce.provider.asymmetric.util.h.d(this.f101808c);
    }

    public int hashCode() {
        return c().hashCode() ^ d().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = org.bouncycastle.util.w.f();
        stringBuffer.append("EC Public Key");
        stringBuffer.append(f10);
        stringBuffer.append("            X: ");
        stringBuffer.append(this.f101808c.f().v().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("            Y: ");
        stringBuffer.append(this.f101808c.g().v().toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public C14733n(String str, Xi.M m10) {
        this.f101807b = str;
        this.f101808c = m10.e();
        this.f101809d = null;
    }

    public C14733n(String str, Xi.M m10, C13525e c13525e) {
        this.f101807b = KeyProperties.KEY_ALGORITHM_EC;
        Xi.G d10 = m10.d();
        this.f101807b = str;
        this.f101808c = m10.e();
        this.f101809d = c13525e == null ? a(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(d10.a(), d10.f()), d10) : org.bouncycastle.jcajce.provider.asymmetric.util.h.h(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(c13525e.a(), c13525e.e()), c13525e);
    }

    public C14733n(String str, Xi.M m10, ECParameterSpec eCParameterSpec) {
        this.f101807b = KeyProperties.KEY_ALGORITHM_EC;
        Xi.G d10 = m10.d();
        this.f101807b = str;
        this.f101808c = m10.e();
        if (eCParameterSpec == null) {
            this.f101809d = a(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(d10.a(), d10.f()), d10);
        } else {
            this.f101809d = eCParameterSpec;
        }
    }

    public C14733n(String str, C13527g c13527g) {
        ECParameterSpec eCParameterSpec;
        this.f101807b = str;
        this.f101808c = c13527g.b();
        if (c13527g.a() != null) {
            eCParameterSpec = org.bouncycastle.jcajce.provider.asymmetric.util.h.h(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(c13527g.a().a(), c13527g.a().e()), c13527g.a());
        } else {
            if (this.f101808c.i() == null) {
                this.f101808c = C14720a.f101702f.b().a().i(this.f101808c.f().v(), this.f101808c.g().v());
            }
            eCParameterSpec = null;
        }
        this.f101809d = eCParameterSpec;
    }

    public C14733n(String str, ECPublicKeySpec eCPublicKeySpec) {
        this.f101807b = str;
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.f101809d = params;
        this.f101808c = org.bouncycastle.jcajce.provider.asymmetric.util.h.e(params, eCPublicKeySpec.getW());
    }

    public C14733n(String str, C14733n c14733n) {
        this.f101807b = str;
        this.f101808c = c14733n.f101808c;
        this.f101809d = c14733n.f101809d;
        this.f101810e = c14733n.f101810e;
        this.f101811f = c14733n.f101811f;
    }

    public C14733n(ECPublicKey eCPublicKey) {
        this.f101807b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101807b = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.f101809d = params;
        this.f101808c = org.bouncycastle.jcajce.provider.asymmetric.util.h.e(params, eCPublicKey.getW());
    }
}
