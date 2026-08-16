package com.android.tools.r8.internal;

import java.io.Serializable;

public abstract class AbstractC10297xi implements Comparable, Serializable {
    public abstract int a(AbstractC10297xi abstractC10297xi);

    public abstract void a(StringBuilder sb2);

    public abstract boolean a();

    public abstract void b(StringBuilder sb2);

    public final boolean equals(Object obj) {
        if (obj instanceof AbstractC10297xi) {
            try {
                if (a((AbstractC10297xi) obj) == 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    public abstract int hashCode();
}
