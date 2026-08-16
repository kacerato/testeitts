package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC10188x1;
import com.android.tools.r8.internal.AbstractC10483yo0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C7447gd0;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9620tf;
import com.android.tools.r8.internal.C9954vf;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.internal.RR;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.ToIntFunction;

public class C4766w5 {

    public static final boolean f38333p = true;

    public final int f38334a;

    public final C4798y f38335b;

    public final AbstractC5308Hz f38336c;

    public final RR f38337d;

    public final H2[] f38338e;

    public final C7447gd0 f38339f;

    public final C7447gd0 f38340g;

    public final C7447gd0 f38341h;

    public final C7447gd0 f38342i;

    public C7447gd0 f38343j;

    public final C7447gd0 f38344k;

    public final C7447gd0 f38345l;

    public final Map f38346m;

    public L2 f38347n;

    public final C4728u5 f38348o;

    public C4766w5(C4798y<?> c4798y, C4766w5 c4766w5, RR rr, Set<H2> set, Map<I2, L2> map, Collection<M2> collection, Collection<A2> collection2, Collection<C4554l1> collection3, Collection<L2> collection4, Collection<D0> collection5, Collection<C2> collection6, int i10, AbstractC9148qo0 abstractC9148qo0, com.android.tools.r8.dex.t0 t0Var, C8659ns0 c8659ns0) {
        H2[] h2Arr;
        boolean z10 = f38333p;
        if (!z10 && c4798y == null) {
            throw new AssertionError();
        }
        if (!z10 && set == null) {
            throw new AssertionError();
        }
        if (!z10 && map == null) {
            throw new AssertionError();
        }
        if (!z10 && collection == null) {
            throw new AssertionError();
        }
        if (!z10 && collection2 == null) {
            throw new AssertionError();
        }
        if (!z10 && collection3 == null) {
            throw new AssertionError();
        }
        if (!z10 && collection4 == null) {
            throw new AssertionError();
        }
        if (!z10 && collection5 == null) {
            throw new AssertionError();
        }
        if (!z10 && collection6 == null) {
            throw new AssertionError();
        }
        this.f38334a = i10;
        this.f38335b = c4798y;
        this.f38336c = c4798y.v();
        AbstractC10992r0 s10 = c4798y.s();
        this.f38337d = rr;
        this.f38346m = map;
        c8659ns0.b("Sort strings");
        if (c4766w5 == null) {
            this.f38343j = a(collection4, new C4570lh(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C4766w5.this.a((L2) obj);
                }
            }, i10);
        } else {
            this.f38343j = c4766w5.f38343j;
            this.f38347n = c4766w5.f38347n;
        }
        final C7447gd0 c7447gd0 = this.f38343j;
        Objects.requireNonNull(c7447gd0);
        C9620tf c9620tf = new C9620tf(s10, new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return C7447gd0.this.b((L2) obj);
            }
        });
        c8659ns0.d();
        c8659ns0.b("Sort types");
        final C7447gd0 a10 = a(collection, a(c9620tf), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4766w5.this.a((M2) obj);
            }
        }, 0);
        this.f38340g = a10;
        final C7447gd0 c7447gd02 = this.f38343j;
        Objects.requireNonNull(c7447gd02);
        C9954vf c9954vf = new C9954vf(s10, new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return C7447gd0.this.b((L2) obj);
            }
        }, new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return C7447gd0.this.b((M2) obj);
            }
        });
        c8659ns0.d();
        c8659ns0.b("Sort classes");
        if (c4798y.H().f50865c0) {
            h2Arr = a(set, c9954vf);
        } else {
            if (!z10 && !abstractC9148qo0.c() && t0Var.b() != 0) {
                throw new AssertionError();
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet(set.size());
            a(set, linkedHashSet, abstractC9148qo0);
            a(set, linkedHashSet, c9954vf);
            if (!z10 && set.size() != linkedHashSet.size()) {
                throw new AssertionError();
            }
            h2Arr = (H2[]) linkedHashSet.toArray(H2.f36363B);
        }
        this.f38338e = h2Arr;
        c8659ns0.d();
        c8659ns0.b("Sort protos");
        this.f38339f = a(map.o(), a(c9954vf), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4766w5.this.a((I2) obj);
            }
        }, 0);
        c8659ns0.d();
        c8659ns0.b("Sort methods");
        this.f38341h = a(collection2, a(c9954vf), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4766w5.this.a((A2) obj);
            }
        }, 0);
        c8659ns0.d();
        c8659ns0.b("Sort fields");
        this.f38342i = a(collection3, a(c9954vf), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4766w5.this.a((C4554l1) obj);
            }
        }, 0);
        c8659ns0.d();
        c8659ns0.b("Sort call-sites");
        this.f38344k = a(collection5, a(c9954vf), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4766w5.this.a((D0) obj);
            }
        }, 0);
        c8659ns0.d();
        c8659ns0.b("Sort method handles");
        this.f38345l = a(collection6, a(c9954vf), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4766w5.this.a((C2) obj);
            }
        }, 0);
        c8659ns0.d();
        final C7447gd0 c7447gd03 = this.f38343j;
        Objects.requireNonNull(c7447gd03);
        this.f38348o = new C4728u5(s10, new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return C7447gd0.this.b((L2) obj);
            }
        }, new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return C7447gd0.this.b((M2) obj);
            }
        }, this);
    }

    public final void a(List list) {
        if (!f38333p && this.f38334a != list.size()) {
            throw new AssertionError();
        }
        if (list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            L2 l22 = (L2) it.next();
            if (l22 != null) {
                this.f38343j.b(-1, l22);
            }
        }
        final com.android.tools.r8.internal.C7 c72 = new com.android.tools.r8.internal.C7();
        this.f38343j = a(this.f38343j.o(), new C4570lh(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.internal.C7.this.a((com.android.tools.r8.internal.C7) obj);
            }
        }, 0);
        if (!f38333p && this.f38347n != null && !((L2) c72.a()).d(this.f38347n)) {
            throw new AssertionError();
        }
    }

    public static Comparator a(final C9620tf c9620tf) {
        return new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int a10;
                a10 = ((InterfaceC5580Mq0) obj).a((InterfaceC5580Mq0) obj2, AbstractC8953pf.this);
                return a10;
            }
        };
    }

    public final void a(L2 l22) {
        if (!f38333p && this.f38347n != null) {
            throw new AssertionError();
        }
        this.f38347n = l22;
    }

    public final void a(AbstractC4592n1 abstractC4592n1) {
        throw new C5325If("Index overflow for " + ((Object) abstractC4592n1.getClass()));
    }

    public static C7447gd0 a(Collection collection, Comparator comparator, Consumer consumer, int i10) {
        if (collection.isEmpty()) {
            return new C7447gd0(16);
        }
        ArrayList arrayList = new ArrayList(collection);
        arrayList.sort(comparator);
        C7447gd0 c7447gd0 = new C7447gd0(collection.size());
        c7447gd0.f53665b = -1;
        int size = arrayList.size();
        int i11 = 0;
        int i12 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            if (i12 + i10 == 65536) {
                consumer.accept(obj);
            }
            c7447gd0.b(i12, obj);
            i12++;
        }
        return c7447gd0;
    }

    public final H2[] a(Set set, final C9954vf c9954vf) {
        final C4747v5 c4747v5 = new C4747v5(this.f38335b.f());
        H2[] h2Arr = (H2[]) set.toArray(H2.f36363B);
        Arrays.sort(h2Arr, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C4766w5.a(C4747v5.this, c9954vf, (H2) obj, (H2) obj2);
            }
        });
        return h2Arr;
    }

    public static int a(C4747v5 c4747v5, AbstractC8953pf abstractC8953pf, H2 h22, H2 h23) {
        int a10 = c4747v5.a(h22);
        int a11 = c4747v5.a(h23);
        return a10 != a11 ? a10 - a11 : abstractC8953pf.a(h22.f36245e, h23.f36245e);
    }

    public final void a(final Set set, final LinkedHashSet linkedHashSet, AbstractC9148qo0 abstractC9148qo0) {
        abstractC9148qo0.a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C4766w5.this.a(set, linkedHashSet, (AbstractC10483yo0) obj);
            }
        });
    }

    public final void a(Set set, LinkedHashSet linkedHashSet, AbstractC10483yo0 abstractC10483yo0) {
        M2 a10 = abstractC10483yo0.c().S().a(this.f38335b.b());
        if (a10.P0()) {
            if (!f38333p) {
                throw new AssertionError();
            }
        } else {
            if (!f38333p && !a10.I0()) {
                throw new AssertionError();
            }
            H2 a11 = H2.a(this.f38335b.g(a10));
            if (a11 == null || !set.contains(a11)) {
                return;
            }
            b(set, linkedHashSet, a11);
        }
    }

    public final void a(final Set set, final LinkedHashSet linkedHashSet, final C9954vf c9954vf) {
        ArrayList arrayList = new ArrayList(set.size() - linkedHashSet.size());
        Iterator it = set.iterator();
        while (it.hasNext()) {
            H2 h22 = (H2) it.next();
            if (!linkedHashSet.contains(h22)) {
                arrayList.add(h22);
            }
        }
        arrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int a10;
                a10 = AbstractC8953pf.this.a(((H2) obj).getType(), ((H2) obj2).getType());
                return a10;
            }
        });
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4766w5.this.b(set, linkedHashSet, (H2) obj);
            }
        });
    }

    public final void b(final Set set, final LinkedHashSet linkedHashSet, H2 h22) {
        if (linkedHashSet.contains(h22)) {
            return;
        }
        h22.a(this.f38335b, new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C4766w5.a(Set.this, (M2) obj, (E0) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4766w5.this.a(set, linkedHashSet, (M2) obj, (E0) obj2);
            }
        });
        linkedHashSet.add(h22);
    }

    public static boolean a(Set set, M2 m22, E0 e02) {
        return e02 != null && e02.e0() && set.contains(e02.d0());
    }

    public final void a(Set set, LinkedHashSet linkedHashSet, M2 m22, E0 e02) {
        b(set, linkedHashSet, e02.d0());
    }

    public static int a(AbstractC4406d4 abstractC4406d4, AbstractC10188x1 abstractC10188x1) {
        int b10 = abstractC10188x1.b(abstractC4406d4);
        if (f38333p || b10 != -1) {
            return b10;
        }
        throw new AssertionError((Object) ("Missing dependency: " + ((Object) abstractC4406d4)));
    }
}
