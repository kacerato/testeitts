package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Predicate;
import java.util.stream.Stream;

public final class C10048wA extends AbstractC8780od {

    public static final boolean f53429h = true;

    public final C8534n6 f53430a = C8534n6.a();

    public final C8200l6 f53431b = new C8200l6(new IdentityHashMap(), new IdentityHashMap());

    public final C8534n6 f53432c = C8534n6.a();

    public final IdentityHashMap f53433d = new IdentityHashMap();

    public final C8200l6 f53434e = new C8200l6(new IdentityHashMap(), new IdentityHashMap());

    public final C8534n6 f53435f = C8534n6.a();

    public final C8534n6 f53436g = C8534n6.a();

    public static boolean b(C4554l1 c4554l1, C4554l1 c4554l12) {
        return !c4554l12.a(c4554l1);
    }

    @Override
    public final C10215xA a(C4798y c4798y, CA ca2) {
        boolean z10 = f53429h;
        if (!z10 && !this.f53434e.f49890b.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f53435f.f49890b.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f53436g.f49890b.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f53432c.f49891c.o().stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10048wA.this.a((com.android.tools.r8.graph.A2) obj);
            }
        })) {
            throw new AssertionError();
        }
        return new C10215xA(c4798y, ca2, this.f53433d, this.f53430a, this.f53431b, this.f53432c);
    }

    public final void b(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, boolean z10) {
        this.f53432c.a(a22, a23);
        if (z10) {
            this.f53432c.f50507e.put(a23, a22);
        }
    }

    public final boolean a(com.android.tools.r8.graph.A2 a22) {
        if (f53429h || this.f53432c.d(a22).size() == 1 || this.f53432c.f50507e.containsKey(a22)) {
            return true;
        }
        throw new AssertionError();
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0051, code lost:
    
        if (r7 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0057, code lost:
    
        if (r0.hasNext() == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
    
        if (r0.next() != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0070, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0064, code lost:
    
        if (r0.hasNext() == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006e, code lost:
    
        if (r7.equals(r0.next()) == false) goto L52;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0090 A[LOOP:2: B:43:0x0088->B:45:0x0090, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C9406sK c9406sK, final C4554l1 c4554l1, C4554l1 c4554l12) {
        CK a10;
        boolean z10;
        boolean z11 = f53429h;
        if (!z11 && !AbstractC6483ap0.a(c9406sK).anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10048wA.b(C4554l1.this, (C4554l1) obj);
            }
        })) {
            throw new AssertionError();
        }
        if (!z11) {
            Stream a11 = AbstractC6483ap0.a(c9406sK);
            final C8534n6 c8534n6 = this.f53430a;
            Objects.requireNonNull(c8534n6);
            if (!a11.noneMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C8534n6.this.containsValue((C4554l1) obj);
                }
            })) {
                throw new AssertionError();
            }
        }
        if (!z11) {
            if (c9406sK instanceof Collection) {
                try {
                    z10 = ((Collection) c9406sK).contains(c4554l12);
                } catch (ClassCastException | NullPointerException unused) {
                    z10 = false;
                    if (!z10) {
                    }
                    a10 = JK.a(c9406sK.f52337b.iterator(), c9406sK.f52338c);
                    while (a10.f43396b.hasNext()) {
                    }
                    this.f53430a.f50507e.put(c4554l1, c4554l12);
                }
            } else {
                CK a12 = JK.a(c9406sK.f52337b.iterator(), c9406sK.f52338c);
            }
            if (!z10) {
                throw new AssertionError();
            }
        }
        a10 = JK.a(c9406sK.f52337b.iterator(), c9406sK.f52338c);
        while (a10.f43396b.hasNext()) {
            this.f53430a.a((C4554l1) a10.a(a10.f43396b.next()), c4554l1);
        }
        this.f53430a.f50507e.put(c4554l1, c4554l12);
    }

    @Override
    public final void a(C4554l1 c4554l1, C4554l1 c4554l12) {
        C8534n6 c8534n6 = this.f53430a;
        C8534n6 c8534n62 = this.f53435f;
        Set d10 = c8534n6.d(c4554l1);
        if (d10.isEmpty()) {
            c8534n62.a(c4554l1, c4554l12);
            return;
        }
        c8534n62.a((Iterable) d10, (Object) c4554l12);
        AbstractC4744v2 abstractC4744v2 = (AbstractC4744v2) c8534n6.c(c4554l1);
        if (abstractC4744v2 != null) {
            c8534n62.f50507e.put(c4554l12, abstractC4744v2);
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, boolean z10) {
        this.f53431b.a(a22, a23);
        b(a22, a23, z10);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        Set d10 = this.f53431b.d(a22);
        if (d10.isEmpty()) {
            this.f53434e.a(a22, a23);
        } else {
            this.f53434e.a((Iterable) d10, (Object) a23);
        }
        C8534n6 c8534n6 = this.f53432c;
        C8534n6 c8534n62 = this.f53436g;
        Set d11 = c8534n6.d(a22);
        if (d11.isEmpty()) {
            c8534n62.a(a22, a23);
            return;
        }
        c8534n62.a((Iterable) d11, (Object) a23);
        AbstractC4744v2 abstractC4744v2 = (AbstractC4744v2) c8534n6.c(a22);
        if (abstractC4744v2 != null) {
            c8534n62.f50507e.put(a23, abstractC4744v2);
        }
    }

    @Override
    public final void a() {
        this.f53431b.b(this.f53434e.f49890b.o());
        C8200l6 c8200l6 = this.f53434e;
        final C8200l6 c8200l62 = this.f53431b;
        Objects.requireNonNull(c8200l62);
        c8200l6.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                TY.this.a((Set) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        });
        C8200l6 c8200l63 = this.f53434e;
        c8200l63.f49890b.clear();
        c8200l63.f49891c.clear();
        C8534n6 c8534n6 = this.f53430a;
        C8534n6 c8534n62 = this.f53435f;
        c8534n6.b(c8534n62.f49890b.o());
        c8534n6.a(c8534n62);
        c8534n62.f49890b.clear();
        c8534n62.f49891c.clear();
        c8534n62.f50507e.clear();
        C8534n6 c8534n63 = this.f53432c;
        C8534n6 c8534n64 = this.f53436g;
        c8534n63.b(c8534n64.f49890b.o());
        c8534n63.a(c8534n64);
        c8534n64.f49890b.clear();
        c8534n64.f49891c.clear();
        c8534n64.f50507e.clear();
    }
}
