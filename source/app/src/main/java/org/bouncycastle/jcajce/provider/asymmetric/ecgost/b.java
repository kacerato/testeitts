package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

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
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14549x;
import oh.InterfaceC14516g;
import org.bouncycastle.jcajce.provider.asymmetric.util.h;
import org.bouncycastle.jcajce.provider.asymmetric.util.i;
import org.bouncycastle.jce.provider.C14720a;
import yh.InterfaceC16192a;
import yh.g;

public class b implements ECPublicKey, InterfaceC13239e, InterfaceC13237c {

    public static final long f101263g = 7026240464295649314L;

    public String f101264b;

    public boolean f101265c;

    public transient M f101266d;

    public transient ECParameterSpec f101267e;

    public transient InterfaceC14516g f101268f;

    public b(h0 h0Var) {
        this.f101264b = "ECGOST3410";
        g(h0Var);
    }

    private ECParameterSpec a(EllipticCurve ellipticCurve, G g10) {
        return new ECParameterSpec(ellipticCurve, h.d(g10.b()), g10.e(), g10.c().intValue());
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

    private void g(h0 h0Var) {
        C14549x y10;
        AbstractC14508c z10 = h0Var.z();
        this.f101264b = "ECGOST3410";
        try {
            byte[] H10 = ((AbstractC14551y) B.B(z10.F())).H();
            byte[] bArr = new byte[65];
            bArr[0] = 4;
            for (int i10 = 1; i10 <= 32; i10++) {
                bArr[i10] = H10[32 - i10];
                bArr[i10 + 32] = H10[64 - i10];
            }
            boolean z11 = h0Var.u().x() instanceof C14549x;
            InterfaceC14516g x10 = h0Var.u().x();
            if (z11) {
                y10 = C14549x.K(x10);
                this.f101268f = y10;
            } else {
                g w10 = g.w(x10);
                this.f101268f = w10;
                y10 = w10.y();
            }
            C13523c b10 = org.bouncycastle.jce.a.b(yh.b.l(y10));
            AbstractC13875e a10 = b10.a();
            EllipticCurve a11 = h.a(a10, b10.e());
            this.f101266d = new M(a10.l(bArr), i.f(null, b10));
            this.f101267e = new C13524d(yh.b.l(y10), a11, h.d(b10.b()), b10.d(), b10.c());
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
        return this.f101267e == null ? this.f101266d.e().k() : this.f101266d.e();
    }

    @Override
    public void b(String str) {
        this.f101265c = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public M c() {
        return this.f101266d;
    }

    public C13525e d() {
        ECParameterSpec eCParameterSpec = this.f101267e;
        return eCParameterSpec != null ? h.g(eCParameterSpec) : C14720a.f101702f.b();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f101266d.e().e(bVar.f101266d.e()) && d().equals(bVar.d());
    }

    public InterfaceC14516g f() {
        if (this.f101268f == null) {
            ECParameterSpec eCParameterSpec = this.f101267e;
            if (eCParameterSpec instanceof C13524d) {
                this.f101268f = new g(yh.b.n(((C13524d) eCParameterSpec).c()), InterfaceC16192a.f130284p);
            }
        }
        return this.f101268f;
    }

    @Override
    public String getAlgorithm() {
        return this.f101264b;
    }

    @Override
    public byte[] getEncoded() {
        InterfaceC14516g jVar;
        InterfaceC14516g f10 = f();
        if (f10 == null) {
            ECParameterSpec eCParameterSpec = this.f101267e;
            if (eCParameterSpec instanceof C13524d) {
                jVar = new g(yh.b.n(((C13524d) eCParameterSpec).c()), InterfaceC16192a.f130284p);
            } else {
                AbstractC13875e b10 = h.b(eCParameterSpec.getCurve());
                jVar = new j(new l(b10, new n(h.f(b10, this.f101267e.getGenerator()), this.f101265c), this.f101267e.getOrder(), BigInteger.valueOf(this.f101267e.getCofactor()), this.f101267e.getCurve().getSeed()));
            }
            f10 = jVar;
        }
        BigInteger v10 = this.f101266d.e().f().v();
        BigInteger v11 = this.f101266d.e().g().v();
        byte[] bArr = new byte[64];
        e(bArr, 0, v10);
        e(bArr, 32, v11);
        try {
            return org.bouncycastle.jcajce.provider.asymmetric.util.l.e(new h0(new C13486b(InterfaceC16192a.f130281m, f10), new C0(bArr)));
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
        ECParameterSpec eCParameterSpec = this.f101267e;
        if (eCParameterSpec == null) {
            return null;
        }
        return h.g(eCParameterSpec);
    }

    @Override
    public ECParameterSpec getParams() {
        return this.f101267e;
    }

    @Override
    public ECPoint getW() {
        return h.d(this.f101266d.e());
    }

    public int hashCode() {
        return this.f101266d.e().hashCode() ^ d().hashCode();
    }

    public String toString() {
        return i.p(this.f101264b, this.f101266d.e(), d());
    }

    public b(C13527g c13527g, Tj.c cVar) {
        this.f101264b = "ECGOST3410";
        if (c13527g.a() == null) {
            this.f101266d = new M(cVar.b().a().i(c13527g.b().f().v(), c13527g.b().g().v()), h.m(cVar, null));
            this.f101267e = null;
        } else {
            EllipticCurve a10 = h.a(c13527g.a().a(), c13527g.a().e());
            this.f101266d = new M(c13527g.b(), i.f(cVar, c13527g.a()));
            this.f101267e = h.h(a10, c13527g.a());
        }
    }

    public b(String str, M m10) {
        this.f101264b = str;
        this.f101266d = m10;
        this.f101267e = null;
    }

    public b(String str, M m10, C13525e c13525e) {
        this.f101264b = "ECGOST3410";
        G d10 = m10.d();
        this.f101264b = str;
        this.f101266d = m10;
        this.f101267e = c13525e == null ? a(h.a(d10.a(), d10.f()), d10) : h.h(h.a(c13525e.a(), c13525e.e()), c13525e);
    }

    public b(String str, M m10, ECParameterSpec eCParameterSpec) {
        this.f101264b = "ECGOST3410";
        G d10 = m10.d();
        if (d10 instanceof H) {
            H h10 = (H) d10;
            this.f101268f = new g(h10.m(), h10.k(), h10.l());
        }
        this.f101264b = str;
        this.f101266d = m10;
        if (eCParameterSpec == null) {
            this.f101267e = a(h.a(d10.a(), d10.f()), d10);
        } else {
            this.f101267e = eCParameterSpec;
        }
    }

    public b(ECPublicKey eCPublicKey) {
        this.f101264b = "ECGOST3410";
        this.f101264b = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.f101267e = params;
        this.f101266d = new M(h.e(params, eCPublicKey.getW()), h.m(null, eCPublicKey.getParams()));
    }

    public b(ECPublicKeySpec eCPublicKeySpec) {
        this.f101264b = "ECGOST3410";
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.f101267e = params;
        this.f101266d = new M(h.e(params, eCPublicKeySpec.getW()), h.m(null, eCPublicKeySpec.getParams()));
    }

    public b(b bVar) {
        this.f101264b = "ECGOST3410";
        this.f101266d = bVar.f101266d;
        this.f101267e = bVar.f101267e;
        this.f101265c = bVar.f101265c;
        this.f101268f = bVar.f101268f;
    }
}
