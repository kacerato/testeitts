package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.internal.InterfaceC5100Ei;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class C10631zi<N extends InterfaceC5100Ei> {

    public static final boolean f54458j = true;

    public final ArrayDeque f54459a = new ArrayDeque();

    public final IdentityHashMap f54460b = new IdentityHashMap();

    public final ArrayDeque f54461c = new ArrayDeque();

    public final ArrayDeque f54462d = new ArrayDeque();

    public final Set f54463e = AbstractC5513Ll0.c();

    public final IdentityHashMap f54464f = new IdentityHashMap();

    public final IdentityHashMap f54465g = new IdentityHashMap();

    public IdentityHashMap f54466h = new IdentityHashMap();

    public LinkedHashSet f54467i = new LinkedHashSet();

    public static class a {

        public final IdentityHashMap f54468a;

        public a(IdentityHashMap identityHashMap) {
            this.f54468a = identityHashMap;
        }

        public int a() {
            Iterator it = this.f54468a.values().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 += ((AbstractC8374m80) it.next()).f45165b.size();
            }
            return i10;
        }
    }

    public a a(Collection<N> collection) {
        boolean z10;
        do {
            b(collection);
            collection = this.f54467i;
            z10 = f54458j;
            if (!z10 && !this.f54464f.isEmpty()) {
                throw new AssertionError();
            }
            if (!z10 && !this.f54461c.isEmpty()) {
                throw new AssertionError();
            }
            if (!z10 && !this.f54459a.isEmpty()) {
                throw new AssertionError();
            }
            if (!z10 && !this.f54460b.isEmpty()) {
                throw new AssertionError();
            }
            if (!z10 && !this.f54465g.isEmpty()) {
                throw new AssertionError();
            }
            if (!z10 && !this.f54462d.isEmpty()) {
                throw new AssertionError();
            }
            this.f54463e.clear();
            this.f54467i = new LinkedHashSet();
        } while (!collection.isEmpty());
        a aVar = new a(this.f54466h);
        if (!z10 && !this.f54461c.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f54463e.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f54467i.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f54459a.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f54460b.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f54462d.isEmpty()) {
            throw new AssertionError();
        }
        this.f54466h = new IdentityHashMap();
        return aVar;
    }

    public final void b(Collection collection) {
        ArrayDeque arrayDeque = new ArrayDeque(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayDeque.addLast(new C4926Bi((InterfaceC5100Ei) it.next()));
        }
        while (!arrayDeque.isEmpty()) {
            AbstractC5042Di abstractC5042Di = (AbstractC5042Di) arrayDeque.removeFirst();
            abstractC5042Di.getClass();
            if (abstractC5042Di instanceof C4926Bi) {
                InterfaceC5100Ei interfaceC5100Ei = abstractC5042Di.b().f38982a;
                if (this.f54463e.contains(interfaceC5100Ei)) {
                    continue;
                } else {
                    InterfaceC5100Ei interfaceC5100Ei2 = this.f54459a.isEmpty() ? null : (InterfaceC5100Ei) this.f54459a.peek();
                    this.f54459a.push(interfaceC5100Ei);
                    if (!f54458j && this.f54460b.containsKey(interfaceC5100Ei)) {
                        throw new AssertionError();
                    }
                    this.f54460b.put(interfaceC5100Ei, new C4984Ci(this.f54459a.size() - 1, interfaceC5100Ei2));
                    if (interfaceC5100Ei2 != null) {
                        if (interfaceC5100Ei.b().f1() && interfaceC5100Ei.a(interfaceC5100Ei2)) {
                            this.f54461c.push(interfaceC5100Ei);
                        } else if (interfaceC5100Ei2.d().contains(interfaceC5100Ei)) {
                            this.f54462d.push(interfaceC5100Ei);
                        }
                    }
                    Iterator it2 = interfaceC5100Ei.c().iterator();
                    Iterator it3 = interfaceC5100Ei.d().iterator();
                    it2.getClass();
                    it3.getClass();
                    arrayDeque.addFirst(new C4868Ai(interfaceC5100Ei, new GK(new AK(new Iterator[]{it2, it3}))));
                }
            } else {
                boolean z10 = f54458j;
                if (!z10 && !(abstractC5042Di instanceof C4868Ai)) {
                    throw new AssertionError();
                }
                final C4868Ai a10 = abstractC5042Di.a();
                InterfaceC5100Ei a11 = a(a10.f38693a, a10.f38694b);
                if (a11 != null) {
                    arrayDeque.addFirst(a10);
                    arrayDeque.addFirst(new C4926Bi(a11));
                } else {
                    if (!z10 && a10.f38694b.hasNext()) {
                        throw new AssertionError();
                    }
                    InterfaceC5100Ei interfaceC5100Ei3 = a10.f38693a;
                    InterfaceC5100Ei interfaceC5100Ei4 = (InterfaceC5100Ei) this.f54459a.pop();
                    if (!z10 && interfaceC5100Ei4 != interfaceC5100Ei3) {
                        throw new AssertionError();
                    }
                    if (!z10 && !this.f54460b.containsKey(interfaceC5100Ei3)) {
                        throw new AssertionError();
                    }
                    this.f54460b.remove(interfaceC5100Ei3);
                    if (this.f54461c.peek() == interfaceC5100Ei4) {
                        if (!z10 && this.f54462d.peek() == interfaceC5100Ei4) {
                            throw new AssertionError();
                        }
                        this.f54461c.pop();
                    } else if (this.f54462d.peek() == interfaceC5100Ei4) {
                        this.f54462d.pop();
                    }
                    this.f54463e.add(a10.f38693a);
                    Collection collection2 = (Collection) this.f54464f.remove(a10.f38693a);
                    if (collection2 != null) {
                        collection2.forEach(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                C10631zi.this.a(a10, (InterfaceC5100Ei) obj);
                            }
                        });
                    }
                    Collection collection3 = (Collection) this.f54465g.remove(a10.f38693a);
                    if (collection3 != null) {
                        collection3.forEach(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                ((InterfaceC5100Ei) obj).d(C4868Ai.this.f38693a);
                            }
                        });
                    }
                }
            }
        }
    }

    public final void c(InterfaceC5100Ei interfaceC5100Ei, InterfaceC5100Ei interfaceC5100Ei2) {
        ((Set) this.f54464f.computeIfAbsent(interfaceC5100Ei, new Function() {
            @Override
            public final Object apply(Object obj) {
                Set c10;
                c10 = AbstractC5513Ll0.c();
                return c10;
            }
        })).add(interfaceC5100Ei2);
    }

    public final void d(InterfaceC5100Ei interfaceC5100Ei, InterfaceC5100Ei interfaceC5100Ei2) {
        ((Set) this.f54465g.computeIfAbsent(interfaceC5100Ei, new Function() {
            @Override
            public final Object apply(Object obj) {
                Set c10;
                c10 = AbstractC5513Ll0.c();
                return c10;
            }
        })).add(interfaceC5100Ei2);
    }

    public final void a(C4868Ai c4868Ai, InterfaceC5100Ei interfaceC5100Ei) {
        interfaceC5100Ei.e(c4868Ai.f38693a);
        b(c4868Ai.f38693a, interfaceC5100Ei);
    }

    public final InterfaceC5100Ei a(InterfaceC5100Ei interfaceC5100Ei, GK gk2) {
        while (true) {
            C10464yi c10464yi = null;
            if (!gk2.hasNext()) {
                return null;
            }
            InterfaceC5100Ei interfaceC5100Ei2 = (InterfaceC5100Ei) gk2.next();
            C4984Ci c4984Ci = (C4984Ci) this.f54460b.get(interfaceC5100Ei2);
            if (c4984Ci == null) {
                return interfaceC5100Ei2;
            }
            if (interfaceC5100Ei2.f(interfaceC5100Ei)) {
                d(interfaceC5100Ei, interfaceC5100Ei2);
            } else if (this.f54462d.isEmpty() || !a((InterfaceC5100Ei) this.f54462d.peek(), interfaceC5100Ei2, c4984Ci, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C10631zi.this.d((InterfaceC5100Ei) obj, (InterfaceC5100Ei) obj2);
                }
            })) {
                if (interfaceC5100Ei2.b().f1()) {
                    if (!f54458j && !a(interfaceC5100Ei, interfaceC5100Ei2)) {
                        throw new AssertionError();
                    }
                    c(interfaceC5100Ei, interfaceC5100Ei2);
                } else if (this.f54461c.isEmpty() || !a((InterfaceC5100Ei) this.f54461c.peek(), interfaceC5100Ei2, c4984Ci, new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        C10631zi.this.c((InterfaceC5100Ei) obj, (InterfaceC5100Ei) obj2);
                    }
                })) {
                    if (a(interfaceC5100Ei, interfaceC5100Ei2)) {
                        c(interfaceC5100Ei, interfaceC5100Ei2);
                    } else {
                        LinkedList linkedList = new LinkedList();
                        do {
                            if (!f54458j && this.f54459a.isEmpty()) {
                                throw new AssertionError();
                            }
                            linkedList.add((InterfaceC5100Ei) this.f54459a.pop());
                        } while (linkedList.getLast() != interfaceC5100Ei2);
                        InterfaceC5100Ei interfaceC5100Ei3 = (InterfaceC5100Ei) linkedList.getLast();
                        Iterator<E> it = linkedList.iterator();
                        while (it.hasNext()) {
                            InterfaceC5100Ei interfaceC5100Ei4 = (InterfaceC5100Ei) it.next();
                            if (interfaceC5100Ei4.c(interfaceC5100Ei3)) {
                                boolean z10 = f54458j;
                                if (!z10 && interfaceC5100Ei4.b(interfaceC5100Ei3)) {
                                    throw new AssertionError();
                                }
                                if (!z10 && interfaceC5100Ei3.a(interfaceC5100Ei4)) {
                                    throw new AssertionError();
                                }
                            } else {
                                if (!interfaceC5100Ei4.b(interfaceC5100Ei3)) {
                                    if (!f54458j && interfaceC5100Ei3.a(interfaceC5100Ei4)) {
                                        throw new AssertionError();
                                    }
                                } else if (a(interfaceC5100Ei4, interfaceC5100Ei3)) {
                                    c10464yi = new C10464yi(interfaceC5100Ei4, interfaceC5100Ei3);
                                }
                                if (c10464yi != null) {
                                    if (!f54458j && !a(c10464yi.f54121a, c10464yi.f54122b)) {
                                        throw new AssertionError();
                                    }
                                    c(c10464yi.f54121a, c10464yi.f54122b);
                                    this.f54467i.add(c10464yi.f54122b);
                                }
                                Iterator descendingIterator = linkedList.descendingIterator();
                                while (descendingIterator.hasNext()) {
                                    this.f54459a.push((InterfaceC5100Ei) descendingIterator.next());
                                }
                            }
                            interfaceC5100Ei3 = interfaceC5100Ei4;
                        }
                        throw new C5325If("Unable to satisfy force inlining constraints due to cyclic force inlining");
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(InterfaceC5100Ei interfaceC5100Ei, InterfaceC5100Ei interfaceC5100Ei2) {
        ((AbstractC8374m80) this.f54466h.computeIfAbsent(interfaceC5100Ei2.b(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10631zi.a((C4516j1) obj);
            }
        })).add((AbstractC8374m80) interfaceC5100Ei.a());
    }

    public final boolean a(final InterfaceC5100Ei interfaceC5100Ei, InterfaceC5100Ei interfaceC5100Ei2, C4984Ci c4984Ci, BiConsumer biConsumer) {
        final C4984Ci c4984Ci2 = (C4984Ci) this.f54460b.get(interfaceC5100Ei);
        if (c4984Ci2.f39321a <= c4984Ci.f39321a) {
            return false;
        }
        boolean z10 = f54458j;
        if (!z10) {
            Predicate predicate = new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10631zi.a(InterfaceC5100Ei.this, c4984Ci2, (LinkedList) obj);
                }
            };
            LinkedList linkedList = new LinkedList();
            do {
                if (!f54458j && this.f54459a.isEmpty()) {
                    throw new AssertionError();
                }
                linkedList.add((InterfaceC5100Ei) this.f54459a.pop());
            } while (linkedList.getLast() != interfaceC5100Ei2);
            if (!z10 && !predicate.test(linkedList)) {
                throw new AssertionError();
            }
            Iterator descendingIterator = linkedList.descendingIterator();
            while (descendingIterator.hasNext()) {
                this.f54459a.push((InterfaceC5100Ei) descendingIterator.next());
            }
        }
        if (!c4984Ci2.f39323c) {
            biConsumer.accept(c4984Ci2.f39322b, interfaceC5100Ei);
            this.f54467i.add(interfaceC5100Ei);
            c4984Ci2.f39323c = true;
        }
        return true;
    }

    public static boolean a(InterfaceC5100Ei interfaceC5100Ei, C4984Ci c4984Ci, LinkedList linkedList) {
        return linkedList.contains(interfaceC5100Ei) && linkedList.contains(c4984Ci.f39322b);
    }

    public static boolean a(InterfaceC5100Ei interfaceC5100Ei, InterfaceC5100Ei interfaceC5100Ei2) {
        if (!f54458j && !interfaceC5100Ei2.a(interfaceC5100Ei)) {
            throw new AssertionError();
        }
        interfaceC5100Ei2.b().L0();
        return !r1.f37320m.g();
    }

    public static AbstractC8374m80 a(C4516j1 c4516j1) {
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        return new C8207l80(2);
    }
}
