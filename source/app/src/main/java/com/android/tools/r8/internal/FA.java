package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4518j3;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;

public class FA extends AbstractC8682o {

    public static final boolean f40127h = true;

    public C4518j3 f40128c;

    public com.android.tools.r8.graph.M2 f40129d;

    public com.android.tools.r8.graph.M2 f40130e;

    public C4554l1 f40131f;

    public C4537k3 f40132g;

    public FA(C4724u1 c4724u1) {
        super(c4724u1);
    }

    public final C4554l1 a() {
        if (f40127h || b()) {
            return this.f40131f;
        }
        throw new AssertionError();
    }

    public final boolean b() {
        return this.f40131f != null;
    }

    @Override
    public final void a(int i10) {
        if (!f40127h && b()) {
            throw new AssertionError();
        }
        ((C4537k3) this.f40128c.f37168a).a(i10);
    }
}
