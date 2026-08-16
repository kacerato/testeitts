package org.bouncycastle.cms;

import fm.C13260d;
import fm.C13261e;
import fm.C13262f;
import hi.C13486b;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import li.C14143e;
import li.C14145g;
import li.C14146h;
import oh.C14509c0;
import oh.C14511d0;
import oh.C14518h;
import oh.C14519h0;
import oh.C14523j0;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import oh.X0;
import uh.C15611b;
import uh.C15624o;
import uh.InterfaceC15621l;
import yh.InterfaceC16192a;

public class X {

    public static final Set<String> f100647a;

    public static final Set f100648b;

    public static final Set f100649c;

    public static final Set f100650d;

    static {
        HashSet hashSet = new HashSet();
        f100647a = hashSet;
        HashSet hashSet2 = new HashSet();
        f100648b = hashSet2;
        HashSet hashSet3 = new HashSet();
        f100649c = hashSet3;
        HashSet hashSet4 = new HashSet();
        f100650d = hashSet4;
        hashSet.add("DES");
        hashSet.add("DESEDE");
        hashSet.add(Wh.b.f27781e.J());
        hashSet.add(Xh.t.f29123n1.J());
        hashSet.add(Xh.t.f29020I2.J());
        hashSet2.add(ki.r.f95357x6);
        hashSet2.add(Zh.d.f31283R);
        hashSet2.add(Zh.d.f31284S);
        hashSet2.add(Zh.d.f31285T);
        hashSet2.add(Zh.d.f31286U);
        hashSet3.add(ki.r.f95355w6);
        hashSet3.add(ki.r.f95353v6);
        hashSet3.add(Zh.d.f31279N);
        hashSet3.add(Zh.d.f31275J);
        hashSet3.add(Zh.d.f31280O);
        hashSet3.add(Zh.d.f31276K);
        hashSet3.add(Zh.d.f31281P);
        hashSet3.add(Zh.d.f31277L);
        hashSet3.add(Zh.d.f31282Q);
        hashSet3.add(Zh.d.f31278M);
        hashSet4.add(InterfaceC16192a.f130267C);
        hashSet4.add(Yh.a.f30589l);
        hashSet4.add(Yh.a.f30590m);
    }

    public static boolean A(C13486b c13486b, C13486b c13486b2) {
        if (c13486b == null || c13486b2 == null || !c13486b.u().A(c13486b2.u())) {
            return false;
        }
        InterfaceC14516g x10 = c13486b.x();
        InterfaceC14516g x11 = c13486b2.x();
        return x10 != null ? x10.equals(x11) || (x10.equals(oh.A0.f98776c) && x11 == null) : x11 == null || x11.equals(oh.A0.f98776c);
    }

    public static boolean B(C14549x c14549x) {
        return f100650d.contains(c14549x);
    }

    public static boolean C(C14549x c14549x) {
        return f100648b.contains(c14549x);
    }

    public static boolean D(C14549x c14549x) {
        return c14549x.A(Xh.t.f29015G2) || c14549x.A(Xh.t.f29039O2);
    }

    public static oh.G E(InterfaceC14626d interfaceC14626d, Qk.D d10) throws IOException {
        if (interfaceC14626d == null) {
            return null;
        }
        oh.I0 i02 = new oh.I0(interfaceC14626d.a(Collections.EMPTY_MAP).h());
        d10.c().write(i02.s(InterfaceC14520i.f98892a));
        return i02;
    }

    public static C15624o F(InputStream inputStream) throws CMSException {
        return G(new oh.r(inputStream));
    }

    public static C15624o G(oh.r rVar) throws CMSException {
        try {
            C15624o w10 = C15624o.w(rVar.k());
            if (w10 != null) {
                return w10;
            }
            throw new CMSException("No content found.");
        } catch (IOException e10) {
            throw new CMSException("IOException reading content.", e10);
        } catch (ClassCastException e11) {
            throw new CMSException("Malformed content.", e11);
        } catch (IllegalArgumentException e12) {
            throw new CMSException("Malformed content.", e12);
        }
    }

    public static C15624o H(byte[] bArr) throws CMSException {
        return G(new oh.r(bArr));
    }

    public static byte[] I(InputStream inputStream) throws IOException {
        return C13260d.e(inputStream);
    }

    public static byte[] J(InputStream inputStream, int i10) throws IOException {
        return C13260d.f(inputStream, i10);
    }

    public static void K(uh.M m10) {
        if (InterfaceC15621l.f120717y8.A(m10.v()) && Vh.g.u(m10.u()).y().v() != 0) {
            throw new IllegalArgumentException("cannot add unsuccessful OCSP response to CMS SignedData");
        }
    }

    public static void a(C14519h0 c14519h0, InterfaceC14626d interfaceC14626d, int i10, Map map) throws IOException {
        if (interfaceC14626d != null) {
            c14519h0.f(new oh.K0(false, i10, (InterfaceC14516g) new C14523j0(interfaceC14626d.a(map).h())));
        }
    }

    public static void b(Set<C13486b> set, N0 n02, Qk.o oVar) {
        set.add(U.f100642a.b(n02.h(), oVar));
        Iterator<N0> it = n02.e().iterator();
        while (it.hasNext()) {
            set.add(U.f100642a.b(it.next().h(), oVar));
        }
    }

    public static void c(C14519h0 c14519h0, uh.I i10) throws IOException {
        if (i10 != null) {
            c14519h0.f(new oh.K0(false, 0, (InterfaceC14516g) i10));
        }
    }

    public static void d(C14518h c14518h, C14519h0 c14519h0, boolean z10) throws IOException {
        OutputStream a10 = c14519h0.a();
        if (z10) {
            a10.write(new C14523j0(c14518h).getEncoded());
        } else {
            a10.write(new oh.I0(c14518h).getEncoded());
        }
    }

    public static InputStream e(Collection collection, InputStream inputStream) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            inputStream = new C13261e(inputStream, ((Qk.p) it.next()).getOutputStream());
        }
        return inputStream;
    }

    public static OutputStream f(Collection collection, OutputStream outputStream) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            outputStream = x(outputStream, ((L0) it.next()).f());
        }
        return outputStream;
    }

    public static oh.G g(Set<C13486b> set) {
        return new X0((C13486b[]) set.toArray(new C13486b[set.size()]));
    }

    public static OutputStream h(OutputStream outputStream, int i10, boolean z10, int i11) throws IOException {
        C14511d0 c14511d0 = new C14511d0(outputStream, i10, z10);
        return i11 != 0 ? c14511d0.f(new byte[i11]) : c14511d0.e();
    }

    public static oh.G i(List list) {
        C14518h c14518h = new C14518h();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c14518h.a((InterfaceC14516g) it.next());
        }
        return new C14523j0(c14518h);
    }

    public static oh.G j(List list) {
        C14518h c14518h = new C14518h();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c14518h.a((InterfaceC14516g) it.next());
        }
        return new oh.I0(c14518h);
    }

    public static oh.G k(List list) {
        C14518h c14518h = new C14518h();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c14518h.a((InterfaceC14516g) it.next());
        }
        return new X0(c14518h);
    }

    public static byte[] l(InterfaceC14516g interfaceC14516g) throws IOException {
        if (interfaceC14516g != null) {
            return interfaceC14516g.r().getEncoded();
        }
        return null;
    }

    public static oh.G m(InterfaceC14626d interfaceC14626d) {
        if (interfaceC14626d != null) {
            return new C14523j0(interfaceC14626d.a(Collections.EMPTY_MAP).h());
        }
        return null;
    }

    public static oh.G n(InterfaceC14626d interfaceC14626d) {
        if (interfaceC14626d != null) {
            return new X0(interfaceC14626d.a(Collections.EMPTY_MAP).h());
        }
        return null;
    }

    public static List o(org.bouncycastle.util.t tVar) throws CMSException {
        ArrayList arrayList = new ArrayList();
        try {
            Iterator it = tVar.a(null).iterator();
            while (it.hasNext()) {
                arrayList.add(new oh.K0(false, 2, (InterfaceC14516g) ((C14143e) it.next()).x()));
            }
            return arrayList;
        } catch (ClassCastException e10) {
            throw new CMSException("error processing certs", e10);
        }
    }

    public static C15611b p(oh.H h10) throws IOException {
        if (h10 == null) {
            return null;
        }
        C14518h c14518h = new C14518h();
        while (true) {
            InterfaceC14516g readObject = h10.readObject();
            if (readObject == null) {
                return new C15611b(new oh.I0(c14518h));
            }
            c14518h.a(((oh.F) readObject).r());
        }
    }

    public static List q(org.bouncycastle.util.t tVar) throws CMSException {
        ArrayList arrayList = new ArrayList();
        try {
            for (Object obj : tVar.a(null)) {
                if (obj instanceof C14145g) {
                    obj = ((C14145g) obj).r();
                } else if (obj instanceof uh.M) {
                    uh.M w10 = uh.M.w(obj);
                    K(w10);
                    arrayList.add(new oh.K0(false, 1, (InterfaceC14516g) w10));
                } else if (obj instanceof oh.M) {
                }
                arrayList.add(obj);
            }
            return arrayList;
        } catch (ClassCastException e10) {
            throw new CMSException("error processing certs", e10);
        }
    }

    public static List r(org.bouncycastle.util.t tVar) throws CMSException {
        ArrayList arrayList = new ArrayList();
        try {
            Iterator it = tVar.a(null).iterator();
            while (it.hasNext()) {
                arrayList.add(((C14146h) it.next()).x());
            }
            return arrayList;
        } catch (ClassCastException e10) {
            throw new CMSException("error processing certs", e10);
        }
    }

    public static uh.r s(C14549x c14549x, C13486b c13486b, byte[] bArr) {
        return new uh.r(c14549x, c13486b, new C14509c0(bArr));
    }

    public static uh.r t(V v10, Qk.F f10, byte[] bArr) {
        return s(v10.a(), f10.a(), bArr);
    }

    public static Collection u(C14549x c14549x, org.bouncycastle.util.t tVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = tVar.a(null).iterator();
        while (it.hasNext()) {
            uh.M m10 = new uh.M(c14549x, (InterfaceC14516g) it.next());
            K(m10);
            arrayList.add(new oh.K0(false, 1, (InterfaceC14516g) m10));
        }
        return arrayList;
    }

    public static C14518h v(Qk.r rVar, List list) throws CMSException {
        C14518h c14518h = new C14518h();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c14518h.a(((G0) it.next()).a(rVar));
        }
        return c14518h;
    }

    public static OutputStream w(OutputStream outputStream) {
        return outputStream == null ? new u0() : outputStream;
    }

    public static OutputStream x(OutputStream outputStream, OutputStream outputStream2) {
        return outputStream == null ? w(outputStream2) : outputStream2 == null ? w(outputStream) : new C13262f(outputStream, outputStream2);
    }

    public static boolean y(String str) {
        return f100647a.contains(org.bouncycastle.util.w.p(str));
    }

    public static boolean z(C14549x c14549x) {
        return f100649c.contains(c14549x);
    }
}
