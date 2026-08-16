package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.R2;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class C8461mi {

    public static final boolean f50391e = true;

    public final C4798y f50392a;

    public final C9539t70 f50393b;

    public final C4724u1 f50394c;

    public final C9295ri f50395d;

    public C8461mi(C4798y c4798y, C9539t70 c9539t70) {
        this.f50392a = c4798y;
        this.f50393b = c9539t70;
        C4724u1 b10 = c4798y.b();
        this.f50394c = b10;
        this.f50395d = new C9295ri(b10);
    }

    public static boolean a(C4798y c4798y) {
        if (c4798y.E().f50637S0 && !c4798y.E().x().f45396a.f53764a) {
            C4724u1 b10 = c4798y.b();
            if (((com.android.tools.r8.graph.M2) b10.f38025d.get(b10.b("Ldalvik/annotation/codegen/CovariantReturnType;"))) != null) {
                return true;
            }
        }
        return false;
    }

    public final void a(InterfaceC8795oi interfaceC8795oi, ExecutorService executorService) {
        ArrayList arrayList = new ArrayList();
        for (final com.android.tools.r8.graph.H2 h22 : this.f50392a.f().d()) {
            Objects.requireNonNull(h22);
            arrayList.addAll(a(h22, new InterfaceC6285Yx() {
                @Override
                public final void forEach(Consumer consumer) {
                    com.android.tools.r8.graph.H2.this.o(consumer);
                }
            }, interfaceC8795oi));
        }
        this.f50393b.a(arrayList, C7097eX.f47704c, EW.a(this.f50392a), executorService);
    }

    public final void a(IdentityHashMap identityHashMap, final InterfaceC8795oi interfaceC8795oi, ExecutorService executorService) {
        C5467Kr0.a(identityHashMap, new InterfaceC5988Tr0() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8461mi.this.a(interfaceC8795oi, (com.android.tools.r8.graph.H2) obj, (List) obj2);
            }
        }, this.f50392a.E().G(), executorService);
    }

    public final void a(InterfaceC8795oi interfaceC8795oi, com.android.tools.r8.graph.H2 h22, List list) {
        Comparator comparing = Comparator.comparing(new C7567hH0());
        boolean z10 = AT.f38618a;
        list.sort(comparing);
        a(h22, new C9291rg1(list), interfaceC8795oi);
    }

    public final ArrayList a(com.android.tools.r8.graph.H2 h22, InterfaceC6285Yx interfaceC6285Yx, final InterfaceC8795oi interfaceC8795oi) {
        final ArrayList arrayList = new ArrayList();
        interfaceC6285Yx.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8461mi.this.a(arrayList, interfaceC8795oi, (com.android.tools.r8.graph.H5) obj);
            }
        });
        h22.b0().a(arrayList);
        return arrayList;
    }

    public final void a(final List list, final InterfaceC8795oi interfaceC8795oi, final com.android.tools.r8.graph.H5 h52) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8461mi.a(List.this, interfaceC8795oi, h52, (com.android.tools.r8.graph.H5) obj);
            }
        };
        for (com.android.tools.r8.graph.M2 m22 : a(h52)) {
            com.android.tools.r8.graph.A2 reference = h52.getReference();
            C4724u1 c4724u1 = this.f50394c;
            com.android.tools.r8.graph.A2 a10 = c4724u1.a(reference.f38297f, c4724u1.a(m22, reference.x0()), reference.f38298g);
            com.android.tools.r8.graph.H2 holder = h52.getHolder();
            if (holder.b(a10) == null) {
                C4516j1[] c4516j1Arr = C4516j1.f37310u;
                C4516j1.a a11 = AbstractC8294li.a(a10, true);
                com.android.tools.r8.graph.L4 accessFlags = h52.getAccessFlags();
                com.android.tools.r8.graph.L4 z10 = new com.android.tools.r8.graph.L4(accessFlags.f37196b, accessFlags.f37197c).N().z();
                z10.b(1024);
                C4516j1.a a12 = a11.a(z10);
                a12.f37332d = h52.d().A0();
                a12.f37333e = h52.f36318c.k0();
                a12.f37335g = h52.d().U0();
                C6842cy c6842cy = new C6842cy(this.f50394c);
                c6842cy.f47222b = a10;
                c6842cy.f47225e = false;
                C6842cy b10 = c6842cy.b(h52.getReference(), h52.getHolder().isInterface());
                b10.f47228h = true;
                C4516j1.a a13 = a12.a(b10.a());
                a13.f37340l = h52.d().f37261e;
                a13.f37341m = h52.d().f37322o;
                consumer.accept(new com.android.tools.r8.graph.H5(h52.getHolder(), a13.a()));
            } else {
                throw this.f50392a.E().f50691j.b("Cannot process CovariantReturnType annotation: Class " + holder.b1() + " already has a method \"" + a10.j0() + JavadocConstants.ANCHOR_PREFIX_END);
            }
        }
    }

    public static void a(List list, InterfaceC8795oi interfaceC8795oi, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        list.add(h53);
        interfaceC8795oi.a(h53, h52);
    }

    public final LinkedHashSet a(com.android.tools.r8.graph.H5 h52) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (C4666r0 c4666r0 : h52.f36318c.k0().m0()) {
            C9295ri c9295ri = this.f50395d;
            com.android.tools.r8.graph.M2 l02 = c4666r0.l0();
            if (l02.a(c9295ri.f52106a) || l02.a(c9295ri.f52107b)) {
                a(h52, c4666r0.f37693c, linkedHashSet);
            }
        }
        if (!linkedHashSet.isEmpty()) {
            h52.d().f37066b = h52.f36318c.k0().b(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C8461mi.this.a((C4666r0) obj);
                }
            });
        }
        return linkedHashSet;
    }

    public final boolean a(C4666r0 c4666r0) {
        C9295ri c9295ri = this.f50395d;
        com.android.tools.r8.graph.M2 l02 = c4666r0.l0();
        return l02.a(c9295ri.f52106a) || l02.a(c9295ri.f52107b);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C4422e1 c4422e1, LinkedHashSet linkedHashSet) {
        boolean z10 = false;
        for (C4704t0 c4704t0 : c4422e1.f37143c) {
            com.android.tools.r8.graph.L2 k02 = c4704t0.k0();
            if (c4422e1.getType().a(this.f50395d.f52106a)) {
                if (k02.g(this.f50395d.f52109d)) {
                    R2.l E02 = c4704t0.l0().E0();
                    if (E02 != null) {
                        linkedHashSet.add((com.android.tools.r8.graph.M2) E02.W0());
                    } else {
                        throw new C5325If("Expected element \"returnType\" of CovariantReturnType annotation to reference a type (method: \"" + h52.r() + "\", was: " + c4704t0.f37739c.getClass().getCanonicalName() + ")");
                    }
                } else if (k02.g(this.f50395d.f52108c)) {
                    z10 = true;
                }
            } else {
                if (!f50391e) {
                    if (!c4422e1.getType().a(this.f50395d.f52107b)) {
                        throw new AssertionError();
                    }
                }
                if (k02.g(this.f50395d.f52110e)) {
                    R2.b n02 = c4704t0.l0().n0();
                    if (n02 != null) {
                        for (com.android.tools.r8.graph.R2 r22 : n02.W0()) {
                            if (!f50391e && !r22.H0()) {
                                throw new AssertionError();
                            }
                            a(h52, r22.m0().f36739d, linkedHashSet);
                        }
                    } else {
                        throw new C5325If("Expected element \"value\" of CovariantReturnTypes annotation to be an array (method: \"" + h52.r() + "\", was: " + c4704t0.l0().getClass().getCanonicalName() + ")");
                    }
                } else {
                    continue;
                }
            }
        }
        if (c4422e1.getType().a(this.f50395d.f52106a) && !z10) {
            throw new C5325If(String.format("CovariantReturnType annotation for method \"%s\" is missing mandatory element \"presentAfter\" (class %s)", h52.r(), h52.getHolder().getType()));
        }
    }
}
