package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4780x0;
import java.io.IOException;

public class WR {

    public static final boolean f45395f = true;

    public C10261xU f45396a;

    public String f45397b;

    public volatile AbstractC10643zm f45398c;

    public final C8570nJ f45399d;

    public InterfaceC5988Tr0 f45400e;

    public WR(C8570nJ c8570nJ) {
        C2 c22 = C2.B;
        int i10 = AbstractC7552hC.f48487c;
        EU eu = new EU(c22, "unused", null, null, false, C6190Xe0.f45779e);
        boolean z10 = CU.f39231s;
        this.f45396a = new C10094wU(eu, new BU().a());
        this.f45397b = "";
        this.f45400e = null;
        this.f45399d = c8570nJ;
    }

    public C10261xU a() {
        return this.f45396a;
    }

    public final AbstractC10643zm b() {
        AbstractC10643zm c10476ym;
        if (this.f45398c == null) {
            synchronized (this) {
                try {
                    if (this.f45398c == null) {
                        C10261xU c10261xU = this.f45396a;
                        if (c10261xU.j().isEmpty() && c10261xU.f53766c.m().isEmpty()) {
                            c10476ym = new C10309xm();
                            this.f45398c = c10476ym;
                        }
                        c10476ym = new C10476ym(this.f45399d.m(), this.f45396a);
                        this.f45398c = c10476ym;
                    }
                } finally {
                }
            }
        }
        return this.f45398c;
    }

    public final boolean c() {
        return !this.f45397b.isEmpty();
    }

    public void a(C10261xU c10261xU) {
        this.f45396a = c10261xU;
    }

    public final void a(InterfaceC9975vm interfaceC9975vm, String str) {
        boolean z10 = f45395f;
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        if (!z10 && interfaceC9975vm == null) {
            throw new AssertionError();
        }
        String str2 = "";
        if (str.isEmpty()) {
            str = System.getProperty("com.android.tools.r8.synthesizedClassPrefix", "");
        }
        String property = System.getProperty("com.android.tools.r8.desugaredLibraryPostPrefix", null);
        b(interfaceC9975vm, property);
        String n10 = property == null ? "" : C4932Bl.n(property);
        if (!str.isEmpty()) {
            str2 = str + n10;
        }
        this.f45397b = str2;
    }

    public void a(InterfaceC9975vm interfaceC9975vm) {
        b(interfaceC9975vm, null);
    }

    public final void a(InterfaceC9975vm interfaceC9975vm, String str, C8659ns0 c8659ns0, AbstractC4780x0 abstractC4780x0) {
        C10261xU a10 = interfaceC9975vm.a(abstractC4780x0, c8659ns0);
        if (str != null) {
            a10 = a10.a(str, this.f45399d.m());
        }
        this.f45396a = a10;
    }

    public void a(C8659ns0 c8659ns0, AbstractC4780x0 abstractC4780x0) throws IOException {
        if (this.f45400e == null) {
            return;
        }
        c8659ns0.b("Load machine specification");
        this.f45400e.accept(c8659ns0, abstractC4780x0);
        c8659ns0.d();
    }

    public final void b(final InterfaceC9975vm interfaceC9975vm, final String str) {
        if (interfaceC9975vm.isEmpty()) {
            return;
        }
        this.f45400e = new InterfaceC5988Tr0() {
            @Override
            public final void accept(Object obj, Object obj2) {
                WR.this.a(interfaceC9975vm, str, (C8659ns0) obj, (AbstractC4780x0) obj2);
            }
        };
    }
}
