package org.bouncycastle.cms;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import oh.C14509c0;
import oh.C14518h;
import oh.C14549x;
import oh.InterfaceC14516g;
import uh.C15624o;
import uh.InterfaceC15621l;

public class P extends T {

    public List f100585G;

    public boolean f100586H;

    public P() {
        this.f100585G = new ArrayList();
        this.f100586H = false;
    }

    public static oh.G m(List list, boolean z10) {
        if (list.size() != 0) {
            return z10 ? X.k(list) : X.i(list);
        }
        return null;
    }

    public O n(V v10) throws CMSException {
        return o(v10, false);
    }

    public O o(V v10, boolean z10) throws CMSException {
        if (!this.f100585G.isEmpty()) {
            throw new IllegalStateException("this method can only be used with SignerInfoGenerator");
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        C14518h c14518h = new C14518h();
        this.f100640e.clear();
        for (N0 n02 : this.f100638c) {
            X.b(linkedHashSet, n02, this.f100641f);
            c14518h.a(n02.u());
        }
        C14549x a10 = v10.a();
        InterfaceC14516g interfaceC14516g = null;
        if (v10.getContent() != null) {
            ByteArrayOutputStream byteArrayOutputStream = z10 ? new ByteArrayOutputStream() : null;
            OutputStream w10 = X.w(X.f(this.f100639d, byteArrayOutputStream));
            try {
                v10.b(w10);
                w10.close();
                if (z10) {
                    interfaceC14516g = this.f100586H ? new oh.C0(byteArrayOutputStream.toByteArray()) : new C14509c0(byteArrayOutputStream.toByteArray());
                }
            } catch (IOException e10) {
                throw new CMSException("data processing exception: " + e10.getMessage(), e10);
            }
        }
        for (L0 l02 : this.f100639d) {
            uh.Y a11 = l02.a(a10);
            linkedHashSet.add(a11.v());
            c14518h.a(a11);
            byte[] e11 = l02.e();
            if (e11 != null) {
                this.f100640e.put(a11.v().u().J(), e11);
            }
        }
        return new O(v10, new C15624o(InterfaceC15621l.f120706n8, new uh.V(X.g(linkedHashSet), new C15624o(a10, interfaceC14516g), m(this.f100636a, this.f100586H), m(this.f100637b, this.f100586H), new oh.I0(c14518h))));
    }

    public O0 p(N0 n02) throws CMSException {
        return o(new G(null, n02.m()), false).l();
    }

    public void q(boolean z10) {
        this.f100586H = z10;
    }

    public P(Qk.o oVar) {
        super(oVar);
        this.f100585G = new ArrayList();
        this.f100586H = false;
    }
}
