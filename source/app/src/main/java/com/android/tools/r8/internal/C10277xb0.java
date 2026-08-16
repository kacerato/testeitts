package com.android.tools.r8.internal;

import java.util.HashMap;
import java.util.function.Consumer;

public final class C10277xb0 extends AbstractC5963Tf0 {

    public final HashMap f53782g;

    public C10277xb0(InterfaceC5976Tl0 interfaceC5976Tl0) {
        super(interfaceC5976Tl0);
        this.f53782g = new HashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(boolean z10, C8330lu c8330lu) {
        C8796oi0 c8796oi0;
        EnumC8289lg0 enumC8289lg0 = (EnumC8289lg0) EnumC8289lg0.f50040I.get(c8330lu.f50135c);
        C6024Ug0 c6024Ug0 = c8330lu.f50136d;
        int i10 = c8330lu.f50133a;
        if (!c6024Ug0.b() && c6024Ug0.f44833g.size() == 1 && enumC8289lg0 == EnumC8289lg0.STRING) {
            C5676Og0 c5676Og0 = (C5676Og0) c6024Ug0.f44833g.get(0);
            if (c5676Og0.a()) {
                C7131ej0 c7131ej0 = c5676Og0.f42952c;
                if (c7131ej0 == null) {
                    c7131ej0 = C7131ej0.f47760h;
                }
                if (c7131ej0.f47762b == 4) {
                    C7626hh0 a10 = c7131ej0.a();
                    if (a10.f48678b == 2) {
                        HashMap hashMap = this.f53782g;
                        Integer valueOf = Integer.valueOf(i10);
                        if (a10.f48678b == 2) {
                            c8796oi0 = (C8796oi0) a10.f48679c;
                        } else {
                            c8796oi0 = C8796oi0.f51321d;
                        }
                        String str = c8796oi0.f51323b;
                        String str2 = str;
                        if (str == 0) {
                            String c10 = ((AbstractC8373m8) str).c();
                            c8796oi0.f51323b = c10;
                            str2 = c10;
                        }
                        hashMap.put(valueOf, str2);
                    }
                }
            }
        }
        if (enumC8289lg0 != null) {
            if (enumC8289lg0 != EnumC8289lg0.f50063z || z10) {
                this.f44525b.a(new C8623ng0(c8330lu.f50134b, enumC8289lg0, AbstractC4987Cj0.a(c6024Ug0.getName()), i10));
            }
        }
    }

    public final void a(C6795ci0 c6795ci0, final boolean z10) {
        GJ.c(c6795ci0, "<this>");
        C7955jg0 c7955jg0 = new C7955jg0(c6795ci0, null);
        C8805ol0 c8805ol0 = new C8805ol0();
        c8805ol0.f51342d = c7955jg0.a(c8805ol0, c8805ol0);
        c8805ol0.forEachRemaining(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10277xb0.this.a(z10, (C8330lu) obj);
            }
        });
    }
}
