package org.bouncycastle.cms;

import Qk.C3017j;
import hi.C13486b;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import li.C14143e;
import li.C14145g;
import li.C14146h;
import oh.AbstractC14551y;
import oh.C14517g0;
import oh.C14518h;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.X0;
import org.bouncycastle.operator.OperatorCreationException;
import uh.C15624o;

public class O implements org.bouncycastle.util.g {

    public static final U f100574g = U.f100642a;

    public static final C3017j f100575h = new C3017j();

    public uh.V f100576b;

    public C15624o f100577c;

    public V f100578d;

    public O0 f100579e;

    public Map f100580f;

    public class a implements V {

        public final F f100581a;

        public a(F f10) {
            this.f100581a = f10;
        }

        @Override
        public C14549x a() {
            return O.this.f100576b.A().v();
        }

        @Override
        public void b(OutputStream outputStream) throws IOException, CMSException {
            this.f100581a.b(outputStream);
        }

        @Override
        public Object getContent() {
            return this.f100581a.getContent();
        }
    }

    public O(InputStream inputStream) throws CMSException {
        this(X.F(inputStream));
    }

    public static O a(O o10, C13486b c13486b) {
        return b(o10, c13486b, f100575h);
    }

    public static O b(O o10, C13486b c13486b, Qk.o oVar) {
        Set<C13486b> f10 = o10.f();
        C13486b b10 = f100574g.b(c13486b, oVar);
        if (f10.contains(b10)) {
            return o10;
        }
        O o11 = new O(o10);
        HashSet hashSet = new HashSet();
        Iterator<C13486b> it = f10.iterator();
        while (it.hasNext()) {
            hashSet.add(f100574g.b(it.next(), oVar));
        }
        hashSet.add(b10);
        oh.G g10 = X.g(hashSet);
        oh.E e10 = (oh.E) o10.f100576b.r();
        C14518h c14518h = new C14518h(e10.size());
        c14518h.a(e10.I(0));
        c14518h.a(g10);
        for (int i10 = 2; i10 != e10.size(); i10++) {
            c14518h.a(e10.I(i10));
        }
        o11.f100576b = uh.V.B(new C14517g0(c14518h));
        o11.f100577c = new C15624o(o11.f100577c.v(), o11.f100576b);
        return o11;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static O p(O o10, org.bouncycastle.util.t tVar, org.bouncycastle.util.t tVar2, org.bouncycastle.util.t tVar3) throws CMSException {
        oh.G g10;
        oh.G g11;
        O o11 = new O(o10);
        if (tVar != null || tVar2 != null) {
            ArrayList arrayList = new ArrayList();
            if (tVar != null) {
                arrayList.addAll(X.r(tVar));
            }
            if (tVar2 != null) {
                arrayList.addAll(X.o(tVar2));
            }
            oh.G i10 = X.i(arrayList);
            if (i10.size() != 0) {
                g10 = i10;
                if (tVar3 != null) {
                    oh.G i11 = X.i(X.q(tVar3));
                    if (i11.size() != 0) {
                        g11 = i11;
                        o11.f100576b = new uh.V(o10.f100576b.z(), o10.f100576b.A(), g10, g11, o10.f100576b.C());
                        o11.f100577c = new C15624o(o11.f100577c.v(), o11.f100576b);
                        return o11;
                    }
                }
                g11 = null;
                o11.f100576b = new uh.V(o10.f100576b.z(), o10.f100576b.A(), g10, g11, o10.f100576b.C());
                o11.f100577c = new C15624o(o11.f100577c.v(), o11.f100576b);
                return o11;
            }
        }
        g10 = null;
        if (tVar3 != null) {
        }
        g11 = null;
        o11.f100576b = new uh.V(o10.f100576b.z(), o10.f100576b.A(), g10, g11, o10.f100576b.C());
        o11.f100577c = new C15624o(o11.f100577c.v(), o11.f100576b);
        return o11;
    }

    public static O q(O o10, O0 o02) {
        return r(o10, o02, f100575h);
    }

    public static O r(O o10, O0 o02, Qk.o oVar) {
        O o11 = new O(o10);
        o11.f100579e = o02;
        HashSet hashSet = new HashSet();
        Collection<N0> b10 = o02.b();
        C14518h c14518h = new C14518h(b10.size());
        for (N0 n02 : b10) {
            X.b(hashSet, n02, oVar);
            c14518h.a(n02.u());
        }
        oh.G g10 = X.g(hashSet);
        X0 x02 = new X0(c14518h);
        oh.E e10 = (oh.E) o10.f100576b.r();
        C14518h c14518h2 = new C14518h(e10.size());
        c14518h2.a(e10.I(0));
        c14518h2.a(g10);
        for (int i10 = 2; i10 != e10.size() - 1; i10++) {
            c14518h2.a(e10.I(i10));
        }
        c14518h2.a(x02);
        o11.f100576b = uh.V.B(new C14517g0(c14518h2));
        o11.f100577c = new C15624o(o11.f100577c.v(), o11.f100576b);
        return o11;
    }

    public org.bouncycastle.util.t<C14143e> c() {
        return f100574g.c(this.f100576b.y());
    }

    public org.bouncycastle.util.t<C14145g> d() {
        return f100574g.d(this.f100576b.x());
    }

    public org.bouncycastle.util.t<C14146h> e() {
        return f100574g.e(this.f100576b.y());
    }

    public Set<C13486b> f() {
        HashSet hashSet = new HashSet();
        Enumeration I10 = this.f100576b.z().I();
        while (I10.hasMoreElements()) {
            hashSet.add(C13486b.v(I10.nextElement()));
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public byte[] g(String str) throws IOException {
        return this.f100577c.s(str);
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f100577c.getEncoded();
    }

    public org.bouncycastle.util.t h(C14549x c14549x) {
        return f100574g.g(c14549x, this.f100576b.x());
    }

    public V i() {
        return this.f100578d;
    }

    public String j() {
        return this.f100576b.A().v().J();
    }

    public final uh.V k() throws CMSException {
        try {
            return uh.V.B(this.f100577c.u());
        } catch (ClassCastException e10) {
            throw new CMSException("Malformed content.", e10);
        } catch (IllegalArgumentException e11) {
            throw new CMSException("Malformed content.", e11);
        }
    }

    public O0 l() {
        Map map;
        Object u10;
        if (this.f100579e == null) {
            oh.G C10 = this.f100576b.C();
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 != C10.size(); i10++) {
                uh.Y z10 = uh.Y.z(C10.H(i10));
                C14549x v10 = this.f100576b.A().v();
                Map map2 = this.f100580f;
                if (map2 == null) {
                    arrayList.add(new N0(z10, v10, this.f100578d, null));
                } else {
                    if (map2.o().iterator().next() instanceof String) {
                        map = this.f100580f;
                        u10 = z10.v().u().J();
                    } else {
                        map = this.f100580f;
                        u10 = z10.v().u();
                    }
                    arrayList.add(new N0(z10, v10, null, (byte[]) map.get(u10)));
                }
            }
            this.f100579e = new O0(arrayList);
        }
        return this.f100579e;
    }

    public int m() {
        return this.f100576b.D().O();
    }

    public boolean n() {
        return this.f100576b.A().u() == null && this.f100576b.C().size() == 0;
    }

    public boolean o() {
        return this.f100576b.A().u() == null && this.f100576b.C().size() > 0;
    }

    public C15624o s() {
        return this.f100577c;
    }

    public final boolean t(N0 n02, Q0 q02) throws OperatorCreationException, CMSException {
        if (!n02.w(q02.a(n02.l()))) {
            return false;
        }
        Iterator<N0> it = n02.e().b().iterator();
        while (it.hasNext()) {
            if (!t(it.next(), q02)) {
                return false;
            }
        }
        return true;
    }

    public boolean u(Q0 q02) throws CMSException {
        return v(q02, false);
    }

    public boolean v(Q0 q02, boolean z10) throws CMSException {
        for (N0 n02 : l().b()) {
            try {
                if (!n02.w(q02.a(n02.l()))) {
                    return false;
                }
                if (!z10) {
                    Iterator<N0> it = n02.e().b().iterator();
                    while (it.hasNext()) {
                        if (!t(it.next(), q02)) {
                            return false;
                        }
                    }
                }
            } catch (OperatorCreationException e10) {
                throw new CMSException("failure in verifier provider: " + e10.getMessage(), e10);
            }
        }
        return true;
    }

    public O(Map map, C15624o c15624o) throws CMSException {
        this.f100580f = map;
        this.f100577c = c15624o;
        this.f100576b = k();
    }

    public O(Map map, byte[] bArr) throws CMSException {
        this(map, X.H(bArr));
    }

    public O(F f10, InputStream inputStream) throws CMSException {
        this(f10, X.F(new oh.r(inputStream)));
    }

    public O(F f10, C15624o c15624o) throws CMSException {
        if (f10 instanceof V) {
            this.f100578d = (V) f10;
        } else {
            this.f100578d = new a(f10);
        }
        this.f100577c = c15624o;
        this.f100576b = k();
    }

    public O(F f10, byte[] bArr) throws CMSException {
        this(f10, X.H(bArr));
    }

    public O(O o10) {
        this.f100576b = o10.f100576b;
        this.f100577c = o10.f100577c;
        this.f100578d = o10.f100578d;
        this.f100579e = o10.f100579e;
    }

    public O(C15624o c15624o) throws CMSException {
        this.f100577c = c15624o;
        uh.V k10 = k();
        this.f100576b = k10;
        InterfaceC14516g u10 = k10.A().u();
        if (u10 != null) {
            this.f100578d = u10 instanceof AbstractC14551y ? new G(this.f100576b.A().v(), ((AbstractC14551y) u10).H()) : new y0(this.f100576b.A().v(), u10);
        } else {
            this.f100578d = null;
        }
    }

    public O(byte[] bArr) throws CMSException {
        this(X.H(bArr));
    }
}
