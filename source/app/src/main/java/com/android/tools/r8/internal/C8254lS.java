package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;

public final class C8254lS implements Comparable {

    public static final boolean f49976g = true;

    public final C10340xw0 f49977b;

    public final C4515j0 f49978c;

    public final int f49979d;

    public final int f49980e;

    public final int f49981f;

    public C8254lS(C10340xw0 c10340xw0, int i10, int i11, int i12) {
        if (!f49976g && !c10340xw0.z()) {
            throw new AssertionError();
        }
        this.f49977b = c10340xw0;
        this.f49978c = c10340xw0.s();
        this.f49979d = i10;
        this.f49980e = i11;
        this.f49981f = i12;
    }

    @Override
    public final int compareTo(C8254lS c8254lS) {
        int i10 = this.f49980e;
        int i11 = c8254lS.f49980e;
        return i10 != i11 ? Integer.compare(i10, i11) : Integer.compare(this.f49981f, c8254lS.f49981f);
    }

    public final String toString() {
        C4515j0 c4515j0 = this.f49978c;
        return ((Object) c4515j0) + " @ r" + this.f49979d + ": " + ((Object) new IT(this.f49980e, this.f49981f));
    }
}
