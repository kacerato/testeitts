package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Consumer;

public final class C7079eO extends R2 {

    public final B50 f47664c;

    public final InterfaceC8413mO f47665d;

    public final CN f47666e;

    public final GN f47667f;

    public final C8914pO f47668g;

    public C7079eO(B50 b50, InterfaceC8413mO interfaceC8413mO, Consumer consumer) {
        super(b50);
        this.f47666e = new CN();
        GN gn2 = new GN();
        this.f47667f = gn2;
        this.f47668g = new C8914pO();
        this.f47664c = b50;
        this.f47665d = interfaceC8413mO;
        consumer.accept(gn2);
    }

    @Override
    public final void a(Object obj, String str) {
        if (str.equals("description") && (obj instanceof String)) {
            this.f47667f.a((String) obj);
        } else {
            super.a(obj, str);
            throw null;
        }
    }

    @Override
    public final Q2 a(String str) {
        H50 b10 = this.f47664c.b(str);
        if (str.equals("bindings")) {
            return new YN(b10, this.f47668g);
        }
        if (str.equals("preconditions")) {
            CN cn2 = this.f47666e;
            Objects.requireNonNull(cn2);
            return new C7413gO(b10, new C9713u91(cn2), this.f47668g);
        }
        if (str.equals("consequences")) {
            CN cn3 = this.f47666e;
            Objects.requireNonNull(cn3);
            return new C6413aO(b10, new C9880v91(cn3), this.f47668g);
        }
        super.a(str);
        throw null;
    }

    @Override
    public final void a() {
        InterfaceC8413mO interfaceC8413mO = this.f47665d;
        CN cn2 = this.f47666e;
        cn2.f39203a = this.f47667f.a();
        cn2.f39204b = this.f47668g.f51511a.a();
        interfaceC8413mO.accept(cn2.a());
    }
}
