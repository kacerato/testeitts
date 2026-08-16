package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.List;

public final class D80 extends ZQ implements InterfaceC8676ny {

    public final AbstractC5963Tf0 f39453b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D80(AbstractC5963Tf0 abstractC5963Tf0) {
        super(1);
        this.f39453b = abstractC5963Tf0;
    }

    @Override
    public final C7619hf a(C6311Zh0 c6311Zh0) {
        List list;
        int i10 = c6311Zh0.f46323c;
        if (i10 != 0) {
            C8623ng0 c8623ng0 = (C8623ng0) this.f39453b.f44525b.f49014d.get(Integer.valueOf(i10));
            if (c8623ng0 != null) {
                list = Collections.singletonList(c8623ng0);
                GJ.b(list, "singletonList(...)");
            } else {
                list = C6049Ut.f44892b;
            }
        } else {
            C7789ig0 c7789ig0 = this.f39453b.f44525b;
            String str = "@" + c6311Zh0.getName();
            c7789ig0.getClass();
            GJ.c(str, "possibleUrlReference");
            C8456mg0 a10 = C8456mg0.a(str);
            if (a10 != null && !"android".equals(a10.f50378d)) {
                EnumC8289lg0 enumC8289lg0 = a10.f50376b;
                String str2 = a10.f50377c;
                GJ.b(str2, "url.name");
                list = c7789ig0.a(enumC8289lg0, str2);
            } else {
                list = C6049Ut.f44892b;
            }
        }
        return new C7619hf(list);
    }
}
