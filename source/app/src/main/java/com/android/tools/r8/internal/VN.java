package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class VN extends R2 {

    public final B50 f45028c;

    public final InterfaceC8413mO f45029d;

    public final CN f45030e;

    public final GN f45031f;

    public final C8914pO f45032g;

    public final C6578bN f45033h;

    public VN(B50 b50, InterfaceC8413mO interfaceC8413mO, Consumer consumer, Function function) {
        super(b50);
        this.f45030e = new CN();
        GN gn2 = new GN();
        this.f45031f = gn2;
        C8914pO c8914pO = new C8914pO();
        this.f45032g = c8914pO;
        C6578bN c6578bN = new C6578bN();
        this.f45033h = c6578bN;
        this.f45028c = b50;
        this.f45029d = interfaceC8413mO;
        consumer.accept(gn2);
        LO lo = (LO) function.apply(c8914pO);
        UM um2 = lo.f41952b;
        C10414yN c10414yN = C10414yN.f54000c;
        c8914pO.f51511a.getClass();
        PM pm2 = new PM("MEMBER");
        c8914pO.f51511a.a(pm2, lo);
        c6578bN.f46750a.add(new C10251xP(new JO(pm2), c10414yN));
        if (um2 == null) {
            throw new FN("Target must define an item pattern");
        }
        c6578bN.f46750a.add(new C10251xP(um2, c10414yN));
    }

    @Override
    public final void a(Object obj, String str) {
        if (str.equals("description") && (obj instanceof String)) {
            this.f45031f.a((String) obj);
        } else {
            super.a(obj, str);
            throw null;
        }
    }

    @Override
    public final Q2 a(String str) {
        if (str.equals("additionalTargets")) {
            return new C6413aO(this.f45028c.b(str), new InterfaceC8413mO() {
                @Override
                public final void accept(Object obj) {
                    VN.this.a((C6744cN) obj);
                }
            }, this.f45032g);
        }
        super.a(str);
        throw null;
    }

    public final void a(C6744cN c6744cN) {
        C6578bN c6578bN = this.f45033h;
        Objects.requireNonNull(c6578bN);
        c6744cN.a(new C8768oY0(c6578bN));
    }

    @Override
    public final void a() {
        InterfaceC8413mO interfaceC8413mO = this.f45029d;
        CN cn2 = this.f45030e;
        cn2.f39203a = this.f45031f.a();
        cn2.f39204b = this.f45032g.f51511a.a();
        cn2.f39206d = this.f45033h.a();
        interfaceC8413mO.accept(cn2.a());
    }
}
