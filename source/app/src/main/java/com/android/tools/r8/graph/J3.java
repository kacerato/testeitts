package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import java.util.ArrayList;
import java.util.Iterator;

public final class J3 {

    public static final boolean f36496d = true;

    public final ArrayList f36497a = new ArrayList();

    public H3.c f36498b = null;

    public final ArrayList f36499c = new ArrayList();

    public final J3 a(H3.f fVar) {
        this.f36497a.add(fVar);
        return this;
    }

    public final H3.b a(C4724u1 c4724u1) {
        H3.c cVar = this.f36498b;
        if (cVar != null) {
            if (cVar.f36385b == c4724u1.f38068i2) {
                if (!f36496d) {
                    Iterator<H3.e> it = cVar.f36386c.iterator();
                    while (it.hasNext()) {
                        if (it.next().o()) {
                            throw new AssertionError();
                        }
                    }
                }
                this.f36498b = null;
            } else if (cVar.a()) {
                this.f36498b = null;
            }
        }
        if (this.f36498b == null && this.f36497a.isEmpty() && this.f36499c.isEmpty()) {
            return H3.b.f();
        }
        return new H3.b(this.f36497a, this.f36498b, this.f36499c);
    }
}
