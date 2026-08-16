package com.android.tools.r8.dex;

import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4441f1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4685s0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4823z5;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.InterfaceC4443f3;
import com.android.tools.r8.graph.O2;
import com.android.tools.r8.graph.Z0;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C7447gd0;
import com.android.tools.r8.internal.C8022k20;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.Y0;
import java.util.IdentityHashMap;

public final class J extends X {

    public static final boolean f35721n = true;

    public final C7447gd0 f35722a;

    public final C8022k20 f35723b;

    public final C8022k20 f35724c;

    public final C7447gd0 f35725d;

    public final C8022k20 f35726e;

    public final C8022k20 f35727f;

    public final C8022k20 f35728g;

    public final C8022k20 f35729h;

    public final C7447gd0 f35730i;

    public final C8022k20 f35731j;

    public final IdentityHashMap f35732k;

    public final IdentityHashMap f35733l;

    public final C8570nJ f35734m;

    public J(C8570nJ c8570nJ) {
        C7447gd0 c7447gd0 = new C7447gd0(16);
        c7447gd0.f53665b = -2;
        this.f35722a = c7447gd0;
        this.f35723b = a();
        this.f35724c = a();
        C7447gd0 c7447gd02 = new C7447gd0(16);
        c7447gd02.f53665b = -2;
        this.f35725d = c7447gd02;
        this.f35726e = a();
        this.f35727f = a();
        this.f35728g = a();
        this.f35729h = a();
        C7447gd0 c7447gd03 = new C7447gd0(16);
        c7447gd03.f53665b = -2;
        this.f35730i = c7447gd03;
        this.f35731j = a();
        this.f35732k = new IdentityHashMap();
        this.f35733l = new IdentityHashMap();
        this.f35734m = c8570nJ;
    }

    public static C8022k20 a() {
        C8022k20 c8022k20 = new C8022k20();
        c8022k20.f45889b = -2;
        return c8022k20;
    }

    @Override
    public final void b(C4516j1 c4516j1) {
        InterfaceC4443f3 R02 = c4516j1.R0();
        if (R02 != null && a(c4516j1)) {
            R02.a(this);
        }
        C4723u0 k02 = c4516j1.k0();
        k02.getClass();
        a(k02);
        AbstractC4592n1.a(this, k02.f37806d);
        C4823z5 c4823z5 = c4516j1.f37316i;
        AbstractC4592n1.a(this, c4823z5.f38467b);
        a(c4823z5);
    }

    public static boolean a(C8022k20 c8022k20, Object obj) {
        if (c8022k20.containsKey(obj)) {
            return false;
        }
        c8022k20.b(-1, obj);
        return true;
    }

    @Override
    public final boolean a(H2 h22) {
        C7447gd0 c7447gd0 = this.f35730i;
        if (c7447gd0.containsKey(h22)) {
            return false;
        }
        c7447gd0.b(-1, h22);
        return true;
    }

    @Override
    public final boolean a(C4441f1 c4441f1) {
        return a(this.f35731j, c4441f1);
    }

    @Override
    public final boolean a(C4723u0 c4723u0) {
        C8570nJ c8570nJ = this.f35734m;
        c8570nJ.getClass();
        if (c8570nJ.a(C2.J_MR1) || !c4723u0.isEmpty()) {
            return a(this.f35727f, c4723u0);
        }
        return false;
    }

    public final int b(C4723u0 c4723u0) {
        C8570nJ c8570nJ = this.f35734m;
        c8570nJ.getClass();
        if (c8570nJ.a(C2.J_MR1) || !c4723u0.isEmpty()) {
            return a(c4723u0, this.f35727f);
        }
        return 0;
    }

    @Override
    public final boolean a(C4516j1 c4516j1) {
        C7447gd0 c7447gd0 = this.f35722a;
        if (c7447gd0.containsKey(c4516j1)) {
            return false;
        }
        c7447gd0.b(-1, c4516j1);
        return true;
    }

    @Override
    public final boolean a(Z0 z02) {
        return a(this.f35723b, z02);
    }

    @Override
    public final boolean a(O2 o22) {
        if (o22.isEmpty()) {
            return false;
        }
        return a(this.f35724c, o22);
    }

    @Override
    public final boolean a(C4823z5 c4823z5) {
        if (c4823z5.isEmpty()) {
            return false;
        }
        return a(this.f35728g, c4823z5);
    }

    @Override
    public final boolean a(C4666r0 c4666r0) {
        return a(this.f35726e, c4666r0);
    }

    @Override
    public final void a(H2 h22, C4685s0 c4685s0) {
        C4685s0 c4685s02 = (C4685s0) this.f35732k.put(h22, c4685s0);
        if (!f35721n && c4685s02 != null) {
            throw new AssertionError();
        }
        a(this.f35729h, c4685s0);
    }

    public static int a(Object obj, Y0 y02) {
        if (obj == null) {
            return 0;
        }
        int b10 = y02.b(obj);
        if (f35721n || !(b10 == -1 || b10 == -2)) {
            return b10;
        }
        throw new AssertionError();
    }

    public static int a(AbstractC4592n1 abstractC4592n1, C7447gd0 c7447gd0) {
        if (abstractC4592n1 == null) {
            return 0;
        }
        int b10 = c7447gd0.b(abstractC4592n1);
        if (f35721n || !(b10 == -1 || b10 == -2)) {
            return b10;
        }
        throw new AssertionError();
    }

    public static void a(Object obj, int i10, Y0 y02) {
        int b10 = y02.b(i10, obj);
        if (!f35721n && b10 > -1) {
            throw new AssertionError();
        }
    }

    public static void a(AbstractC4592n1 abstractC4592n1, int i10, C7447gd0 c7447gd0) {
        int b10 = c7447gd0.b(i10, abstractC4592n1);
        if (!f35721n && b10 > -1) {
            throw new AssertionError();
        }
    }
}
