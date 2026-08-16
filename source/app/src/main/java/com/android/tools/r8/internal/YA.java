package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class YA {

    public final ArrayList f45950a = new ArrayList();

    public final boolean equals(Object obj) {
        if (!(obj instanceof YA)) {
            return false;
        }
        YA ya2 = (YA) obj;
        if (ya2.f45950a.size() != this.f45950a.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f45950a.size(); i10++) {
            if (this.f45950a.get(i10) != ya2.f45950a.get(i10)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f45950a.hashCode();
    }
}
