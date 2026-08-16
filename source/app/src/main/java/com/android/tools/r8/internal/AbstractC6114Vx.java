package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Iterator;
import org.eclipse.jdt.internal.core.JavaElement;

public abstract class AbstractC6114Vx implements Iterable {
    public static C6057Ux a(Iterable... iterableArr) {
        return b((Iterable[]) Arrays.copyOf(iterableArr, iterableArr.length));
    }

    public static C6057Ux b(Iterable... iterableArr) {
        for (Iterable iterable : iterableArr) {
            iterable.getClass();
        }
        return new C6057Ux(iterableArr);
    }

    public final String toString() {
        Iterator it = iterator();
        StringBuilder sb2 = new StringBuilder("[");
        boolean z10 = true;
        while (it.hasNext()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append(it.next());
            z10 = false;
        }
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        return sb2.toString();
    }
}
