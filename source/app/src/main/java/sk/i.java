package Sk;

import Xh.s;
import Xh.u;
import hi.C13486b;
import java.io.IOException;
import oh.AbstractC14551y;
import oh.B;
import oh.E;
import org.bouncycastle.pkcs.PKCSException;
import org.bouncycastle.pkcs.PKCSIOException;

public class i {

    public u f23620a;

    public i(u uVar) {
        this.f23620a = uVar;
    }

    public static u g(byte[] bArr) throws IOException {
        try {
            return u.v(B.B(bArr));
        } catch (ClassCastException e10) {
            throw new PKCSIOException("malformed data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new PKCSIOException("malformed data: " + e11.getMessage(), e11);
        }
    }

    public Xh.g[] a() {
        E G10 = E.G(AbstractC14551y.F(this.f23620a.u().u()).H());
        Xh.g[] gVarArr = new Xh.g[G10.size()];
        for (int i10 = 0; i10 != G10.size(); i10++) {
            gVarArr[i10] = Xh.g.w(G10.I(i10));
        }
        return gVarArr;
    }

    public byte[] b() throws IOException {
        return h().getEncoded();
    }

    public byte[] c(String str) throws IOException {
        return h().s(str);
    }

    public C13486b d() {
        Xh.n x10 = this.f23620a.x();
        if (x10 != null) {
            return x10.x().u();
        }
        return null;
    }

    public boolean e() {
        return this.f23620a.x() != null;
    }

    public boolean f(h hVar, char[] cArr) throws PKCSException {
        if (!e()) {
            throw new IllegalStateException("no MAC present on PFX");
        }
        Xh.n x10 = this.f23620a.x();
        try {
            return org.bouncycastle.util.a.I(new d(hVar.a(new C13486b(x10.x().u().u(), new s(x10.y(), x10.v().intValue())))).a(cArr, AbstractC14551y.F(this.f23620a.u().u()).H()).getEncoded(), this.f23620a.x().getEncoded());
        } catch (IOException e10) {
            throw new PKCSException("unable to process AuthSafe: " + e10.getMessage());
        }
    }

    public u h() {
        return this.f23620a;
    }

    public i(byte[] bArr) throws IOException {
        this(g(bArr));
    }
}
