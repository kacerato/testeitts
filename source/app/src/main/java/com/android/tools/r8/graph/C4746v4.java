package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C6374a80;
import com.android.tools.r8.internal.C6620bf0;
import com.android.tools.r8.internal.C7948je;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.TR;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C4746v4 {

    public static final boolean f38301d = true;

    public final AbstractC8552nC f38302a;

    public final AbstractC8552nC f38303b;

    public final AbstractC8552nC f38304c;

    public C4746v4(TR tr, C7948je c7948je, C6374a80 c6374a80, final C8570nJ c8570nJ) {
        final AbstractC8552nC abstractC8552nC;
        AbstractC8552nC abstractC8552nC2;
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C4746v4.a(C8570nJ.this, (M2) obj);
            }
        };
        if (tr != null) {
            tr.a(predicate);
            abstractC8552nC = tr.b();
        } else {
            abstractC8552nC = C6620bf0.f46817i;
        }
        if (!f38301d && c6374a80.f49278b.get() != null) {
            throw new AssertionError();
        }
        c6374a80.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C4746v4.a((M2) obj);
            }
        });
        final AbstractC8552nC b10 = c6374a80.b();
        if (c7948je != null) {
            c7948je.a(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C4746v4.b((M2) obj);
                }
            });
            abstractC8552nC2 = c7948je.b();
        } else {
            abstractC8552nC2 = C6620bf0.f46817i;
        }
        if (c8570nJ.f50640T0) {
            this.f38304c = abstractC8552nC;
            this.f38302a = b10;
            this.f38303b = C4765w4.a(abstractC8552nC2, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return (E0) AbstractC8552nC.this.get((M2) obj);
                }
            }, c8570nJ);
        } else {
            final AbstractC8552nC a10 = C4765w4.a(b10, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C4746v4.c((M2) obj);
                }
            }, c8570nJ);
            this.f38302a = a10;
            this.f38303b = C4765w4.a(abstractC8552nC2, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return (E0) AbstractC8552nC.this.get((M2) obj);
                }
            }, c8570nJ);
            this.f38304c = C4765w4.a(abstractC8552nC, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C4746v4.this.a(c8570nJ, abstractC8552nC, (M2) obj);
                }
            }, c8570nJ);
        }
    }

    public static boolean a(M2 m22) {
        return true;
    }

    public static boolean b(M2 m22) {
        return true;
    }

    public static E0 c(M2 m22) {
        return null;
    }

    public static boolean a(C8570nJ c8570nJ, M2 m22) {
        if (c8570nJ.d0()) {
            return (m22 == c8570nJ.m().f37913N2 || m22 == c8570nJ.m().f37958T5) ? false : true;
        }
        return true;
    }

    public final E0 a(C8570nJ c8570nJ, AbstractC8552nC abstractC8552nC, M2 m22) {
        H2 h22 = (H2) this.f38302a.get(m22);
        if (h22 != null) {
            c8570nJ.b(h22, (C4725u2) abstractC8552nC.get(m22), m22);
            return h22;
        }
        return (E0) this.f38303b.get(m22);
    }
}
