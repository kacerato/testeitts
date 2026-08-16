package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class YY {

    public final C10239xJ f46010a = new C10239xJ();

    public final AbstractC6287Yy a() {
        if (this.f46010a.f53733b.isEmpty()) {
            return null;
        }
        C7605ha0 c7605ha0 = C7605ha0.f48584f;
        C7438ga0 c7438ga0 = new C7438ga0();
        C10239xJ c10239xJ = this.f46010a;
        Set o10 = c10239xJ.f53733b.o();
        GJ.b(o10, "<get-keys>(...)");
        Iterator it = AbstractC6303Ze.a(o10, new C10072wJ(c10239xJ.f53733b)).iterator();
        while (it.hasNext()) {
            C6605ba0 c6605ba0 = ((C9991vr0) it.next()).f53356a;
            GJ.c(c6605ba0, "element");
            if ((c7438ga0.f48289c & 1) != 1) {
                c7438ga0.f48290d = new ArrayList(c7438ga0.f48290d);
                c7438ga0.f48289c |= 1;
            }
            List list = c7438ga0.f48290d;
            C7104ea0 c10 = c6605ba0.c();
            if (!c10.isInitialized()) {
                throw new C6834cv0();
            }
            list.add(c10);
        }
        return (AbstractC6287Yy) c7438ga0.a();
    }
}
