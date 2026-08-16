package com.android.tools.r8.internal;

import com.android.tools.r8.shaking.C11416s2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;

public final class C7191f3 extends AbstractC7024e3 {

    public static final boolean f47830f = true;

    public final C11416s2 f47831a;

    public int f47832b;

    public List f47833c;

    public final ArrayList f47834d;

    public final BiConsumer f47835e;

    public C7191f3(C11416s2 c11416s2, List list) {
        this(c11416s2, list, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C7191f3.a((X50) obj, (com.android.tools.r8.shaking.N) obj2);
            }
        });
    }

    public static void a(X50 x50, com.android.tools.r8.shaking.N n10) {
    }

    @Override
    public final void b(com.android.tools.r8.shaking.N n10) {
        if (!f47830f && !this.f47834d.isEmpty()) {
            throw new AssertionError();
        }
        if (this.f47831a.f57795a.isEmpty()) {
            return;
        }
        n10.a(this.f47831a);
    }

    public C7191f3(C11416s2 c11416s2, List list, BiConsumer biConsumer) {
        this.f47832b = 0;
        this.f47834d = new ArrayList();
        if (!f47830f && c11416s2.f57795a.isEmpty() && list.isEmpty()) {
            throw new AssertionError();
        }
        this.f47831a = c11416s2;
        this.f47833c = list;
        this.f47835e = biConsumer;
    }

    @Override
    public final void a(com.android.tools.r8.shaking.N n10) {
        if (this.f47833c.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.f47833c.size(); i10++) {
            X50 x50 = (X50) this.f47833c.get(i10);
            if (x50 != null) {
                if (!X50.f45611d && x50.f45612a.isEmpty()) {
                    throw new AssertionError();
                }
                int i11 = 0;
                for (Object obj : x50.f45612a) {
                    if (x50.a(obj, n10)) {
                        i11++;
                        x50.f45613b.add(obj);
                    }
                }
                if (i11 == 0) {
                    continue;
                } else if (i11 == x50.f45612a.size()) {
                    x50.f45612a = Collections.EMPTY_LIST;
                    this.f47832b++;
                    this.f47833c.set(i10, null);
                    n10.a(x50.f45614c);
                    ArrayList arrayList = this.f47834d;
                    if (!X50.f45611d && !x50.f45612a.isEmpty()) {
                        throw new AssertionError();
                    }
                    arrayList.add(new C10597zV(x50.f45614c, x50.a(x50.f45613b)));
                    this.f47835e.accept(x50, n10);
                } else {
                    int size = x50.f45612a.size() - i11;
                    if (!X50.f45611d && size <= 0) {
                        throw new AssertionError();
                    }
                    List a10 = x50.a(x50.f45613b);
                    List<com.android.tools.r8.graph.J2> a11 = x50.a(x50.f45612a);
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = x50.f45612a.iterator();
                    for (com.android.tools.r8.graph.J2 j22 : a11) {
                        Object next = it.next();
                        if (!a10.contains(j22)) {
                            arrayList2.add(next);
                        }
                    }
                    boolean z10 = X50.f45611d;
                    if (!z10 && it.hasNext()) {
                        throw new AssertionError();
                    }
                    if (!z10 && arrayList2.size() != size) {
                        throw new AssertionError();
                    }
                    x50.f45612a = arrayList2;
                    if (!z10 && arrayList2.isEmpty()) {
                        throw new AssertionError();
                    }
                }
            }
        }
        if (this.f47832b == this.f47833c.size()) {
            if (!f47830f && !AbstractC9907vK.a(this.f47833c, new V60() {
                @Override
                public final boolean apply(Object obj2) {
                    return Objects.isNull((X50) obj2);
                }
            })) {
                throw new AssertionError();
            }
            this.f47832b = 0;
            this.f47833c = Collections.EMPTY_LIST;
            return;
        }
        if (this.f47832b >= Math.max(1, this.f47833c.size() / 10)) {
            int size2 = this.f47833c.size() - this.f47832b;
            ArrayList arrayList3 = new ArrayList(size2);
            for (X50 x502 : this.f47833c) {
                if (x502 != null) {
                    if (!f47830f && x502.f45612a.isEmpty()) {
                        throw new AssertionError();
                    }
                    arrayList3.add(x502);
                }
            }
            if (!f47830f && arrayList3.size() != size2) {
                throw new AssertionError();
            }
            this.f47832b = 0;
            this.f47833c = arrayList3;
        }
    }

    @Override
    public final AV a() {
        return new AV(this.f47831a, this.f47834d);
    }
}
