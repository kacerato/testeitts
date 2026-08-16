package pl;

import Xh.t;
import Xi.C3335c;
import Xk.A;
import Xk.j;
import Xk.m;
import Xk.s;
import Xk.v;
import Xk.y;
import al.l;
import cl.k;
import dl.C12965o;
import gl.C13399l;
import hi.C13486b;
import hi.h0;
import hl.h;
import il.i;
import java.io.IOException;
import jl.p;
import kl.n;
import nl.C14466j;
import oh.C0;
import oh.G0;
import ol.C14613v;
import org.bouncycastle.pqc.crypto.lms.C14745a;
import org.bouncycastle.pqc.crypto.lms.w;
import ql.C15120B;
import ql.J;
import tj.InterfaceC15463a;

public class C15018f {
    public static h0 a(C3335c c3335c) throws IOException {
        if (c3335c instanceof Tl.f) {
            Tl.f fVar = (Tl.f) c3335c;
            return new h0(C15019g.x(fVar.e()), fVar.d());
        }
        if (c3335c instanceof C14466j) {
            C14466j c14466j = (C14466j) c3335c;
            return new h0(new C13486b(m.f29580r, new s(C15019g.F(c14466j.d()))), c14466j.e());
        }
        if (c3335c instanceof h) {
            return new h0(new C13486b(m.f29584v), ((h) c3335c).d());
        }
        if (c3335c instanceof w) {
            return new h0(new C13486b(t.f29047Q2), new C0(C14745a.i().m(1).c((w) c3335c).b()));
        }
        if (c3335c instanceof org.bouncycastle.pqc.crypto.lms.g) {
            org.bouncycastle.pqc.crypto.lms.g gVar = (org.bouncycastle.pqc.crypto.lms.g) c3335c;
            return new h0(new C13486b(t.f29047Q2), new C0(C14745a.i().m(gVar.e()).c(gVar.f()).b()));
        }
        if (c3335c instanceof C14613v) {
            C14613v c14613v = (C14613v) c3335c;
            return new h0(new C13486b(C15019g.H(c14613v.d())), c14613v.getEncoded());
        }
        if (c3335c instanceof l) {
            l lVar = (l) c3335c;
            return new h0(new C13486b(C15019g.p(lVar.d())), lVar.getEncoded());
        }
        if (c3335c instanceof J) {
            J j10 = (J) c3335c;
            byte[] f10 = j10.f();
            byte[] g10 = j10.g();
            byte[] encoded = j10.getEncoded();
            return encoded.length > f10.length + g10.length ? new h0(new C13486b(InterfaceC15463a.f117695a), new C0(encoded)) : new h0(new C13486b(m.f29585w, new v(j10.e().b(), C15019g.J(j10.d()))), new A(f10, g10));
        }
        if (c3335c instanceof C15120B) {
            C15120B c15120b = (C15120B) c3335c;
            byte[] f11 = c15120b.f();
            byte[] g11 = c15120b.g();
            byte[] encoded2 = c15120b.getEncoded();
            return encoded2.length > f11.length + g11.length ? new h0(new C13486b(InterfaceC15463a.f117696b), new C0(encoded2)) : new h0(new C13486b(m.f29533F, new Xk.w(c15120b.e().a(), c15120b.e().b(), C15019g.J(c15120b.d()))), new y(c15120b.f(), c15120b.g()));
        }
        if (c3335c instanceof Rl.h) {
            Rl.h hVar = (Rl.h) c3335c;
            return new h0(new C13486b(m.f29576n), new j(hVar.g(), hVar.h(), hVar.e(), C15019g.i(hVar.d())));
        }
        if (c3335c instanceof el.j) {
            el.j jVar = (el.j) c3335c;
            return new h0(new C13486b(C15019g.g(jVar.d())), new C0(jVar.getEncoded()));
        }
        if (c3335c instanceof ml.j) {
            ml.j jVar2 = (ml.j) c3335c;
            return new h0(new C13486b(C15019g.B(jVar2.d())), new G0(new C0(jVar2.getEncoded())));
        }
        if (c3335c instanceof n) {
            n nVar = (n) c3335c;
            return new h0(new C13486b(C15019g.v(nVar.d())), new C0(nVar.getEncoded()));
        }
        if (c3335c instanceof i) {
            i iVar = (i) c3335c;
            return new h0(new C13486b(C15019g.r(iVar.d())), new C0(iVar.getEncoded()));
        }
        if (c3335c instanceof C12965o) {
            C12965o c12965o = (C12965o) c3335c;
            byte[] e10 = c12965o.e();
            C13486b c13486b = new C13486b(C15019g.e(c12965o.d()));
            byte[] bArr = new byte[e10.length + 1];
            bArr[0] = (byte) c12965o.d().a();
            System.arraycopy(e10, 0, bArr, 1, e10.length);
            return new h0(c13486b, bArr);
        }
        if (c3335c instanceof k) {
            k kVar = (k) c3335c;
            return new h0(new C13486b(C15019g.n(kVar.d())), kVar.getEncoded());
        }
        if (c3335c instanceof jl.h) {
            jl.h hVar2 = (jl.h) c3335c;
            return new h0(new C13486b(C15019g.t(hVar2.d())), new C0(hVar2.getEncoded()));
        }
        if (c3335c instanceof p) {
            p pVar = (p) c3335c;
            return new h0(new C13486b(C15019g.D(pVar.d())), new C0(pVar.getEncoded()));
        }
        if (c3335c instanceof bl.g) {
            bl.g gVar2 = (bl.g) c3335c;
            return new h0(new C13486b(C15019g.c(gVar2.d())), gVar2.getEncoded());
        }
        if (c3335c instanceof Zk.i) {
            Zk.i iVar2 = (Zk.i) c3335c;
            return new h0(new C13486b(C15019g.a(iVar2.d())), iVar2.getEncoded());
        }
        if (c3335c instanceof C13399l) {
            C13399l c13399l = (C13399l) c3335c;
            return new h0(new C13486b(C15019g.l(c13399l.d())), c13399l.getEncoded());
        }
        if (!(c3335c instanceof ll.j)) {
            throw new IOException("key parameters not recognized");
        }
        ll.j jVar3 = (ll.j) c3335c;
        return new h0(new C13486b(C15019g.z(jVar3.e())), new C0(jVar3.getEncoded()));
    }
}
