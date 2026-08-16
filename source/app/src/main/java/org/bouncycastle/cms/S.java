package org.bouncycastle.cms;

import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import oh.C14518h;
import oh.C14519h0;
import oh.C14527l0;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import uh.InterfaceC15621l;

public class S extends T {

    public int f100603G;

    public class a extends OutputStream {

        public OutputStream f100604b;

        public C14549x f100605c;

        public C14519h0 f100606d;

        public C14519h0 f100607e;

        public C14519h0 f100608f;

        public a(OutputStream outputStream, C14549x c14549x, C14519h0 c14519h0, C14519h0 c14519h02, C14519h0 c14519h03) {
            this.f100604b = outputStream;
            this.f100605c = c14549x;
            this.f100606d = c14519h0;
            this.f100607e = c14519h02;
            this.f100608f = c14519h03;
        }

        @Override
        public void close() throws IOException {
            this.f100604b.close();
            this.f100608f.g();
            S.this.f100640e.clear();
            if (S.this.f100636a.size() != 0) {
                this.f100607e.a().write(new C14527l0(false, 0, (InterfaceC14516g) X.i(S.this.f100636a)).getEncoded());
            }
            if (S.this.f100637b.size() != 0) {
                this.f100607e.a().write(new C14527l0(false, 1, (InterfaceC14516g) X.i(S.this.f100637b)).getEncoded());
            }
            C14518h c14518h = new C14518h();
            for (L0 l02 : S.this.f100639d) {
                try {
                    c14518h.a(l02.a(this.f100605c));
                    S.this.f100640e.put(l02.g().u().J(), l02.e());
                } catch (CMSException e10) {
                    throw new CMSStreamException("exception generating signers: " + e10.getMessage(), e10);
                }
            }
            Iterator it = S.this.f100638c.iterator();
            while (it.hasNext()) {
                c14518h.a(((N0) it.next()).u());
            }
            this.f100607e.a().write(new oh.I0(c14518h).getEncoded());
            this.f100607e.g();
            this.f100606d.g();
        }

        @Override
        public void write(int i10) throws IOException {
            this.f100604b.write(i10);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f100604b.write(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f100604b.write(bArr, i10, i11);
        }
    }

    public S() {
    }

    public final C14539s m(C14549x c14549x) {
        boolean z10;
        boolean z11;
        boolean z12;
        List list = this.f100636a;
        boolean z13 = false;
        if (list != null) {
            z10 = false;
            z11 = false;
            z12 = false;
            for (Object obj : list) {
                if (obj instanceof oh.M) {
                    oh.M m10 = (oh.M) obj;
                    if (m10.g() == 1) {
                        z11 = true;
                    } else if (m10.g() == 2) {
                        z12 = true;
                    } else if (m10.g() == 3) {
                        z10 = true;
                    }
                }
            }
        } else {
            z10 = false;
            z11 = false;
            z12 = false;
        }
        if (z10) {
            return new C14539s(5L);
        }
        List list2 = this.f100637b;
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                if (it.next() instanceof oh.M) {
                    z13 = true;
                }
            }
        }
        if (z13) {
            return new C14539s(5L);
        }
        if (z12) {
            return new C14539s(4L);
        }
        if (!z11 && !n(this.f100638c, this.f100639d) && InterfaceC15621l.f120705m8.A(c14549x)) {
            return new C14539s(1L);
        }
        return new C14539s(3L);
    }

    public final boolean n(List list, List list2) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (uh.Y.z(((N0) it.next()).u()).C().O() == 3) {
                return true;
            }
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            if (((L0) it2.next()).h() == 3) {
                return true;
            }
        }
        return false;
    }

    public List<C13486b> o() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f100638c.iterator();
        while (it.hasNext()) {
            arrayList.add(U.f100642a.b(((N0) it.next()).h(), this.f100641f));
        }
        Iterator it2 = this.f100639d.iterator();
        while (it2.hasNext()) {
            arrayList.add(((L0) it2.next()).g());
        }
        return arrayList;
    }

    public OutputStream p(OutputStream outputStream) throws IOException {
        return q(outputStream, false);
    }

    public OutputStream q(OutputStream outputStream, boolean z10) throws IOException {
        return s(InterfaceC15621l.f120705m8, outputStream, z10);
    }

    public OutputStream r(OutputStream outputStream, boolean z10, OutputStream outputStream2) throws IOException {
        return t(InterfaceC15621l.f120705m8, outputStream, z10, outputStream2);
    }

    public OutputStream s(C14549x c14549x, OutputStream outputStream, boolean z10) throws IOException {
        return t(c14549x, outputStream, z10, null);
    }

    public OutputStream t(C14549x c14549x, OutputStream outputStream, boolean z10, OutputStream outputStream2) throws IOException {
        C14519h0 c14519h0 = new C14519h0(outputStream);
        c14519h0.f(InterfaceC15621l.f120706n8);
        C14519h0 c14519h02 = new C14519h0(c14519h0.a(), 0, true);
        c14519h02.f(m(c14549x));
        HashSet hashSet = new HashSet();
        Iterator it = this.f100638c.iterator();
        while (it.hasNext()) {
            X.b(hashSet, (N0) it.next(), this.f100641f);
        }
        Iterator it2 = this.f100639d.iterator();
        while (it2.hasNext()) {
            hashSet.add(((L0) it2.next()).g());
        }
        c14519h02.a().write(X.g(hashSet).getEncoded());
        C14519h0 c14519h03 = new C14519h0(c14519h02.a());
        c14519h03.f(c14549x);
        return new a(X.f(this.f100639d, X.x(outputStream2, z10 ? X.h(c14519h03.a(), 0, true, this.f100603G) : null)), c14549x, c14519h0, c14519h02, c14519h03);
    }

    public void u(int i10) {
        this.f100603G = i10;
    }

    public S(Qk.o oVar) {
        super(oVar);
    }
}
