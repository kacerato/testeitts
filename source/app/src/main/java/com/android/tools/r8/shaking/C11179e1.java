package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4666r0;
import java.util.IdentityHashMap;
import java.util.function.BiConsumer;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C11179e1 extends AbstractC11247i1 {

    public static final boolean f57249c = true;

    public final C11196f1 f57250a;

    public final IdentityHashMap f57251b;

    public C11179e1(C11196f1 c11196f1, IdentityHashMap identityHashMap) {
        boolean z10 = f57249c;
        if (!z10 && c11196f1 == null) {
            throw new AssertionError();
        }
        if (!z10 && c11196f1.f57272a != null) {
            throw new AssertionError();
        }
        if (!z10 && c11196f1.a() && identityHashMap != null) {
            throw new AssertionError();
        }
        if (!z10 && identityHashMap != null && identityHashMap.isEmpty()) {
            throw new AssertionError();
        }
        this.f57250a = c11196f1;
        this.f57251b = identityHashMap;
    }

    @Override
    public final C11179e1 a() {
        return this;
    }

    public final String toString() {
        final StringBuilder sb2 = new StringBuilder();
        sb2.append("IntermediateKeepAnnotationCollection{ ");
        sb2.append(this.f57250a.toString());
        sb2.append(VectorFormat.DEFAULT_SEPARATOR);
        this.f57251b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11179e1.a(StringBuilder.this, (com.android.tools.r8.graph.M2) obj, (C11196f1) obj2);
            }
        });
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006f, code lost:
    
        if (r6 == 1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0075, code lost:
    
        if (r6 == 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0029, code lost:
    
        if (r1 == 1) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x002f, code lost:
    
        if (r1 == 0) goto L19;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(C4666r0 c4666r0) {
        C11196f1 c11196f1;
        C11196f1 c11196f12 = this.f57250a;
        com.android.tools.r8.graph.M2 m22 = c11196f12.f57272a;
        boolean z10 = false;
        if (m22 == null || m22.a(c4666r0.l0())) {
            C11213g1 c11213g1 = c11196f12.f57273b;
            if (!c11213g1.a()) {
                if (c11213g1 != C11213g1.f57333e) {
                    int m02 = c4666r0.m0();
                    if (c11213g1 == C11213g1.f57331c) {
                    }
                    if (c11213g1 == C11213g1.f57332d) {
                    }
                }
                return false;
            }
        }
        IdentityHashMap identityHashMap = this.f57251b;
        if (identityHashMap == null || (c11196f1 = (C11196f1) identityHashMap.get(c4666r0.l0())) == null) {
            return true;
        }
        if (!f57249c && !c11196f1.f57272a.a(c4666r0.l0())) {
            throw new AssertionError();
        }
        C11213g1 c11213g12 = c11196f1.f57273b;
        if (!c11213g12.a()) {
            if (c11213g12 != C11213g1.f57333e) {
                int m03 = c4666r0.m0();
                if (c11213g12 == C11213g1.f57331c) {
                }
                if (c11213g12 == C11213g1.f57332d) {
                }
            }
            z10 = true;
        }
        return !z10;
    }

    public static void a(StringBuilder sb2, com.android.tools.r8.graph.M2 m22, C11196f1 c11196f1) {
        sb2.append((Object) m22);
        sb2.append(": ");
        sb2.append(c11196f1.toString());
    }
}
