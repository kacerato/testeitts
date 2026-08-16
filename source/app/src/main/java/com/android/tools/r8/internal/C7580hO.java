package com.android.tools.r8.internal;

import java.util.List;
import java.util.function.Consumer;

public final class C7580hO extends AbstractC7246fO {

    public final InterfaceC8413mO f48542j;

    public final C8914pO f48543k;

    public final RN f48544l;

    public final C10084wP f48545m;

    public C7580hO(B50 b50, InterfaceC8413mO interfaceC8413mO, C8914pO c8914pO) {
        super(b50);
        this.f48545m = new C10084wP();
        this.f48542j = interfaceC8413mO;
        this.f48543k = c8914pO;
        this.f48544l = new RN(b50);
    }

    public static void a(AbstractC10581zN abstractC10581zN) {
    }

    @Override
    public final C8914pO b() {
        return this.f48543k;
    }

    @Override
    public final Q2 a(String str) {
        RN rn2 = this.f48544l;
        new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7580hO.a((AbstractC10581zN) obj);
            }
        };
        Q2 a10 = rn2.a(str);
        return a10 != null ? a10 : super.a(str);
    }

    @Override
    public final void a() {
        super.a();
        C10084wP c10084wP = this.f48545m;
        RN rn2 = this.f48544l;
        AbstractC10581zN abstractC10581zN = C10414yN.f54000c;
        if (rn2.a()) {
            abstractC10581zN = rn2.c();
        }
        c10084wP.f53497b = abstractC10581zN;
        List<MM> list = this.f47959h;
        if (list != null && this.f47956e != null) {
            for (MM mm2 : list) {
                InterfaceC8413mO interfaceC8413mO = this.f48542j;
                C10084wP c10084wP2 = this.f48545m;
                c10084wP2.f53496a = mm2;
                if (mm2 != null) {
                    interfaceC8413mO.accept(new C10251xP(mm2, c10084wP2.f53497b));
                } else {
                    throw new FN("Target must define an item pattern");
                }
            }
            return;
        }
        B50 b50 = this.f47954c;
        throw AbstractC10449yd.a(b50, b50, "Items not finalized. Missing call to visitEnd()");
    }
}
