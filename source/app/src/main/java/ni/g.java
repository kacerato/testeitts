package ni;

import Qk.A;
import Qk.InterfaceC3014g;
import Qk.InterfaceC3015h;
import hi.C13486b;
import li.C14146h;
import oh.C14518h;
import oh.G0;
import org.bouncycastle.cert.cmp.CMPException;
import th.C;
import th.C15426b;
import th.G;
import th.I;
import th.InterfaceC15427c;

public class g {

    public I f98245a;

    public g(f fVar) {
        if (!fVar.c()) {
            throw new IllegalArgumentException("PKIMessage not protected");
        }
        this.f98245a = fVar.e();
    }

    public final G0 a() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f98245a.y());
        c14518h.a(this.f98245a.v());
        return new G0(c14518h);
    }

    public C b() {
        return this.f98245a.v();
    }

    public C14146h[] c() {
        C15426b[] x10 = this.f98245a.x();
        if (x10 == null) {
            return new C14146h[0];
        }
        C14146h[] c14146hArr = new C14146h[x10.length];
        for (int i10 = 0; i10 != x10.length; i10++) {
            c14146hArr[i10] = new C14146h(x10[i10].A());
        }
        return c14146hArr;
    }

    public G d() {
        return this.f98245a.y();
    }

    public C13486b e() {
        return this.f98245a.y().A();
    }

    public boolean f() {
        return InterfaceC15427c.f117570a.A(e().u());
    }

    public I g() {
        return this.f98245a;
    }

    public boolean h(InterfaceC3015h interfaceC3015h) throws CMPException {
        try {
            return j(this.f98245a.A().J(), interfaceC3015h.a(e()));
        } catch (Exception e10) {
            throw new CMPException("unable to verify signature: " + e10.getMessage(), e10);
        }
    }

    public boolean i(Qk.G g10, char[] cArr) throws CMPException {
        try {
            A a10 = g10.a(e(), cArr);
            C14448a.c(a(), a10.getOutputStream());
            return org.bouncycastle.util.a.I(a10.e(), this.f98245a.A().J());
        } catch (Exception e10) {
            throw new CMPException("unable to verify MAC: " + e10.getMessage(), e10);
        }
    }

    public final boolean j(byte[] bArr, InterfaceC3014g interfaceC3014g) {
        C14448a.c(a(), interfaceC3014g.getOutputStream());
        return interfaceC3014g.verify(bArr);
    }

    public g(I i10) {
        if (i10.y().A() == null) {
            throw new IllegalArgumentException("PKIMessage not protected");
        }
        this.f98245a = i10;
    }
}
