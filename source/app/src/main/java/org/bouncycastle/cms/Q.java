package org.bouncycastle.cms;

import Qk.C3017j;
import fm.C13260d;
import hi.C13486b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import oh.AbstractC14532o;
import oh.C14518h;
import oh.C14519h0;
import oh.C14525k0;
import oh.C14527l0;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14553z;
import org.bouncycastle.operator.OperatorCreationException;
import uh.C15625p;
import uh.InterfaceC15621l;

public class Q extends C14678t {

    public static final U f100591l = U.f100642a;

    public static final C3017j f100592m = new C3017j();

    public uh.W f100593c;

    public C14549x f100594d;

    public W f100595e;

    public Map f100596f;

    public Set<C13486b> f100597g;

    public O0 f100598h;

    public oh.G f100599i;

    public oh.G f100600j;

    public boolean f100601k;

    public Q(Qk.q qVar, InputStream inputStream) throws CMSException {
        this(qVar, (W) null, inputStream);
    }

    public static oh.G b(oh.H h10) {
        if (h10 == null) {
            return null;
        }
        return oh.G.F(h10.r());
    }

    public static void l(C15625p c15625p, OutputStream outputStream) throws IOException {
        InterfaceC14553z interfaceC14553z = (InterfaceC14553z) c15625p.a(4);
        if (interfaceC14553z != null) {
            m(interfaceC14553z, outputStream);
        }
    }

    public static void m(InterfaceC14553z interfaceC14553z, OutputStream outputStream) throws IOException {
        OutputStream h10 = X.h(outputStream, 0, true, 0);
        C13260d.b(interfaceC14553z.a(), h10);
        h10.close();
    }

    public static OutputStream o(InputStream inputStream, org.bouncycastle.util.t tVar, org.bouncycastle.util.t tVar2, org.bouncycastle.util.t tVar3, OutputStream outputStream) throws CMSException, IOException {
        uh.W e10 = uh.W.e(new C15625p((oh.F) new oh.I(inputStream).j()).a(16));
        C14519h0 c14519h0 = new C14519h0(outputStream);
        c14519h0.f(InterfaceC15621l.f120706n8);
        C14519h0 c14519h02 = new C14519h0(c14519h0.a(), 0, true);
        c14519h02.f(e10.g());
        c14519h02.a().write(e10.c().r().getEncoded());
        C15625p d10 = e10.d();
        C14519h0 c14519h03 = new C14519h0(c14519h02.a());
        c14519h03.f(d10.b());
        l(d10, c14519h03.a());
        c14519h03.g();
        b(e10.a());
        b(e10.b());
        if (tVar != null || tVar3 != null) {
            ArrayList arrayList = new ArrayList();
            if (tVar != null) {
                arrayList.addAll(X.r(tVar));
            }
            if (tVar3 != null) {
                arrayList.addAll(X.o(tVar3));
            }
            oh.G i10 = X.i(arrayList);
            if (i10.size() > 0) {
                c14519h02.a().write(new oh.K0(false, 0, (InterfaceC14516g) i10).getEncoded());
            }
        }
        if (tVar2 != null) {
            oh.G i11 = X.i(X.q(tVar2));
            if (i11.size() > 0) {
                c14519h02.a().write(new oh.K0(false, 1, (InterfaceC14516g) i11).getEncoded());
            }
        }
        c14519h02.a().write(e10.f().r().getEncoded());
        c14519h02.g();
        c14519h0.g();
        return outputStream;
    }

    public static OutputStream p(InputStream inputStream, O0 o02, OutputStream outputStream) throws CMSException, IOException {
        uh.W e10 = uh.W.e(new C15625p((oh.F) new oh.I(inputStream).j()).a(16));
        C14519h0 c14519h0 = new C14519h0(outputStream);
        c14519h0.f(InterfaceC15621l.f120706n8);
        C14519h0 c14519h02 = new C14519h0(c14519h0.a(), 0, true);
        c14519h02.f(e10.g());
        e10.c().r();
        C14518h c14518h = new C14518h();
        Iterator<N0> it = o02.b().iterator();
        while (it.hasNext()) {
            c14518h.a(f100591l.b(it.next().h(), f100592m));
        }
        c14519h02.a().write(new oh.I0(c14518h).getEncoded());
        C15625p d10 = e10.d();
        C14519h0 c14519h03 = new C14519h0(c14519h02.a());
        c14519h03.f(d10.b());
        l(d10, c14519h03.a());
        c14519h03.g();
        q(c14519h02, e10.a(), 0);
        q(c14519h02, e10.b(), 1);
        C14518h c14518h2 = new C14518h();
        Iterator<N0> it2 = o02.b().iterator();
        while (it2.hasNext()) {
            c14518h2.a(it2.next().u());
        }
        c14519h02.a().write(new oh.I0(c14518h2).getEncoded());
        c14519h02.g();
        c14519h0.g();
        return outputStream;
    }

    public static void q(AbstractC14532o abstractC14532o, oh.H h10, int i10) throws IOException {
        oh.G b10 = b(h10);
        if (b10 != null) {
            boolean z10 = h10 instanceof C14525k0;
            OutputStream a10 = abstractC14532o.a();
            if (z10) {
                a10.write(new C14527l0(false, i10, (InterfaceC14516g) b10).getEncoded());
            } else {
                a10.write(new oh.K0(false, i10, (InterfaceC14516g) b10).getEncoded());
            }
        }
    }

    public org.bouncycastle.util.t c() throws CMSException {
        n();
        return f100591l.c(this.f100599i);
    }

    public org.bouncycastle.util.t d() throws CMSException {
        n();
        return f100591l.d(this.f100600j);
    }

    public org.bouncycastle.util.t e() throws CMSException {
        n();
        return f100591l.e(this.f100599i);
    }

    public Set<C13486b> f() {
        return this.f100597g;
    }

    public org.bouncycastle.util.t g(C14549x c14549x) throws CMSException {
        n();
        return f100591l.g(c14549x, this.f100600j);
    }

    public W h() {
        if (this.f100595e == null) {
            return null;
        }
        return new W(this.f100595e.c(), X.e(this.f100596f.values(), this.f100595e.b()));
    }

    public String i() {
        return this.f100594d.J();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public O0 j() throws CMSException {
        if (this.f100598h == null) {
            n();
            ArrayList arrayList = new ArrayList();
            HashMap hashMap = new HashMap();
            for (Object obj : this.f100596f.o()) {
                hashMap.put(obj, ((Qk.p) this.f100596f.get(obj)).b());
            }
            try {
                oh.H f10 = this.f100593c.f();
                while (true) {
                    InterfaceC14516g readObject = f10.readObject();
                    if (readObject == null) {
                        break;
                    }
                    uh.Y z10 = uh.Y.z(readObject.r());
                    arrayList.add(new N0(z10, this.f100594d, null, (byte[]) hashMap.get(z10.v().u())));
                }
                this.f100598h = new O0(arrayList);
            } catch (IOException e10) {
                throw new CMSException("io exception: " + e10.getMessage(), e10);
            }
        }
        return this.f100598h;
    }

    public int k() {
        return this.f100593c.g().O();
    }

    public final void n() throws CMSException {
        if (this.f100601k) {
            return;
        }
        this.f100601k = true;
        try {
            this.f100599i = b(this.f100593c.a());
            this.f100600j = b(this.f100593c.b());
        } catch (IOException e10) {
            throw new CMSException("problem parsing cert/crl sets", e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0088 A[Catch: IOException -> 0x0042, TryCatch #1 {IOException -> 0x0042, blocks: (B:3:0x0003, B:4:0x0025, B:6:0x002b, B:8:0x0032, B:13:0x0038, B:19:0x0044, B:21:0x0059, B:23:0x006c, B:25:0x0088, B:26:0x008c, B:30:0x008f, B:31:0x006f, B:33:0x0075, B:36:0x0083), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008f A[Catch: IOException -> 0x0042, TRY_LEAVE, TryCatch #1 {IOException -> 0x0042, blocks: (B:3:0x0003, B:4:0x0025, B:6:0x002b, B:8:0x0032, B:13:0x0038, B:19:0x0044, B:21:0x0059, B:23:0x006c, B:25:0x0088, B:26:0x008c, B:30:0x008f, B:31:0x006f, B:33:0x0075, B:36:0x0083), top: B:2:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Q(Qk.q qVar, W w10, InputStream inputStream) throws CMSException {
        super(inputStream);
        W z0Var;
        try {
            this.f100595e = w10;
            this.f100593c = uh.W.e(this.f101017a.a(16));
            this.f100596f = new HashMap();
            oh.H c10 = this.f100593c.c();
            HashSet hashSet = new HashSet();
            while (true) {
                InterfaceC14516g readObject = c10.readObject();
                if (readObject == null) {
                    break;
                }
                C13486b v10 = C13486b.v(readObject);
                hashSet.add(v10);
                try {
                    Qk.p a10 = qVar.a(v10);
                    if (a10 != null) {
                        this.f100596f.put(v10.u(), a10);
                    }
                } catch (OperatorCreationException unused) {
                }
            }
            this.f100597g = Collections.unmodifiableSet(hashSet);
            C15625p d10 = this.f100593c.d();
            InterfaceC14516g a11 = d10.a(4);
            if (!(a11 instanceof InterfaceC14553z)) {
                if (a11 != null) {
                    z0Var = new z0(d10.b(), a11);
                    if (this.f100595e == null) {
                        this.f100595e = z0Var;
                    } else {
                        z0Var.a();
                    }
                }
                this.f100594d = w10 == null ? d10.b() : this.f100595e.c();
                return;
            }
            z0Var = new W(d10.b(), ((InterfaceC14553z) a11).a());
            if (this.f100595e != null) {
                z0Var.a();
                this.f100594d = w10 == null ? d10.b() : this.f100595e.c();
                return;
            }
            this.f100595e = z0Var;
            this.f100594d = w10 == null ? d10.b() : this.f100595e.c();
            return;
        } catch (IOException e10) {
            throw new CMSException("io exception: " + e10.getMessage(), e10);
        }
        throw new CMSException("io exception: " + e10.getMessage(), e10);
    }

    public Q(Qk.q qVar, W w10, byte[] bArr) throws CMSException {
        this(qVar, w10, new ByteArrayInputStream(bArr));
    }

    public Q(Qk.q qVar, byte[] bArr) throws CMSException {
        this(qVar, new ByteArrayInputStream(bArr));
    }
}
