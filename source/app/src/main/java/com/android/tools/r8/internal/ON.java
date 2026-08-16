package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class ON extends R2 {

    public final B50 f42865c;

    public final InterfaceC8413mO f42866d;

    public final GN f42867e;

    public final String f42868f;

    public final int f42869g;

    public ON(B50 b50, InterfaceC8413mO interfaceC8413mO, Consumer consumer, String str, int i10) {
        super(b50);
        MN mn2 = MN.f42283d;
        GN gn2 = new GN();
        this.f42867e = gn2;
        this.f42865c = b50;
        this.f42866d = interfaceC8413mO;
        this.f42868f = str;
        this.f42869g = i10;
        consumer.accept(gn2);
    }

    @Override
    public final void a(Object obj, String str) {
        if (str.equals("description") && (obj instanceof String)) {
            this.f42867e.a((String) obj);
        } else {
            super.a(obj, str);
            throw null;
        }
    }

    @Override
    public final void a() {
        C8914pO c8914pO = new C8914pO();
        NN nn2 = new NN(this.f42865c, c8914pO);
        nn2.a((Object) this.f42868f, "className");
        nn2.a();
        InterfaceC8413mO interfaceC8413mO = this.f42866d;
        SM sm2 = new SM();
        sm2.f44193a = this.f42867e.a();
        sm2.f44194b = this.f42869g;
        sm2.f44195c = c8914pO.f51511a.a();
        sm2.f44196d = nn2.c();
        interfaceC8413mO.accept(sm2.a());
    }
}
