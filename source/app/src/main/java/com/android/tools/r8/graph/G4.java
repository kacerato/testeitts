package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5513Ll0;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Set;

public final class G4 {

    public static final boolean f36339f = true;

    public final IdentityHashMap f36340a = new IdentityHashMap();

    public final ArrayList f36341b = new ArrayList();

    public final ArrayList f36342c = new ArrayList();

    public final Set f36343d = AbstractC5513Ll0.c();

    public int f36344e;

    public final void a(D4 d42) {
        if (!f36339f) {
            d42.getClass();
        }
        this.f36340a.putIfAbsent(d42.e().getReference(), d42);
    }

    public final G4 a(C4516j1 c4516j1) {
        this.f36342c.add(c4516j1);
        return this;
    }

    public final G4 a(M2 m22) {
        this.f36343d.add(m22);
        return this;
    }
}
