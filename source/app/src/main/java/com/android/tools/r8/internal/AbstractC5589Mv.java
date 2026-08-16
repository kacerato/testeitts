package com.android.tools.r8.internal;

import java.util.function.Consumer;

public abstract class AbstractC5589Mv {
    public static SG a(C6899dH c6899dH, InterfaceC6568bI interfaceC6568bI) {
        WG wg2 = new WG(((C6399aH) c6899dH.c()).f46484b);
        final C6899dH c6899dH2 = null;
        while (wg2.hasNext()) {
            RG rg2 = (RG) wg2.next();
            int a10 = rg2.a();
            Object value = rg2.getValue();
            Object a11 = interfaceC6568bI.a(a10, value);
            if (c6899dH2 == null) {
                if (a11 != value) {
                    c6899dH2 = new C6899dH(c6899dH.f47346h);
                    C6246Ye.a(c6899dH.c(), new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            SG.this.a(r2.a(), ((RG) obj).getValue());
                        }
                    }, rg2);
                }
            }
            if (a11 != null) {
                c6899dH2.a(a10, a11);
            } else {
                wg2.remove();
            }
        }
        if (c6899dH2 != null) {
            return c6899dH2;
        }
        return null;
    }
}
