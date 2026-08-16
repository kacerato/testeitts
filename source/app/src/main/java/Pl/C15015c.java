package pl;

import Xh.t;
import Xh.v;
import Xi.C3335c;
import Xk.C3376a;
import Xk.i;
import Xk.m;
import Xk.s;
import Xk.w;
import Xk.x;
import Xk.z;
import al.k;
import bl.C3905f;
import cl.j;
import dl.C12964n;
import gl.C13398k;
import hi.C13486b;
import il.h;
import java.io.IOException;
import jl.o;
import nl.C14465i;
import oh.C0;
import oh.C14518h;
import oh.G;
import oh.G0;
import ol.C14612u;
import org.bouncycastle.pqc.crypto.lms.C14745a;
import org.bouncycastle.util.p;
import ql.C15119A;
import ql.C15123a;
import ql.C15124b;
import ql.I;
import ql.O;

public class C15015c {
    public static v a(C3335c c3335c) throws IOException {
        return b(c3335c, null);
    }

    public static v b(C3335c c3335c, G g10) throws IOException {
        if (c3335c instanceof Tl.e) {
            Tl.e eVar = (Tl.e) c3335c;
            return new v(C15019g.x(eVar.e()), new C0(eVar.d()), g10);
        }
        if (c3335c instanceof C14465i) {
            C14465i c14465i = (C14465i) c3335c;
            return new v(new C13486b(m.f29580r, new s(C15019g.F(c14465i.d()))), new C0(c14465i.e()));
        }
        if (c3335c instanceof hl.g) {
            C13486b c13486b = new C13486b(m.f29584v);
            short[] d10 = ((hl.g) c3335c).d();
            byte[] bArr = new byte[d10.length * 2];
            for (int i10 = 0; i10 != d10.length; i10++) {
                p.R(d10[i10], bArr, i10 * 2);
            }
            return new v(c13486b, new C0(bArr));
        }
        if (c3335c instanceof org.bouncycastle.pqc.crypto.lms.v) {
            org.bouncycastle.pqc.crypto.lms.v vVar = (org.bouncycastle.pqc.crypto.lms.v) c3335c;
            byte[] b10 = C14745a.i().m(1).c(vVar).b();
            return new v(new C13486b(t.f29047Q2), new C0(b10), g10, C14745a.i().m(1).c(vVar.p()).b());
        }
        if (c3335c instanceof org.bouncycastle.pqc.crypto.lms.f) {
            org.bouncycastle.pqc.crypto.lms.f fVar = (org.bouncycastle.pqc.crypto.lms.f) c3335c;
            byte[] b11 = C14745a.i().m(fVar.j()).c(fVar).b();
            return new v(new C13486b(t.f29047Q2), new C0(b11), g10, C14745a.i().m(fVar.j()).c(fVar.l().f()).b());
        }
        if (c3335c instanceof C14612u) {
            C14612u c14612u = (C14612u) c3335c;
            return new v(new C13486b(C15019g.H(c14612u.d())), new C0(c14612u.getEncoded()), g10, c14612u.g());
        }
        if (c3335c instanceof kl.m) {
            kl.m mVar = (kl.m) c3335c;
            return new v(new C13486b(C15019g.v(mVar.d())), new C0(mVar.getEncoded()), g10);
        }
        if (c3335c instanceof k) {
            k kVar = (k) c3335c;
            return new v(new C13486b(C15019g.p(kVar.d())), new C3376a(0, kVar.g(), kVar.f(), kVar.h(), kVar.e(), kVar.j(), new Xk.b(kVar.k())), g10);
        }
        if (c3335c instanceof I) {
            I i11 = (I) c3335c;
            return new v(new C13486b(m.f29585w, new Xk.v(i11.i().b(), C15019g.J(i11.d()))), c(i11), g10);
        }
        if (c3335c instanceof C15119A) {
            C15119A c15119a = (C15119A) c3335c;
            return new v(new C13486b(m.f29533F, new w(c15119a.i().a(), c15119a.i().b(), C15019g.J(c15119a.d()))), d(c15119a), g10);
        }
        if (c3335c instanceof Rl.g) {
            Rl.g gVar = (Rl.g) c3335c;
            return new v(new C13486b(m.f29576n), new i(gVar.i(), gVar.h(), gVar.e(), gVar.f(), gVar.j(), C15019g.i(gVar.d())));
        }
        if (c3335c instanceof el.i) {
            el.i iVar = (el.i) c3335c;
            return new v(new C13486b(C15019g.g(iVar.d())), new C0(iVar.getEncoded()), g10);
        }
        if (c3335c instanceof ml.i) {
            ml.i iVar2 = (ml.i) c3335c;
            return new v(new C13486b(C15019g.B(iVar2.d())), new C0(iVar2.getEncoded()), g10);
        }
        if (c3335c instanceof h) {
            h hVar = (h) c3335c;
            return new v(new C13486b(C15019g.r(hVar.d())), new C0(hVar.getEncoded()), g10);
        }
        if (c3335c instanceof C12964n) {
            C12964n c12964n = (C12964n) c3335c;
            return new v(new C13486b(C15019g.e(c12964n.d())), new Xk.c(0, c12964n.h(), c12964n.e(), c12964n.g(), new Xk.d(c12964n.f())), g10);
        }
        if (c3335c instanceof j) {
            j jVar = (j) c3335c;
            return new v(new C13486b(C15019g.n(jVar.d())), new C0(jVar.getEncoded()), g10);
        }
        if (c3335c instanceof jl.g) {
            jl.g gVar2 = (jl.g) c3335c;
            C14518h c14518h = new C14518h();
            c14518h.a(new C0(gVar2.e()));
            c14518h.a(new C0(gVar2.g()));
            c14518h.a(new C0(gVar2.h()));
            c14518h.a(new C0(gVar2.f()));
            return new v(new C13486b(C15019g.t(gVar2.d())), new G0(c14518h), g10);
        }
        if (c3335c instanceof o) {
            o oVar = (o) c3335c;
            C14518h c14518h2 = new C14518h();
            c14518h2.a(new C0(oVar.e()));
            c14518h2.a(new C0(oVar.f()));
            c14518h2.a(new C0(oVar.h()));
            c14518h2.a(new C0(oVar.i()));
            c14518h2.a(new C0(oVar.g()));
            return new v(new C13486b(C15019g.D(oVar.d())), new G0(c14518h2), g10);
        }
        if (c3335c instanceof C3905f) {
            C3905f c3905f = (C3905f) c3335c;
            return new v(new C13486b(C15019g.c(c3905f.d())), new C0(c3905f.getEncoded()), g10, c3905f.h().getEncoded());
        }
        if (c3335c instanceof Zk.h) {
            Zk.h hVar2 = (Zk.h) c3335c;
            return new v(new C13486b(C15019g.a(hVar2.d())), new C0(hVar2.getEncoded()), g10);
        }
        if (c3335c instanceof C13398k) {
            C13398k c13398k = (C13398k) c3335c;
            return new v(new C13486b(C15019g.l(c13398k.d())), new C0(c13398k.getEncoded()), g10);
        }
        if (!(c3335c instanceof ll.i)) {
            throw new IOException("key parameters not recognized");
        }
        ll.i iVar3 = (ll.i) c3335c;
        return new v(new C13486b(C15019g.z(iVar3.e())), new C0(iVar3.getEncoded()), g10);
    }

    public static z c(I i10) throws IOException {
        byte[] encoded = i10.getEncoded();
        int h10 = i10.i().h();
        int b10 = i10.i().b();
        int b11 = (int) O.b(encoded, 0, 4);
        if (!O.n(b10, b11)) {
            throw new IllegalArgumentException("index out of bounds");
        }
        byte[] i11 = O.i(encoded, 4, h10);
        int i12 = 4 + h10;
        byte[] i13 = O.i(encoded, i12, h10);
        int i14 = i12 + h10;
        byte[] i15 = O.i(encoded, i14, h10);
        int i16 = i14 + h10;
        byte[] i17 = O.i(encoded, i16, h10);
        int i18 = i16 + h10;
        byte[] i19 = O.i(encoded, i18, encoded.length - i18);
        try {
            C15123a c15123a = (C15123a) O.g(i19, C15123a.class);
            return c15123a.d() != (1 << b10) - 1 ? new z(b11, i11, i13, i15, i17, i19, c15123a.d()) : new z(b11, i11, i13, i15, i17, i19);
        } catch (ClassNotFoundException e10) {
            throw new IOException("cannot parse BDS: " + e10.getMessage());
        }
    }

    public static x d(C15119A c15119a) throws IOException {
        byte[] encoded = c15119a.getEncoded();
        int g10 = c15119a.i().g();
        int a10 = c15119a.i().a();
        int i10 = (a10 + 7) / 8;
        long b10 = (int) O.b(encoded, 0, i10);
        if (!O.n(a10, b10)) {
            throw new IllegalArgumentException("index out of bounds");
        }
        byte[] i11 = O.i(encoded, i10, g10);
        int i12 = i10 + g10;
        byte[] i13 = O.i(encoded, i12, g10);
        int i14 = i12 + g10;
        byte[] i15 = O.i(encoded, i14, g10);
        int i16 = i14 + g10;
        byte[] i17 = O.i(encoded, i16, g10);
        int i18 = i16 + g10;
        byte[] i19 = O.i(encoded, i18, encoded.length - i18);
        try {
            C15124b c15124b = (C15124b) O.g(i19, C15124b.class);
            return c15124b.b() != (1 << a10) - 1 ? new x(b10, i11, i13, i15, i17, i19, c15124b.b()) : new x(b10, i11, i13, i15, i17, i19);
        } catch (ClassNotFoundException e10) {
            throw new IOException("cannot parse BDSStateMap: " + e10.getMessage());
        }
    }
}
