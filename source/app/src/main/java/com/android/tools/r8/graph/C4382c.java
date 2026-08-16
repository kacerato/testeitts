package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C5417Jv0;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C4382c extends AbstractC4401d {

    public static final C4382c f37089a = new C4382c();

    @Override
    public final AbstractC4401d a(O5 o52) {
        return this;
    }

    @Override
    public final boolean b(Predicate predicate) {
        return false;
    }

    @Override
    public final boolean c() {
        return false;
    }

    @Override
    public final AbstractC4401d a(InterfaceC4403d1 interfaceC4403d1, AbstractC5308Hz abstractC5308Hz) {
        return this;
    }

    @Override
    public final int b() {
        throw new C5417Jv0("Should never be querying the number of access contexts when they are unknown");
    }

    @Override
    public final AbstractC4401d a(AbstractC4401d abstractC4401d) {
        return this;
    }

    @Override
    public final void a(C4554l1 c4554l1) {
    }

    @Override
    public final boolean a(C4516j1 c4516j1) {
        return true;
    }

    @Override
    public final boolean a(Predicate predicate) {
        return true;
    }

    @Override
    public final void a(Consumer consumer) {
        throw new C5417Jv0("Should never be iterating the access contexts when they are unknown");
    }
}
