package com.android.tools.r8.internal;

import java.util.function.Consumer;
import java.util.function.Function;

public final class PN extends R2 {

    public final InterfaceC8413mO f43187c;

    public final JO f43188d;

    public final GN f43189e;

    public final int f43190f;

    public final C8914pO f43191g;

    public PN(B50 b50, InterfaceC8413mO interfaceC8413mO, Consumer consumer, Function function, int i10) {
        super(b50);
        MN mn2 = MN.f42283d;
        GN gn2 = new GN();
        this.f43189e = gn2;
        C8914pO c8914pO = new C8914pO();
        this.f43191g = c8914pO;
        this.f43187c = interfaceC8413mO;
        LO lo = (LO) function.apply(c8914pO);
        c8914pO.f51511a.getClass();
        PM pm2 = new PM("MEMBER");
        c8914pO.f51511a.a(pm2, lo);
        this.f43188d = new JO(pm2);
        this.f43190f = i10;
        consumer.accept(gn2);
    }

    @Override
    public final void a() {
        Q2 q22 = this.f43440a;
        if (q22 != null) {
            q22.a();
        }
        InterfaceC8413mO interfaceC8413mO = this.f43187c;
        MN a10 = this.f43189e.a();
        int i10 = this.f43190f;
        JO jo = this.f43188d;
        C8914pO c8914pO = this.f43191g;
        SM sm2 = new SM();
        sm2.f44193a = a10;
        sm2.f44194b = i10;
        sm2.f44195c = c8914pO.f51511a.a();
        sm2.f44196d = jo;
        interfaceC8413mO.accept(sm2.a());
    }

    @Override
    public final void a(Object obj, String str) {
        if (str.equals("description") && (obj instanceof String)) {
            this.f43189e.a((String) obj);
        } else {
            super.a(obj, str);
            throw null;
        }
    }
}
