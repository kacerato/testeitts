package org.bouncycastle.openssl;

import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;
import oh.M0;
import oh.Q;

public class a {

    public E f101858a;

    public E f101859b;

    public String f101860c;

    public a(String str, Set<C14549x> set) {
        this(str, set, null);
    }

    public String a() {
        return this.f101860c;
    }

    public Set<C14549x> b() {
        return f(this.f101859b);
    }

    public Set<C14549x> c() {
        return f(this.f101858a);
    }

    public E d() {
        C14518h c14518h = new C14518h();
        E e10 = this.f101858a;
        if (e10 != null) {
            c14518h.a(e10);
        }
        E e11 = this.f101859b;
        if (e11 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) e11));
        }
        if (this.f101860c != null) {
            c14518h.a(new M0(this.f101860c));
        }
        return new G0(c14518h);
    }

    public final E e(Set<C14549x> set) {
        if (set == null || set.isEmpty()) {
            return null;
        }
        C14518h c14518h = new C14518h();
        Iterator<C14549x> it = set.iterator();
        while (it.hasNext()) {
            c14518h.a(it.next());
        }
        return new G0(c14518h);
    }

    public final Set<C14549x> f(E e10) {
        if (e10 == null) {
            return Collections.EMPTY_SET;
        }
        HashSet hashSet = new HashSet(e10.size());
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            hashSet.add(C14549x.K(J10.nextElement()));
        }
        return hashSet;
    }

    public a(String str, Set<C14549x> set, Set<C14549x> set2) {
        this.f101860c = str;
        this.f101858a = e(set);
        this.f101859b = e(set2);
    }

    public a(Set<C14549x> set) {
        this(null, set, null);
    }

    public a(byte[] bArr) {
        Enumeration J10 = E.G(bArr).J();
        while (J10.hasMoreElements()) {
            InterfaceC14516g interfaceC14516g = (InterfaceC14516g) J10.nextElement();
            if (interfaceC14516g instanceof E) {
                this.f101858a = E.G(interfaceC14516g);
            } else if (interfaceC14516g instanceof M) {
                this.f101859b = E.H((M) interfaceC14516g, false);
            } else if (interfaceC14516g instanceof Q) {
                this.f101860c = Q.F(interfaceC14516g).getString();
            }
        }
    }
}
