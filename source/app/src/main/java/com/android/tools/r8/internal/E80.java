package com.android.tools.r8.internal;

import com.ardor3d.util.resource.ResourceLocatorTool;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class E80 {
    public static final InterfaceC8638nl0 a(C9800uj0 c9800uj0, AbstractC5963Tf0 abstractC5963Tf0) {
        GJ.c(c9800uj0, "node");
        GJ.c(abstractC5963Tf0, ResourceLocatorTool.TYPE_MODEL);
        if (c9800uj0.f52928b != 1) {
            return C6220Xt.f45846a;
        }
        List list = c9800uj0.a().f51332e;
        GJ.b(list, "node.element.attributeList");
        C4898Ax c4898Ax = new C4898Ax(new C5874Rs0(new C6839cx(new C5874Rs0(new C6839cx(new C7619hf(list), true, C10544z80.f54291b), A80.f38543b), true, B80.f38827b), C80.f39133b), new D80(abstractC5963Tf0), C9806ul0.f52943h);
        C10676zx c10676zx = new C10676zx(c4898Ax);
        while (c10676zx.hasNext()) {
            AbstractC8957pg0.a((C8623ng0) c10676zx.next());
        }
        List<C9800uj0> list2 = c9800uj0.a().f51333f;
        GJ.b(list2, "node.element.childList");
        ArrayList arrayList = new ArrayList();
        for (C9800uj0 c9800uj02 : list2) {
            GJ.b(c9800uj02, "it");
            Iterator it = a(c9800uj02, abstractC5963Tf0).iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
        }
        return AbstractC8972pl0.b(AbstractC8972pl0.a((Object[]) new InterfaceC8638nl0[]{c4898Ax, new C7619hf(arrayList)}));
    }
}
