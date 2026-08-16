package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;

public final class C9976vm0 extends E00 implements Comparable, InterfaceC5100Ei {

    public static final boolean f53325e = true;

    public C9976vm0 f53326c;

    public final TreeSet f53327d;

    public C9976vm0(com.android.tools.r8.graph.H5 h52) {
        super(h52);
        this.f53326c = null;
        this.f53327d = new TreeSet();
    }

    @Override
    public final void a(E00 e00, boolean z10) {
        throw new C5417Jv0();
    }

    @Override
    public final boolean b(InterfaceC5100Ei interfaceC5100Ei) {
        return this.f53327d.contains((C9976vm0) interfaceC5100Ei);
    }

    @Override
    public final boolean c(InterfaceC5100Ei interfaceC5100Ei) {
        return false;
    }

    @Override
    public final int compareTo(Object obj) {
        return a().getReference().compareTo(((C9976vm0) obj).a().getReference());
    }

    @Override
    public final void d(InterfaceC5100Ei interfaceC5100Ei) {
        throw new C5417Jv0();
    }

    @Override
    public final void e(InterfaceC5100Ei interfaceC5100Ei) {
        C9976vm0 c9976vm0 = (C9976vm0) interfaceC5100Ei;
        boolean z10 = f53325e;
        if (!z10 && this.f53326c == null) {
            throw new AssertionError();
        }
        if (!z10 && this.f53326c != c9976vm0) {
            throw new AssertionError();
        }
        boolean remove = c9976vm0.f53327d.remove(this);
        if (!z10 && !remove) {
            throw new AssertionError();
        }
        this.f53326c = null;
    }

    @Override
    public final boolean f(InterfaceC5100Ei interfaceC5100Ei) {
        return false;
    }

    @Override
    public final TreeSet c() {
        return this.f53327d;
    }

    @Override
    public final void a(E00 e00) {
        throw new C5417Jv0();
    }

    @Override
    public final Set d() {
        return Collections.EMPTY_SET;
    }

    @Override
    public final boolean a(InterfaceC5100Ei interfaceC5100Ei) {
        C9976vm0 c9976vm0 = (C9976vm0) interfaceC5100Ei;
        C9976vm0 c9976vm02 = this.f53326c;
        return c9976vm02 != null && c9976vm02 == c9976vm0;
    }

    public final void e() {
        if (!f53325e && !this.f53327d.isEmpty()) {
            throw new AssertionError();
        }
        C9976vm0 c9976vm0 = this.f53326c;
        if (c9976vm0 != null) {
            c9976vm0.f53327d.remove(this);
            this.f53326c = null;
        }
    }
}
