package com.android.tools.r8.internal;

import org.eclipse.jdt.internal.core.ClasspathEntry;

public final class C8401mI extends AbstractC7067eI {

    public static final C8401mI f50254e = new C8401mI(1, 0);

    public C8401mI(int i10, int i11) {
        super(i10, i11, 1);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C8401mI)) {
            return false;
        }
        if (isEmpty() && ((C8401mI) obj).isEmpty()) {
            return true;
        }
        C8401mI c8401mI = (C8401mI) obj;
        return this.f47652b == c8401mI.f47652b && this.f47653c == c8401mI.f47653c;
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f47652b * 31) + this.f47653c;
    }

    public final boolean isEmpty() {
        return this.f47652b > this.f47653c;
    }

    public final String toString() {
        return this.f47652b + ClasspathEntry.DOT_DOT + this.f47653c;
    }
}
