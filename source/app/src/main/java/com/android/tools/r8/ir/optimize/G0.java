package com.android.tools.r8.ir.optimize;

import java.util.AbstractCollection;
import java.util.List;

public final class G0 {

    public static final boolean f54740d = true;

    public final int f54741a;

    public final AbstractCollection f54742b;

    public final AbstractCollection f54743c;

    /* JADX WARN: Multi-variable type inference failed */
    public G0(int i10, List list, List list2) {
        this.f54741a = i10;
        this.f54742b = (AbstractCollection) list;
        this.f54743c = (AbstractCollection) list2;
        if (f54740d || !E0.b(i10)) {
            return;
        }
        if (list.isEmpty() || list2.isEmpty()) {
            throw new AssertionError();
        }
    }
}
