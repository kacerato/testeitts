package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

import Xi.G;
import Xi.H;
import Xi.M;
import fk.InterfaceC13237c;
import fk.InterfaceC13239e;
import hi.C13486b;
import hi.h0;
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
import ki.j;
import ki.l;
import ki.n;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.asymmetric.util.h;
import org.bouncycastle.jcajce.provider.asymmetric.util.i;
import org.bouncycastle.jce.provider.C14720a;
import yh.g;

public class b implements ECPublicKey, InterfaceC13239e, InterfaceC13237c {

    public static final long f101290g = 7026240464295649314L;

    public String f101291b;

    public boolean f101292c;

    public transient M f101293d;

    public transient ECParameterSpec f101294e;

    public transient g f101295f;

    public b(h0 h0Var) {
        this.f101291b = "ECGOST3410-2012";
        g(h0Var);
    }

    private ECParameterSpec a(EllipticCurve ellipticCurve, G g10) {
        return new ECParameterSpec(ellipticCurve, h.d(g10.b()), g10.e(), g10.c().intValue());
    }

    private void e(byte[] bArr, int i10, int i11, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < i10) {
            byte[] bArr2 = new byte[i10];
            System.arraycopy(byteArray, 0, bArr2, i10 - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i12 = 0; i12 != i10; i12++) {
            bArr[i11 + i12] = byteArray[(byteArray.length - 1) - i12];
        }
    }

    private void g(h0 h0Var) {
        C14549x u10 = h0Var.u().u();
        AbstractC14508c z10 = h0Var.z();
        this.f101291b = "ECGOST3410-2012";
        try {
            byte[] H10 = ((AbstractC14551y) B.B(z10.F())).H();
            int i10 = u10.A(Cj.a.f4463h) ? 64 : 32;
            int i11 = i10 * 2;
            byte[] bArr = new byte[i11 + 1];
            bArr[0] = 4;
            for (int i12 = 1; i12 <= i10; i12++) {
                bArr[i12] = H10[i10 - i12];
                bArr[i12 + i10] = H10[i11 - i12];
            }
            g w10 = g.w(h0Var.u().x());
            this.f101295f = w10;
            C13523c b10 = org.bouncycastle.jce.a.b(yh.b.l(w10.y()));
            AbstractC13875e a10 = b10.a();
            EllipticCurve a11 = h.a(a10, b10.e());
            this.f101293d = new M(a10.l(bArr), i.f(null, b10));
            this.f101294e = new C13524d(yh.b.l(this.f101295f.y()), a11, h.d(b10.b()), b10.d(), b10.c());
        } catch (IOException unused) {
            throw new IllegalArgumentException("error recovering public key");
        }
    }

    private void h(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        g(h0.w(B.B((byte[]) objectInputStream.readObject())));
    }

    private void i(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public jk.i Ne() {
        return this.f101294e == null ? this.f101293d.e().k() : this.f101293d.e();
    }

    @Override
    public void b(String str) {
        this.f101292c = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public M c() {
        return this.f101293d;
    }

    public C13525e d() {
        ECParameterSpec eCParameterSpec = this.f101294e;
        return eCParameterSpec != null ? h.g(eCParameterSpec) : C14720a.f101702f.b();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f101293d.e().e(bVar.f101293d.e()) && d().equals(bVar.d());
    }

    public g f() {
        if (this.f101295f == null && (this.f101294e instanceof C13524d)) {
            boolean z10 = this.f101293d.e().f().v().bitLength() > 256;
            C14549x n10 = yh.b.n(((C13524d) this.f101294e).c());
            this.f101295f = z10 ? new g(n10, Cj.a.f4459d) : (n10.A(Cj.a.f4471p) || n10.A(Cj.a.f4472q) || n10.A(Cj.a.f4473r)) ? new g(n10, null) : new g(n10, Cj.a.f4458c);
        }
        return this.f101295f;
    }

    @Override
    public String getAlgorithm() {
        return this.f101291b;
    }

    @Override
    public byte[] getEncoded() {
        C14549x c14549x;
        int i10;
        AbstractC14545v jVar;
        BigInteger v10 = this.f101293d.e().f().v();
        BigInteger v11 = this.f101293d.e().g().v();
        boolean z10 = v10.bitLength() > 256;
        AbstractC14545v f10 = f();
        if (f10 == null) {
            ECParameterSpec eCParameterSpec = this.f101294e;
            if (eCParameterSpec instanceof C13524d) {
                C14549x n10 = yh.b.n(((C13524d) eCParameterSpec).c());
                jVar = z10 ? new g(n10, Cj.a.f4459d) : (n10.A(Cj.a.f4471p) || n10.A(Cj.a.f4472q) || n10.A(Cj.a.f4473r)) ? new g(n10, null) : new g(n10, Cj.a.f4458c);
            } else {
                AbstractC13875e b10 = h.b(eCParameterSpec.getCurve());
                jVar = new j(new l(b10, new n(h.f(b10, this.f101294e.getGenerator()), this.f101292c), this.f101294e.getOrder(), BigInteger.valueOf(this.f101294e.getCofactor()), this.f101294e.getCurve().getSeed()));
            }
            f10 = jVar;
        }
        int i11 = 64;
        if (z10) {
            c14549x = Cj.a.f4463h;
            i10 = 64;
            i11 = 128;
        } else {
            c14549x = Cj.a.f4462g;
            i10 = 32;
        }
        byte[] bArr = new byte[i11];
        int i12 = i11 / 2;
        e(bArr, i12, 0, v10);
        e(bArr, i12, i10, v11);
        try {
            return org.bouncycastle.jcajce.provider.asymmetric.util.l.e(new h0(new C13486b(c14549x, f10), new C0(bArr)));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public C13525e getParameters() {
        ECParameterSpec eCParameterSpec = this.f101294e;
        if (eCParameterSpec == null) {
            return null;
        }
        return h.g(eCParameterSpec);
    }

    @Override
    public ECParameterSpec getParams() {
        return this.f101294e;
    }

    @Override
    public ECPoint getW() {
        return h.d(this.f101293d.e());
    }

    public int hashCode() {
        return this.f101293d.e().hashCode() ^ d().hashCode();
    }

    public String toString() {
        return i.p(this.f101291b, this.f101293d.e(), d());
    }

    public b(C13527g c13527g, Tj.c cVar) {
        this.f101291b = "ECGOST3410-2012";
        if (c13527g.a() == null) {
            this.f101293d = new M(cVar.b().a().i(c13527g.b().f().v(), c13527g.b().g().v()), h.m(cVar, null));
            this.f101294e = null;
        } else {
            EllipticCurve a10 = h.a(c13527g.a().a(), c13527g.a().e());
            this.f101293d = new M(c13527g.b(), i.f(cVar, c13527g.a()));
            this.f101294e = h.h(a10, c13527g.a());
        }
    }

    public b(String str, M m10) {
        this.f101291b = str;
        this.f101293d = m10;
        this.f101294e = null;
    }

    public b(String str, M m10, C13525e c13525e) {
        this.f101291b = "ECGOST3410-2012";
        G d10 = m10.d();
        this.f101291b = str;
        this.f101293d = m10;
        this.f101294e = c13525e == null ? a(h.a(d10.a(), d10.f()), d10) : h.h(h.a(c13525e.a(), c13525e.e()), c13525e);
    }

    public b(String str, M m10, ECParameterSpec eCParameterSpec) {
        this.f101291b = "ECGOST3410-2012";
        G d10 = m10.d();
        this.f101291b = str;
        this.f101293d = m10;
        if (d10 instanceof H) {
            H h10 = (H) d10;
            this.f101295f = new g(h10.m(), h10.k(), h10.l());
        }
        if (eCParameterSpec == null) {
            this.f101294e = a(h.a(d10.a(), d10.f()), d10);
        } else {
            this.f101294e = eCParameterSpec;
        }
    }

    public b(ECPublicKey eCPublicKey) {
        this.f101291b = "ECGOST3410-2012";
        this.f101291b = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.f101294e = params;
        this.f101293d = new M(h.e(params, eCPublicKey.getW()), h.m(null, eCPublicKey.getParams()));
    }

    public b(ECPublicKeySpec eCPublicKeySpec) {
        this.f101291b = "ECGOST3410-2012";
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.f101294e = params;
        this.f101293d = new M(h.e(params, eCPublicKeySpec.getW()), h.m(null, eCPublicKeySpec.getParams()));
    }

    public b(b bVar) {
        this.f101291b = "ECGOST3410-2012";
        this.f101293d = bVar.f101293d;
        this.f101294e = bVar.f101294e;
        this.f101292c = bVar.f101292c;
        this.f101295f = bVar.f101295f;
    }
}
