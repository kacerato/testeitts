package com.android.tools.r8.internal;

import com.ardor3d.util.resource.ResourceLocatorTool;
import java.util.List;

public final class C5600Na0 {

    public final InterfaceC5210Gf0 f42633a;

    public final InterfaceC8676ny f42634b;

    public C5600Na0(InterfaceC5210Gf0 interfaceC5210Gf0, InterfaceC8676ny interfaceC8676ny) {
        GJ.c(interfaceC5210Gf0, "resourceRoot");
        GJ.c(interfaceC8676ny, "resourceTableProducer");
        this.f42633a = interfaceC5210Gf0;
        this.f42634b = interfaceC8676ny;
    }

    public final void a(AbstractC5963Tf0 abstractC5963Tf0) {
        GJ.c(abstractC5963Tf0, ResourceLocatorTool.TYPE_MODEL);
        C6795ci0 c6795ci0 = (C6795ci0) this.f42634b.a(abstractC5963Tf0);
        GJ.c(c6795ci0, "<this>");
        C6673bx c6673bx = new C6673bx(AbstractC8972pl0.a((InterfaceC8638nl0) new C5874Rs0(new C9139ql0(new C7955jg0(c6795ci0, null)), new C5542Ma0(abstractC5963Tf0, this))));
        while (c6673bx.hasNext()) {
            C9451se0 c9451se0 = (C9451se0) c6673bx.next();
            List list = c9451se0.f52424c.f44833g;
            GJ.b(list, "entry.configValueList");
            C10676zx c10676zx = new C10676zx(new C4898Ax(new C5874Rs0(new C7619hf(list), C7450ge0.f48325b), C8116ke0.f49699b, C9806ul0.f52943h));
            while (c10676zx.hasNext()) {
                C7626hh0 c7626hh0 = (C7626hh0) c10676zx.next();
                GJ.b(c7626hh0, "it");
                c9451se0.a(c7626hh0);
            }
        }
    }
}
