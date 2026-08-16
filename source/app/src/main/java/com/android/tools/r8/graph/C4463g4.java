package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5563Mi;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C9970vk0;
import com.android.tools.r8.internal.EW;

public final class C4463g4 extends AbstractC4497i0 {

    public static final C4463g4 f37236e = new C4463g4();

    public static boolean a(AbstractC4497i0 abstractC4497i0) {
        return abstractC4497i0 == f37236e;
    }

    @Override
    public final boolean c(Object obj) {
        return this == obj;
    }

    @Override
    public final int k0() {
        return System.identityHashCode(this);
    }

    @Override
    public final int q0() {
        throw new C5417Jv0();
    }

    @Override
    public final String toString() {
        return "<invalid-code>";
    }

    @Override
    public final boolean x0() {
        throw new C5417Jv0();
    }

    @Override
    public final C7215fB a(H5 h52, C4798y c4798y, EW.a aVar) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(H5 h52, AbstractC4446f6 abstractC4446f6) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(C4421e0 c4421e0, C5563Mi c5563Mi) {
        throw new C5417Jv0();
    }

    @Override
    public final String a(C4516j1 c4516j1, C9970vk0 c9970vk0) {
        return c4516j1.j0() + "\n" + ((Object) this);
    }
}
