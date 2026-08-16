package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C5180Ft {

    public static final boolean f40331c = true;

    public final C4798y f40332a;

    public final HashMap f40333b = new HashMap();

    public C5180Ft(C4798y c4798y) {
        this.f40332a = c4798y;
    }

    public static boolean a(C5969Ti c5969Ti, C5238Gt c5238Gt, Consumer consumer, Deque deque, C5238Gt c5238Gt2) {
        if (c5969Ti.f44553b.contains(c5238Gt2)) {
            ArrayDeque arrayDeque = new ArrayDeque();
            do {
                if (!C5969Ti.f44551c && c5969Ti.f44552a.isEmpty()) {
                    throw new AssertionError();
                }
                arrayDeque.addLast(c5969Ti.f44552a.removeLast());
            } while (arrayDeque.getLast() != c5238Gt2);
            Iterator descendingIterator = arrayDeque.descendingIterator();
            while (descendingIterator.hasNext()) {
                c5969Ti.f44552a.addLast(descendingIterator.next());
            }
            if (!AbstractC9907vK.a(arrayDeque, new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return C5180Ft.a((C5238Gt) obj);
                }
            })) {
                return false;
            }
            boolean remove = c5238Gt2.f40603c.remove(c5238Gt);
            if (!f40331c && !remove) {
                throw new AssertionError();
            }
            consumer.accept(c5238Gt);
            return true;
        }
        deque.add(new C6084Vi(c5238Gt2));
        return false;
    }

    public static C5238Gt b(com.android.tools.r8.graph.H5 h52, C6431aX c6431aX) {
        return new C5238Gt(h52, c6431aX.f46551b);
    }

    public final void b(C5238Gt c5238Gt) {
        boolean z10 = f40331c;
        if (!z10 && !c5238Gt.f40604d.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !c5238Gt.f40603c.isEmpty()) {
            throw new AssertionError();
        }
        C5238Gt c5238Gt2 = (C5238Gt) this.f40333b.remove(new C6431aX(c5238Gt.f40601a, c5238Gt.f40602b));
        if (!z10 && c5238Gt2 != c5238Gt) {
            throw new AssertionError();
        }
    }

    public static C5180Ft a(final C4798y c4798y, ConcurrentHashMap concurrentHashMap, final ConcurrentHashMap concurrentHashMap2, final com.android.tools.r8.graph.O5 o52) {
        final C5180Ft c5180Ft = new C5180Ft(c4798y);
        concurrentHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5180Ft.a(C4798y.this, c5180Ft, concurrentHashMap2, (C6431aX) obj, (InterfaceC6078Vf) obj2);
            }
        });
        concurrentHashMap2.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5180Ft.a(C5180Ft.this, concurrentHashMap2, o52, (C6431aX) obj, (Set) obj2);
            }
        });
        return c5180Ft;
    }

    public static void a(C4798y c4798y, C5180Ft c5180Ft, Map map, C6431aX c6431aX, InterfaceC6078Vf interfaceC6078Vf) {
        com.android.tools.r8.graph.H0 b10 = c4798y.b(c6431aX.f46550a);
        boolean z10 = com.android.tools.r8.graph.H0.f36361e;
        com.android.tools.r8.graph.H5 H10 = b10 != null ? b10.H() : null;
        if (H10 == null) {
            if (!f40331c) {
                throw new AssertionError();
            }
            return;
        }
        F8 j10 = H10.A().j();
        j10.getClass();
        if ((j10 instanceof C7954jg) && interfaceC6078Vf.a(c4798y, new C5651Nx(H10)).h0()) {
            com.android.tools.r8.graph.H0 b11 = c5180Ft.f40332a.b(c6431aX.f46550a);
            com.android.tools.r8.graph.H5 H11 = b11 != null ? b11.H() : null;
            if (H11 != null) {
                c5180Ft.a(H11, c6431aX);
            }
            map.remove(c6431aX);
        }
    }

    public static boolean a(C5238Gt c5238Gt) {
        return c5238Gt.f40604d.size() == 1;
    }

    public static void a(C5180Ft c5180Ft, Map map, com.android.tools.r8.graph.O5 o52, C6431aX c6431aX, Set set) {
        com.android.tools.r8.graph.H0 b10 = c5180Ft.f40332a.b(c6431aX.f46550a);
        boolean z10 = com.android.tools.r8.graph.H0.f36361e;
        com.android.tools.r8.graph.H5 H10 = b10 != null ? b10.H() : null;
        C5238Gt a10 = H10 != null ? c5180Ft.a(H10, c6431aX) : null;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            C6431aX c6431aX2 = (C6431aX) it.next();
            if (!o52.a(c6431aX2.f46550a)) {
                com.android.tools.r8.graph.H0 b11 = c5180Ft.f40332a.b(c6431aX2.f46550a);
                boolean z11 = com.android.tools.r8.graph.H0.f36361e;
                com.android.tools.r8.graph.H5 H11 = b11 != null ? b11.H() : null;
                if (H11 == null) {
                    if (!f40331c) {
                        throw new AssertionError();
                    }
                } else {
                    if (!H11.d().w0() && c6431aX2.f46551b == 0) {
                        if ((a10.f40601a.d().w0() || a10.f40602b != 0) ? a10.f40601a.A().j().b(a10.f40602b).d().g() : false) {
                            a10.f40605e = true;
                        }
                    }
                    if (!map.containsKey(c6431aX2)) {
                        TW A10 = H11.A();
                        if (!A10.x() || !A10.v().get(c6431aX2.f46551b)) {
                            a10.f40605e = true;
                        }
                    } else {
                        C5238Gt a11 = c5180Ft.a(H11, c6431aX2);
                        if (a10 == a11) {
                            continue;
                        } else if (a10.f40604d.add(a11)) {
                            a11.f40603c.add(a10);
                        } else if (!C5238Gt.f40600f && !a11.f40603c.contains(a10)) {
                            throw new AssertionError();
                        }
                    }
                }
            }
        }
    }

    public final C5238Gt a(final com.android.tools.r8.graph.H5 h52, C6431aX c6431aX) {
        return (C5238Gt) this.f40333b.computeIfAbsent(c6431aX, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5180Ft.b(com.android.tools.r8.graph.H5.this, (C6431aX) obj);
            }
        });
    }

    public final void a(final Consumer consumer) {
        Set c10 = AbstractC5513Ll0.c();
        for (C5238Gt c5238Gt : this.f40333b.values()) {
            if (!c10.contains(c5238Gt)) {
                final C5969Ti c5969Ti = new C5969Ti(new ArrayDeque(), AbstractC5513Ll0.c());
                final ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.add(new C6084Vi(c5238Gt));
                while (!arrayDeque.isEmpty()) {
                    AbstractC6141Wi abstractC6141Wi = (AbstractC6141Wi) arrayDeque.removeLast();
                    abstractC6141Wi.getClass();
                    if (abstractC6141Wi instanceof C6084Vi) {
                        C5238Gt c5238Gt2 = abstractC6141Wi.f45513a;
                        c5969Ti.f44552a.addLast(c5238Gt2);
                        boolean add = c5969Ti.f44553b.add(c5238Gt2);
                        if (!C5969Ti.f44551c && !add) {
                            throw new AssertionError();
                        }
                    } else {
                        boolean z10 = C5969Ti.f44551c;
                        if (!z10 && !(abstractC6141Wi instanceof C6027Ui)) {
                            throw new AssertionError();
                        }
                        C5238Gt c5238Gt3 = abstractC6141Wi.f45513a;
                        Object removeLast = c5969Ti.f44552a.removeLast();
                        if (!z10 && removeLast != c5238Gt3) {
                            throw new AssertionError();
                        }
                        boolean remove = c5969Ti.f44553b.remove(removeLast);
                        if (!z10 && !remove) {
                            throw new AssertionError();
                        }
                    }
                    if (!(abstractC6141Wi instanceof C6027Ui)) {
                        final C5238Gt c5238Gt4 = abstractC6141Wi.f45513a;
                        c10.add(c5238Gt4);
                        arrayDeque.add(new C6027Ui(abstractC6141Wi.a().f45513a));
                        c5238Gt4.f40604d.removeIf(new Predicate() {
                            @Override
                            public final boolean test(Object obj) {
                                return C5180Ft.a(C5969Ti.this, c5238Gt4, consumer, arrayDeque, (C5238Gt) obj);
                            }
                        });
                    }
                }
            }
        }
    }
}
