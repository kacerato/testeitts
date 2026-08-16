package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.internal.C9389sD;
import com.android.tools.r8.internal.X60;
import com.android.tools.r8.internal.YV;
import com.android.tools.r8.ir.optimize.AbstractC10715j0;
import com.android.tools.r8.ir.optimize.C10721m0;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Predicate;
import v.T0;

public final class C10721m0 {

    public static final boolean f54893k = true;

    public LinkedHashMap f54894a;

    public LinkedHashMap f54895b;

    public LinkedHashMap f54896c;

    public LinkedHashSet f54897d;

    public LinkedHashMap f54898e;

    public LinkedHashMap f54899f;

    public C9389sD f54900g;

    public LinkedHashMap f54901h;

    public LinkedHashMap f54902i;

    public final int f54903j;

    public C10721m0(int i10) {
        this.f54903j = i10;
    }

    public static boolean a(YV yv, AbstractC10715j0 abstractC10715j0) {
        return abstractC10715j0.f54886b == yv;
    }

    public final void b() {
        int c10 = c();
        if (!f54893k && c10 > this.f54903j) {
            throw new AssertionError();
        }
        if (c10 == this.f54903j) {
            a(1);
        }
    }

    public final int c() {
        LinkedHashMap linkedHashMap = this.f54894a;
        int size = linkedHashMap != null ? linkedHashMap.size() : 0;
        LinkedHashMap linkedHashMap2 = this.f54895b;
        int size2 = size + (linkedHashMap2 != null ? linkedHashMap2.size() : 0);
        LinkedHashMap linkedHashMap3 = this.f54896c;
        int size3 = size2 + (linkedHashMap3 != null ? linkedHashMap3.size() : 0);
        LinkedHashSet linkedHashSet = this.f54897d;
        int size4 = size3 + (linkedHashSet != null ? linkedHashSet.size() : 0);
        LinkedHashMap linkedHashMap4 = this.f54898e;
        int size5 = size4 + (linkedHashMap4 != null ? linkedHashMap4.size() : 0);
        LinkedHashMap linkedHashMap5 = this.f54899f;
        int size6 = size5 + (linkedHashMap5 != null ? linkedHashMap5.size() : 0);
        LinkedHashMap linkedHashMap6 = this.f54901h;
        int size7 = size6 + (linkedHashMap6 != null ? linkedHashMap6.size() : 0);
        LinkedHashMap linkedHashMap7 = this.f54902i;
        return size7 + (linkedHashMap7 != null ? linkedHashMap7.size() : 0);
    }

    public static boolean a(YV yv, int i10, AbstractC10715j0 abstractC10715j0) {
        return abstractC10715j0.f54886b == yv && abstractC10715j0.a(i10);
    }

    public C10721m0(int i10, C10721m0 c10721m0) {
        this.f54903j = i10;
        if (c10721m0 != null) {
            LinkedHashMap linkedHashMap = c10721m0.f54894a;
            if (linkedHashMap != null && !linkedHashMap.isEmpty()) {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                this.f54894a = linkedHashMap2;
                linkedHashMap2.putAll(c10721m0.f54894a);
            }
            LinkedHashMap linkedHashMap3 = c10721m0.f54895b;
            if (linkedHashMap3 != null && !linkedHashMap3.isEmpty()) {
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                this.f54895b = linkedHashMap4;
                linkedHashMap4.putAll(c10721m0.f54895b);
            }
            LinkedHashMap linkedHashMap5 = c10721m0.f54896c;
            if (linkedHashMap5 != null && !linkedHashMap5.isEmpty()) {
                LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                this.f54896c = linkedHashMap6;
                linkedHashMap6.putAll(c10721m0.f54896c);
            }
            LinkedHashSet linkedHashSet = c10721m0.f54897d;
            if (linkedHashSet != null && !linkedHashSet.isEmpty()) {
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                this.f54897d = linkedHashSet2;
                linkedHashSet2.addAll(c10721m0.f54897d);
            }
            LinkedHashMap linkedHashMap7 = c10721m0.f54898e;
            if (linkedHashMap7 != null && !linkedHashMap7.isEmpty()) {
                LinkedHashMap linkedHashMap8 = new LinkedHashMap();
                this.f54898e = linkedHashMap8;
                linkedHashMap8.putAll(c10721m0.f54898e);
            }
            LinkedHashMap linkedHashMap9 = c10721m0.f54899f;
            if (linkedHashMap9 != null && !linkedHashMap9.isEmpty()) {
                LinkedHashMap linkedHashMap10 = new LinkedHashMap();
                this.f54899f = linkedHashMap10;
                linkedHashMap10.putAll(c10721m0.f54899f);
            }
            this.f54900g = c10721m0.f54900g;
            LinkedHashMap linkedHashMap11 = c10721m0.f54901h;
            if (linkedHashMap11 != null && !linkedHashMap11.isEmpty()) {
                LinkedHashMap linkedHashMap12 = new LinkedHashMap();
                this.f54901h = linkedHashMap12;
                linkedHashMap12.putAll(c10721m0.f54901h);
            }
            LinkedHashMap linkedHashMap13 = c10721m0.f54902i;
            if (linkedHashMap13 == null || linkedHashMap13.isEmpty()) {
                return;
            }
            LinkedHashMap linkedHashMap14 = new LinkedHashMap();
            this.f54902i = linkedHashMap14;
            linkedHashMap14.putAll(c10721m0.f54902i);
        }
    }

    public final void a(final C4554l1 c4554l1) {
        LinkedHashMap linkedHashMap = this.f54901h;
        if (linkedHashMap != null) {
            linkedHashMap.o().removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean a10;
                    a10 = ((com.android.tools.r8.ir.optimize.o0) obj).f54911a.a(C4554l1.this);
                    return a10;
                }
            });
        }
    }

    public final void b(final C4554l1 c4554l1) {
        LinkedHashMap linkedHashMap = this.f54898e;
        if (linkedHashMap != null) {
            linkedHashMap.o().removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean a10;
                    a10 = ((com.android.tools.r8.ir.optimize.o0) obj).f54911a.a(C4554l1.this);
                    return a10;
                }
            });
        }
    }

    public final void a() {
        this.f54901h = null;
        this.f54902i = null;
    }

    public static void a(LinkedHashMap linkedHashMap, final LinkedHashMap linkedHashMap2) {
        linkedHashMap.entrySet().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10721m0.a(Map.this, (Map.Entry) obj);
            }
        });
    }

    public static boolean a(Map map, Map.Entry entry) {
        return map.get(entry.getKey()) != entry.getValue();
    }

    public static void a(LinkedHashSet linkedHashSet, LinkedHashSet linkedHashSet2) {
        Objects.requireNonNull(linkedHashSet2);
        linkedHashSet.removeIf(X60.a(new T0(linkedHashSet2)));
    }

    public final void a(int i10) {
        boolean z10 = f54893k;
        if (!z10 && i10 <= 0) {
            throw new AssertionError();
        }
        if (!z10 && i10 >= c()) {
            throw new AssertionError();
        }
        int a10 = a(i10, this.f54894a);
        LinkedHashSet linkedHashSet = this.f54897d;
        if (linkedHashSet != null && a10 != 0) {
            Iterator<E> it = linkedHashSet.iterator();
            while (it.hasNext() && a10 > 0) {
                it.next();
                it.remove();
                a10--;
            }
        }
        int a11 = a(a(a(a(a(a(a10, this.f54898e), this.f54899f), this.f54895b), this.f54896c), this.f54901h), this.f54902i);
        if (!z10 && a11 != 0) {
            throw new AssertionError();
        }
    }

    public static int a(int i10, LinkedHashMap linkedHashMap) {
        Set o10 = linkedHashMap != null ? linkedHashMap.o() : null;
        if (o10 != null && i10 != 0) {
            Iterator it = o10.iterator();
            while (it.hasNext() && i10 > 0) {
                it.next();
                it.remove();
                i10--;
            }
        }
        return i10;
    }

    public final void a(final YV yv) {
        LinkedHashMap linkedHashMap = this.f54894a;
        if (linkedHashMap != null) {
            linkedHashMap.o().removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10721m0.a(YV.this, (AbstractC10715j0) obj);
                }
            });
        }
    }

    public final void a(final YV yv, final int i10) {
        LinkedHashMap linkedHashMap = this.f54894a;
        if (linkedHashMap != null) {
            linkedHashMap.o().removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10721m0.a(YV.this, i10, (AbstractC10715j0) obj);
                }
            });
        }
    }

    public final void a(o0 o0Var, p0 p0Var) {
        LinkedHashMap linkedHashMap;
        b();
        if (!f54893k && (linkedHashMap = this.f54895b) != null && linkedHashMap.containsKey(o0Var)) {
            throw new AssertionError();
        }
        if (this.f54898e == null) {
            this.f54898e = new LinkedHashMap();
        }
        this.f54898e.put(o0Var, p0Var);
    }
}
