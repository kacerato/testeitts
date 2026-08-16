package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D3;
import com.android.tools.r8.graph.E0;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.L4;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.BU;
import com.android.tools.r8.internal.C10094wU;
import com.android.tools.r8.internal.C10142wm;
import com.android.tools.r8.internal.C10261xU;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C8317lp1;
import com.android.tools.r8.internal.C8484mp1;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.CU;
import com.android.tools.r8.internal.EU;
import com.android.tools.r8.internal.H5;
import com.android.tools.r8.internal.InterfaceC7328ft0;
import com.android.tools.r8.internal.InterfaceC9975vm;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.WR;
import com.android.tools.r8.ir.desugar.desugaredlibrary.lint.m;
import com.android.tools.r8.utils.C11662i;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class o {

    public static final boolean f54698j = true;

    public final QC f54699a;

    public final QC f54700b;

    public final C8570nJ f54701c;

    public final C4462g3 f54702d;

    public final C2 f54703e;

    public final C10695k f54704f;

    public final boolean f54705g;

    public final boolean f54706h;

    public final boolean f54707i;

    public o(C8570nJ c8570nJ, Collection<ClassFileResourceProvider> collection, boolean z10) throws IOException {
        this(c8570nJ, collection, z10, C2.B, false, false);
    }

    public static void a(C4554l1 c4554l1) {
    }

    public m b(Collection<ProgramResourceProvider> collection, InterfaceC11677v0 interfaceC11677v0) throws IOException {
        a(collection, interfaceC11677v0);
        b();
        for (A2 a22 : c()) {
            C10695k c10695k = this.f54704f;
            m.c cVar = m.c.f54680j;
            if (((n) c10695k.f54662a.get(a22.s0())) != null) {
                c10695k.a(a22, cVar);
            }
        }
        a(interfaceC11677v0);
        a();
        return this.f54704f.a();
    }

    public final Set c() {
        Set c10 = AbstractC5513Ll0.c();
        C4724u1 m10 = this.f54701c.m();
        c10.add(m10.a(m10.f37990Y2, m10.a(m10.c(m10.b("Ljava/util/stream/Stream;")), new M2[0]), m10.b("parallelStream")));
        M2 c11 = m10.c(m10.b("Ljava/util/stream/BaseStream;"));
        String[] strArr = {"Base", "Double", SerializableShaderEntry.f81155i, "Long"};
        for (int i10 = 0; i10 < 4; i10++) {
            M2 c12 = m10.c(m10.b("Ljava/util/stream/" + strArr[i10] + "Stream;"));
            c10.add(m10.a(c12, m10.a(c12, new M2[0]), m10.b("parallel")));
            c10.add(m10.a(c12, m10.a(c11, new M2[0]), m10.b("parallel")));
        }
        return c10;
    }

    public o(C8570nJ c8570nJ, Collection collection, boolean z10, C2 c22, boolean z11, boolean z12) {
        this.f54704f = new C10695k();
        this.f54707i = z10;
        this.f54701c = c8570nJ;
        C11662i.a b10 = C11662i.b();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            b10.b((ClassFileResourceProvider) it.next());
        }
        C4303c c4303c = new C4303c(b10.a(), this.f54701c, C8659ns0.c());
        ExecutorService a10 = C5467Kr0.a(this.f54701c);
        if (!f54698j && this.f54701c.f50704n0) {
            throw new AssertionError();
        }
        this.f54701c.f50704n0 = true;
        C4765w4 a11 = c4303c.a(a10);
        C8570nJ c8570nJ2 = this.f54701c;
        c8570nJ2.f50704n0 = false;
        if (a11.g(c8570nJ2.m().d("Ljava/lang/invoke/VarHandle;")) == null && !this.f54707i) {
            this.f54701c.f50691j.c("SupportedClassesGenerator expects library above or equal to T, it works below, but the modifiers are not correct which is fine for lint but not html doc generation.");
        }
        this.f54702d = a11.i();
        this.f54703e = c22;
        this.f54705g = z11;
        this.f54706h = z12;
        C4724u1 m10 = c8570nJ.m();
        this.f54699a = QC.a(3, 3, m10.f38156t2, m10.f38164u2, m10.f38132q2);
        M2 m22 = m10.f38069i3;
        A2 a12 = m10.a(m22, m10.a(m22, m10.f38068i2), "ofNullable");
        M2 m23 = m10.f38036e2;
        this.f54700b = QC.a(2, 2, a12, m10.a(m23, m10.a(m10.f37884J1, m23, m23), "compare"));
    }

    public final void a() {
        this.f54704f.a(new InterfaceC7328ft0() {
            @Override
            public final void a(Object obj, Object obj2, Object obj3) {
                o.this.a((E0) obj, (Collection) obj2, (Collection) obj3);
            }
        });
    }

    public final void a(E0 e02, Collection collection, Collection collection2) {
        C10695k c10695k = this.f54704f;
        n nVar = (n) c10695k.f54662a.get(e02.f36245e);
        boolean z10 = C10695k.f54661d;
        if (!z10 && nVar == null) {
            throw new AssertionError();
        }
        l lVar = nVar.f54693b;
        if (lVar == null || !lVar.f54666a) {
            E0 g10 = this.f54702d.g(e02.f36245e);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            boolean a10 = a(g10.I0(), collection, arrayList) & a(g10.z1(), collection2, arrayList2);
            n nVar2 = (n) this.f54704f.f54662a.get(e02.getType());
            if (!z10 && nVar2 == null) {
                throw new AssertionError();
            }
            boolean isEmpty = a10 & nVar2.f54697f.isEmpty();
            n nVar3 = (n) this.f54704f.f54662a.get(e02.getType());
            if (!z10 && nVar3 == null) {
                throw new AssertionError();
            }
            Iterator it = nVar3.f54696e.values().iterator();
            while (it.hasNext()) {
                isEmpty &= ((m.c) it.next()).f54684g;
            }
            this.f54704f.a(e02.f36245e, new l(isEmpty, arrayList, arrayList2));
        }
    }

    public final void b() {
        this.f54704f.b(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                o.this.a((E0) obj, (C4516j1) obj2);
            }
        });
    }

    public static boolean a(Iterable iterable, Collection collection, ArrayList arrayList) {
        Iterator it = iterable.iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            final AbstractC4479h1 abstractC4479h1 = (AbstractC4479h1) it.next();
            if (abstractC4479h1.getAccessFlags().l() || abstractC4479h1.getAccessFlags().k()) {
                if (collection.stream().noneMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return o.a(AbstractC4479h1.this, (AbstractC4479h1) obj);
                    }
                })) {
                    arrayList.add(abstractC4479h1.getReference());
                    z10 = false;
                }
            }
        }
        return z10;
    }

    public static boolean a(AbstractC4479h1 abstractC4479h1, AbstractC4479h1 abstractC4479h12) {
        return abstractC4479h12.getReference() == abstractC4479h1.getReference();
    }

    public final void a(InterfaceC11677v0 interfaceC11677v0) {
        C10261xU a10;
        if (this.f54704f.f54662a.isEmpty()) {
            return;
        }
        for (int d10 = C2.J.d(); d10 <= AbstractC10685a.f54638g.d(); d10++) {
            C2 a11 = C2.a(d10);
            if (interfaceC11677v0 == null) {
                C2 c22 = C2.B;
                int i10 = AbstractC7552hC.f48487c;
                EU eu = new EU(c22, "unused", null, null, false, C6190Xe0.f45779e);
                boolean z10 = CU.f39231s;
                a10 = new C10094wU(eu, new BU().a());
            } else {
                C8570nJ c8570nJ = this.f54701c;
                a10 = C10142wm.a(interfaceC11677v0, c8570nJ.f50660a, c8570nJ.f50691j, false, a11.d()).a(this.f54702d, C8659ns0.c());
            }
            final C10261xU c10261xU = a10;
            this.f54701c.d(a11);
            WR x10 = this.f54701c.x();
            x10.f45400e = null;
            C2 c23 = C2.B;
            int i11 = AbstractC7552hC.f48487c;
            EU eu2 = new EU(c23, "unused", null, null, false, C6190Xe0.f45779e);
            boolean z11 = CU.f39231s;
            x10.f45396a = new C10094wU(eu2, new BU().a());
            x10.f45398c = null;
            this.f54701c.x().a((InterfaceC9975vm) c10261xU);
            final C4798y a12 = C4798y.a(C4477h.a(this.f54702d, com.android.tools.r8.synthesis.E.d()), C8659ns0.c());
            final C4514j g10 = a12.g();
            final ArrayList arrayList = new ArrayList();
            C8317lp1 c8317lp1 = new C8317lp1(arrayList);
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    o.a((C4554l1) obj);
                }
            };
            if (!this.f54705g) {
                H5.a(this.f54702d, this.f54701c, c8317lp1, consumer);
            }
            final int i12 = d10;
            this.f54704f.b(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    o.this.a(c10261xU, arrayList, g10, a12, i12, (E0) obj, (C4516j1) obj2);
                }
            });
            final int i13 = d10;
            this.f54704f.a(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    o.this.a(c10261xU, g10, a12, i13, (E0) obj, (C4460g1) obj2);
                }
            });
        }
    }

    public final void a(C10261xU c10261xU, List list, C4514j c4514j, C4798y c4798y, int i10, E0 e02, C4516j1 c4516j1) {
        A2 reference = c4516j1.getReference();
        if (!c10261xU.b(reference) && !list.contains(reference) && !c10261xU.f53766c.d().containsKey(reference)) {
            if (c10261xU.f53766c.g().containsKey(reference.s0()) && c4516j1.w0()) {
                return;
            }
            Z4 a10 = c4514j.a(reference, c4514j.a(reference.s0()).isInterface());
            A2 reference2 = a10.w() ? a10.q().getReference() : reference;
            com.android.tools.r8.androidapi.a aVar = c4798y.f38404S;
            int i11 = com.android.tools.r8.androidapi.f.f35602a;
            com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
            com.android.tools.r8.androidapi.f a11 = aVar.a((AbstractC4744v2) reference2);
            if (!a11.q()) {
                if (!a10.w()) {
                    this.f54704f.a(reference, new m.c(false, false, false, true, i10, i10));
                    return;
                }
                throw new RuntimeException("API database does not recognize the method " + c4516j1.getReference().j0());
            }
            if (i10 < a11.F().a().d()) {
                this.f54704f.a(reference, new m.c(false, false, false, true, i10, i10));
                return;
            }
            return;
        }
        if (c10261xU.f53766c.d().containsKey(reference)) {
            this.f54704f.a(reference, m.c.f54678h);
        }
    }

    public final void a(C10261xU c10261xU, C4514j c4514j, C4798y c4798y, int i10, E0 e02, C4460g1 c4460g1) {
        if (c10261xU.a(c4460g1.B0()) || c10261xU.f53766c.o().containsKey(c4460g1.getReference())) {
            return;
        }
        D3 c10 = c4514j.c(c4460g1.getReference());
        if (c10.y()) {
            C4460g1 q10 = c10.q();
            com.android.tools.r8.androidapi.a aVar = c4798y.f38404S;
            C4554l1 reference = q10.getReference();
            int i11 = com.android.tools.r8.androidapi.f.f35602a;
            com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
            com.android.tools.r8.androidapi.f a10 = aVar.a((AbstractC4744v2) reference);
            if (a10.q()) {
                if (i10 < a10.F().a().d()) {
                    C10695k c10695k = this.f54704f;
                    C4554l1 reference2 = c4460g1.getReference();
                    m.a aVar2 = new m.a(i10, i10, true);
                    n nVar = (n) c10695k.f54662a.get(reference2.s0());
                    if (!C10695k.f54661d && nVar == null) {
                        throw new AssertionError();
                    }
                    nVar.a(reference2, aVar2);
                    return;
                }
                return;
            }
            throw new RuntimeException("API database does not recognize the field " + c4460g1.getReference().j0());
        }
        if (!f54698j && !c10.h()) {
            throw new AssertionError();
        }
        C10695k c10695k2 = this.f54704f;
        C4554l1 reference3 = c4460g1.getReference();
        m.a aVar3 = new m.a(i10, i10, true);
        n nVar2 = (n) c10695k2.f54662a.get(reference3.s0());
        if (!C10695k.f54661d && nVar2 == null) {
            throw new AssertionError();
        }
        nVar2.a(reference3, aVar3);
    }

    public final void a(E0 e02, C4516j1 c4516j1) {
        E0 g10 = this.f54702d.g(e02.f36245e);
        if (!f54698j && g10 == null) {
            throw new AssertionError();
        }
        if (g10.b(c4516j1.getReference()) == null) {
            this.f54704f.a(c4516j1.getReference(), m.c.f54681k);
        }
    }

    public final void a(Collection collection, InterfaceC11677v0 interfaceC11677v0) {
        C10261xU a10;
        C2 c22 = this.f54703e;
        int i10 = 0;
        if (interfaceC11677v0 == null) {
            C2 c23 = C2.B;
            int i11 = AbstractC7552hC.f48487c;
            EU eu = new EU(c23, "unused", null, null, false, C6190Xe0.f45779e);
            boolean z10 = CU.f39231s;
            a10 = new C10094wU(eu, new BU().a());
        } else {
            C8570nJ c8570nJ = this.f54701c;
            a10 = C10142wm.a(interfaceC11677v0, c8570nJ.f50660a, c8570nJ.f50691j, false, c22.d()).a(this.f54702d, C8659ns0.c());
        }
        this.f54701c.d(this.f54703e);
        WR x10 = this.f54701c.x();
        x10.f45400e = null;
        C2 c24 = C2.B;
        int i12 = AbstractC7552hC.f48487c;
        EU eu2 = new EU(c24, "unused", null, null, false, C6190Xe0.f45779e);
        boolean z11 = CU.f39231s;
        x10.f45396a = new C10094wU(eu2, new BU().a());
        x10.f45398c = null;
        this.f54701c.x().a((InterfaceC9975vm) a10);
        C11662i.a b10 = C11662i.b();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            b10.a((ProgramResourceProvider) it.next());
        }
        final C4462g3 i13 = new C4303c(b10.a(), this.f54701c, C8659ns0.c()).a().i();
        final ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        C8317lp1 c8317lp1 = new C8317lp1(arrayList);
        C8484mp1 c8484mp1 = new C8484mp1(arrayList2);
        if (!this.f54705g) {
            H5.a(this.f54702d, this.f54701c, c8317lp1, c8484mp1);
        }
        for (H2 h22 : i13.d()) {
            if (a10.f53766c.g().containsKey(h22.f36245e)) {
                if (!f54698j && !h22.isInterface()) {
                    throw new AssertionError();
                }
                for (C4516j1 c4516j1 : h22.z1()) {
                    if (c4516j1.g1() || c4516j1.w0()) {
                        if (!c4516j1.C0().c("lambda$") && !c4516j1.C0().toString().contains("$deserializeLambda$") && !c4516j1.getReference().j0().equals("void java.util.Collection.forEach(java.util.function.Consumer)")) {
                            this.f54704f.a(h22, c4516j1);
                        }
                    }
                }
                int size = arrayList.size();
                int i14 = 0;
                while (i14 < size) {
                    Object obj = arrayList.get(i14);
                    i14++;
                    A2 a22 = (A2) obj;
                    if (h22.f36245e == a22.s0()) {
                        this.f54704f.a(h22, a(this.f54702d.g(h22.f36245e), a22));
                    }
                }
                this.f54704f.a(h22.f36245e, l.f54665e);
            } else {
                if ((h22.f36246f.l() || h22.f36246f.k()) && a10.a(h22.f36245e) && this.f54702d.g(h22.f36245e) != null) {
                    for (C4516j1 c4516j12 : h22.z1()) {
                        if (!c4516j12.H0()) {
                            c4516j12.L0();
                            if (!c4516j12.f37314g.k()) {
                            }
                        }
                        this.f54704f.a(h22, c4516j12);
                    }
                    for (C4460g1 c4460g1 : h22.I0()) {
                        if (c4460g1.H0() || c4460g1.f37202g.k()) {
                            this.f54704f.a(h22, c4460g1);
                        }
                    }
                }
                int size2 = arrayList.size();
                int i15 = 0;
                while (i15 < size2) {
                    Object obj2 = arrayList.get(i15);
                    i15++;
                    A2 a23 = (A2) obj2;
                    if (h22.f36245e == a23.s0()) {
                        this.f54704f.a(h22, a(this.f54702d.g(h22.f36245e), a23));
                    }
                }
            }
        }
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj3) {
                o.this.a(i13, arrayList, (A2) obj3);
            }
        };
        CU cu = a10.f53766c;
        cu.f39237f.o().forEach(consumer);
        cu.f39238g.o().forEach(consumer);
        cu.f39239h.o().forEach(consumer);
        a10.f53766c.o().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj3, Object obj4) {
                o.this.a(i13, (C4554l1) obj3, (C4554l1) obj4);
            }
        });
        if (this.f54706h) {
            ArrayList arrayList3 = new ArrayList();
            int size3 = arrayList.size();
            int i16 = 0;
            while (i16 < size3) {
                Object obj3 = arrayList.get(i16);
                i16++;
                A2 a24 = (A2) obj3;
                if (i13.g(a24.s0()) == null) {
                    arrayList3.add(a24);
                }
            }
            arrayList3.sort(Comparator.naturalOrder());
            this.f54704f.f54663b = arrayList3;
            ArrayList arrayList4 = new ArrayList();
            int size4 = arrayList2.size();
            while (i10 < size4) {
                Object obj4 = arrayList2.get(i10);
                i10++;
                C4554l1 c4554l1 = (C4554l1) obj4;
                if (i13.g(c4554l1.s0()) == null) {
                    arrayList4.add(c4554l1);
                }
            }
            arrayList4.sort(Comparator.naturalOrder());
            this.f54704f.f54664c = arrayList4;
        }
    }

    public final void a(C4462g3 c4462g3, C4554l1 c4554l1, C4554l1 c4554l12) {
        C4460g1 a10;
        E0 g10 = c4462g3.g(c4554l1.s0());
        if (g10 != null && (a10 = g10.f36251k.f37700b.a(c4554l1)) != null) {
            this.f54704f.a(g10, a10);
            this.f54704f.a(g10.f36245e, l.f54665e);
            return;
        }
        E0 g11 = this.f54702d.g(c4554l1.s0());
        C4460g1 a11 = g11.f36251k.f37700b.a(c4554l1);
        if (!f54698j && a11 == null) {
            throw new AssertionError();
        }
        this.f54704f.a(g11, a11);
        this.f54704f.a(g11.f36245e, l.f54665e);
    }

    public final void a(C4462g3 c4462g3, List list, A2 a22) {
        C4516j1 b10;
        E0 g10 = c4462g3.g(a22.s0());
        if (g10 != null && (b10 = g10.b(a22)) != null) {
            this.f54704f.a(g10, b10);
            this.f54704f.a(g10.f36245e, l.f54665e);
            return;
        }
        E0 g11 = this.f54702d.g(a22.s0());
        C4516j1 a10 = a(g11, a22);
        if (a10 != null) {
            this.f54704f.a(g11, a10);
            this.f54704f.a(g11.getType(), l.f54665e);
            list.remove(a22);
        }
    }

    public final C4516j1 a(E0 e02, A2 a22) {
        if (e02 != null) {
            C4516j1 b10 = e02.b(a22);
            if (b10 == null) {
                if (!this.f54707i && !this.f54700b.contains(a22) && !this.f54699a.contains(a22.s0())) {
                    this.f54701c.f50691j.a("Backport missing from library: " + ((Object) a22));
                }
                b10 = C4516j1.K0().a(a22).a(L4.b(9, false)).a();
            }
            if (f54698j || b10 != null) {
                return b10;
            }
            throw new AssertionError();
        }
        throw new Error("Missing class from Android " + ((Object) AbstractC10685a.f54638g) + ": " + ((Object) a22.s0()));
    }
}
