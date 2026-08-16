package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C9081qO extends R2 {

    public final B50 f51769c;

    public final InterfaceC8413mO f51770d;

    public final CN f51771e;

    public final C7582hP f51772f;

    public final GN f51773g;

    public final C8914pO f51774h;

    public C9081qO(B50 b50, InterfaceC8413mO interfaceC8413mO, Consumer consumer, Function function) {
        super(b50);
        this.f51771e = new CN();
        C7582hP c7582hP = new C7582hP();
        this.f51772f = c7582hP;
        GN gn2 = new GN();
        this.f51773g = gn2;
        C8914pO c8914pO = new C8914pO();
        this.f51774h = c8914pO;
        this.f51769c = b50;
        this.f51770d = interfaceC8413mO;
        FO fo = (FO) function.apply(c8914pO);
        c8914pO.f51511a.getClass();
        PM pm2 = new PM("CONTEXT");
        c8914pO.f51511a.a(pm2, fo);
        c7582hP.f48548a.add(new ZM(fo.e() ? new UM(pm2) : new JO(pm2)));
        consumer.accept(gn2);
    }

    @Override
    public final void a(Object obj, String str) {
        if (str.equals("description") && (obj instanceof String)) {
            this.f51773g.a((String) obj);
        } else {
            super.a(obj, str);
            throw null;
        }
    }

    @Override
    public final Q2 a(String str) {
        H50 b10 = this.f51769c.b(str);
        if (str.equals("value")) {
            CN cn2 = this.f51771e;
            Objects.requireNonNull(cn2);
            return new C6413aO(b10, new C9880v91(cn2), this.f51774h);
        }
        if (str.equals("additionalPreconditions")) {
            return new C7413gO(b10, new InterfaceC8413mO() {
                @Override
                public final void accept(Object obj) {
                    C9081qO.this.a((AbstractC7914jP) obj);
                }
            }, this.f51774h);
        }
        super.a(str);
        throw null;
    }

    public final void a(AbstractC7914jP abstractC7914jP) {
        final C7582hP c7582hP = this.f51772f;
        Objects.requireNonNull(c7582hP);
        abstractC7914jP.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7582hP.this.a((ZM) obj);
            }
        });
    }

    @Override
    public final void a() {
        AbstractC7914jP c7749iP;
        InterfaceC8413mO interfaceC8413mO = this.f51770d;
        CN cn2 = this.f51771e;
        cn2.f39203a = this.f51773g.a();
        cn2.f39204b = this.f51774h.f51511a.a();
        C7582hP c7582hP = this.f51772f;
        if (c7582hP.f48548a.isEmpty()) {
            c7749iP = C7415gP.f48257a;
        } else {
            c7749iP = new C7749iP(c7582hP.f48548a);
        }
        cn2.f39205c = c7749iP;
        interfaceC8413mO.accept(cn2.a());
    }
}
