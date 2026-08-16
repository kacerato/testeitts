package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class C9123qg extends AbstractC8849p implements LQ {

    public static final boolean f51847b = true;

    public final Set f51848a;

    public C9123qg() {
        this.f51848a = AbstractC5513Ll0.c();
    }

    @Override
    public final C9123qg a() {
        return this;
    }

    @Override
    public final LQ b() {
        return this;
    }

    @Override
    public final boolean c() {
        return this.f51848a.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == C9123qg.class) {
            return this.f51848a.equals(((C9123qg) obj).f51848a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f51848a.hashCode();
    }

    @Override
    public final int size() {
        return this.f51848a.size();
    }

    @Override
    public final boolean a(C4460g1 c4460g1) {
        return this.f51848a.contains(c4460g1);
    }

    public C9123qg(C4460g1 c4460g1) {
        Set c10 = AbstractC5513Ll0.c();
        c10.add(c4460g1);
        this.f51848a = c10;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.F0 f02) {
        return this.f51848a.contains(f02.d());
    }

    @Override
    public final AbstractC8849p a(C4798y c4798y, com.android.tools.r8.graph.proto.c cVar) {
        if (!f51847b && this.f51848a.isEmpty()) {
            throw new AssertionError();
        }
        if (!cVar.b()) {
            AbstractC8849p a10 = C5701Ot.f43063a.a(c4798y, cVar);
            if (!a10.c()) {
                C9123qg a11 = a10.a();
                a11.f51848a.addAll(this.f51848a);
                return a11;
            }
        }
        return this;
    }

    @Override
    public final AbstractC8849p a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.O5 o52) {
        if (!f51847b && this.f51848a.isEmpty()) {
            throw new AssertionError();
        }
        C9123qg c9123qg = new C9123qg();
        for (C4460g1 c4460g1 : this.f51848a) {
            if (!o52.a(c4460g1.getReference())) {
                C4554l1 e10 = abstractC5308Hz.e((AbstractC5308Hz) null, c4460g1.getReference());
                c4798y.getClass();
                C4460g1 b10 = e10.b(c4798y.g(e10.f38297f));
                if (b10 == null) {
                    if (!f51847b) {
                        throw new AssertionError();
                    }
                } else {
                    c9123qg.f51848a.add(b10);
                }
            }
        }
        return c9123qg;
    }
}
