package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;

public final class C8974pm implements InterfaceC7875j9 {

    public static final boolean f51604d = true;

    public final C4798y f51605b;

    public final C9808um f51606c;

    public C8974pm(C4798y c4798y) {
        this.f51605b = c4798y;
        this.f51606c = new C9808um(c4798y);
    }

    @Override
    public final void a(C4861Af c4861Af, AbstractC8710o9 abstractC8710o9) {
        Iterator<C6830cu> it = X2.a(this.f51605b).f53766c.h().values().iterator();
        while (it.hasNext()) {
            this.f51606c.b(it.next(), abstractC8710o9);
        }
    }

    @Override
    public final String b() {
        return "$retargeter";
    }
}
