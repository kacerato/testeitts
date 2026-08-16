package org.bouncycastle.cms;

import Qk.C3017j;
import bi.InterfaceC3890b;
import hi.C13486b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import li.C14143e;
import li.C14145g;
import li.C14146h;
import oh.C14549x;
import oh.InterfaceC14516g;
import uh.InterfaceC15621l;
import yh.InterfaceC16192a;

public class T {

    public static final String f100610A;

    public static final String f100611B;

    public static final String f100612C;

    public static final String f100613D;

    public static final Set f100614E;

    public static final Map f100615F;

    public static final String f100616g = InterfaceC15621l.f120705m8.J();

    public static final String f100617h;

    public static final String f100618i;

    public static final String f100619j;

    public static final String f100620k;

    public static final String f100621l;

    public static final String f100622m;

    public static final String f100623n;

    public static final String f100624o;

    public static final String f100625p;

    public static final String f100626q;

    public static final String f100627r;

    public static final String f100628s;

    public static final String f100629t;

    public static final String f100630u;

    public static final String f100631v;

    public static final String f100632w;

    public static final String f100633x;

    public static final String f100634y;

    public static final String f100635z;

    public List f100636a;

    public List f100637b;

    public List f100638c;

    public List f100639d;

    public Map f100640e;

    public Qk.o f100641f;

    static {
        String J10 = Wh.b.f27785i.J();
        f100617h = J10;
        String J11 = Sh.d.f23343f.J();
        f100618i = J11;
        String J12 = Sh.d.f23337c.J();
        f100619j = J12;
        String J13 = Sh.d.f23339d.J();
        f100620k = J13;
        String J14 = Sh.d.f23341e.J();
        f100621l = J14;
        f100622m = Xh.t.f29141u1.J();
        f100623n = InterfaceC16192a.f130270b.J();
        f100624o = InterfaceC3890b.f33237c.J();
        f100625p = InterfaceC3890b.f33236b.J();
        f100626q = InterfaceC3890b.f33238d.J();
        f100627r = Xh.t.f29017H0.J();
        String J15 = ki.r.f95350t6.J();
        f100628s = J15;
        String J16 = ki.r.f95301E5.J();
        f100629t = J16;
        f100630u = Xh.t.f29045Q0.J();
        f100631v = InterfaceC16192a.f130280l.J();
        f100632w = InterfaceC16192a.f130281m.J();
        f100633x = Yh.a.f30584g.J();
        f100634y = Yh.a.f30585h.J();
        f100635z = J16;
        String J17 = ki.r.f95309K5.J();
        f100610A = J17;
        String J18 = ki.r.f95311L5.J();
        f100611B = J18;
        String J19 = ki.r.f95313M5.J();
        f100612C = J19;
        String J20 = ki.r.f95315N5.J();
        f100613D = J20;
        HashSet hashSet = new HashSet();
        f100614E = hashSet;
        HashMap hashMap = new HashMap();
        f100615F = hashMap;
        hashSet.add(J15);
        hashSet.add(J16);
        hashSet.add(J17);
        hashSet.add(J18);
        hashSet.add(J19);
        hashSet.add(J20);
        hashMap.put(J10, J16);
        hashMap.put(J11, J17);
        hashMap.put(J12, J18);
        hashMap.put(J13, J19);
        hashMap.put(J14, J20);
    }

    public T() {
        this(new C3017j());
    }

    public void a(C14143e c14143e) throws CMSException {
        this.f100636a.add(new oh.K0(false, 2, (InterfaceC14516g) c14143e.x()));
    }

    public void b(org.bouncycastle.util.t tVar) throws CMSException {
        this.f100636a.addAll(X.o(tVar));
    }

    public void c(C14145g c14145g) {
        this.f100637b.add(c14145g.r());
    }

    public void d(org.bouncycastle.util.t tVar) throws CMSException {
        this.f100637b.addAll(X.q(tVar));
    }

    public void e(C14146h c14146h) throws CMSException {
        this.f100636a.add(c14146h.x());
    }

    public void f(org.bouncycastle.util.t tVar) throws CMSException {
        this.f100636a.addAll(X.r(tVar));
    }

    public void g(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        uh.M m10 = new uh.M(c14549x, interfaceC14516g);
        X.K(m10);
        this.f100637b.add(new oh.K0(false, 1, (InterfaceC14516g) m10));
    }

    public void h(C14549x c14549x, org.bouncycastle.util.t tVar) {
        this.f100637b.addAll(X.u(c14549x, tVar));
    }

    public void i(L0 l02) {
        this.f100639d.add(l02);
    }

    public void j(O0 o02) {
        Iterator<N0> it = o02.b().iterator();
        while (it.hasNext()) {
            this.f100638c.add(it.next());
        }
    }

    public Map k(C14549x c14549x, C13486b c13486b, byte[] bArr) {
        HashMap hashMap = new HashMap();
        hashMap.put(InterfaceC14626d.f100732a, c14549x);
        hashMap.put(InterfaceC14626d.f100735d, c13486b);
        hashMap.put(InterfaceC14626d.f100733b, org.bouncycastle.util.a.p(bArr));
        return hashMap;
    }

    public Map l() {
        return new HashMap(this.f100640e);
    }

    public T(Qk.o oVar) {
        this.f100636a = new ArrayList();
        this.f100637b = new ArrayList();
        this.f100638c = new ArrayList();
        this.f100639d = new ArrayList();
        this.f100640e = new HashMap();
        this.f100641f = oVar;
    }
}
