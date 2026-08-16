package com.android.tools.r8.internal;

import java.util.Set;

public final class C6332Zs implements InterfaceC6494at {

    public static final boolean f46357g = true;

    public final W5 f46358b;

    public final W5 f46359c;

    public final Set f46360d;

    public final C6286Yx0 f46361e = new C6286Yx0(2);

    public W5 f46362f;

    public C6332Zs(W5 w52, W5 w53, Set set) {
        this.f46358b = w52;
        this.f46359c = w53;
        this.f46360d = set;
        this.f46362f = w53;
    }

    public static boolean a(W5 w52, W5 w53, W5 w54, C6286Yx0 c6286Yx0) {
        if (!f46357g && c6286Yx0.b()) {
            throw new AssertionError();
        }
        c6286Yx0.f46126b.add(w54);
        c6286Yx0.b((Iterable) w53.u());
        while (c6286Yx0.b()) {
            W5 w55 = (W5) c6286Yx0.d();
            if (w55 == w52) {
                return false;
            }
            if (!f46357g && w55.u().isEmpty()) {
                throw new AssertionError((Object) "subgraphEntryBlock did not dominate subgraphExitBlock");
            }
            c6286Yx0.b((Iterable) w55.u());
        }
        return true;
    }

    @Override
    public final boolean b(W5 w52) {
        W5 w53;
        boolean a10;
        if (!f46357g && this.f46362f == null) {
            throw new AssertionError((Object) "DominatorChecker cannot be used after returning false.");
        }
        Set set = this.f46360d;
        if (set.contains(w52)) {
            return true;
        }
        if (w52.D()) {
            w53 = w52;
            do {
                if (!f46357g && w53 == this.f46359c) {
                    throw new AssertionError();
                }
                w53 = w53.y();
            } while (w53.D());
            if (set.contains(w53)) {
                set.add(w52);
                return true;
            }
        } else {
            w53 = w52;
        }
        if (this.f46361e.f46126b.contains(w52)) {
            this.f46361e.f46126b.clear();
            a10 = a(this.f46362f, this.f46359c, w53, this.f46361e);
            this.f46362f = w53;
        } else {
            a10 = a(this.f46358b, this.f46362f, w52, this.f46361e);
            this.f46362f = w52;
        }
        if (!a10) {
            this.f46362f = null;
            return a10;
        }
        set.add(w52);
        if (w53 != w52) {
            set.add(w53);
        }
        return a10;
    }
}
