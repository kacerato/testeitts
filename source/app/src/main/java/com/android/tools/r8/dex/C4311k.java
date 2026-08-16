package com.android.tools.r8.dex;

import com.android.tools.r8.ByteBufferProvider;
import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.C10902n;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DataResourceConsumer;
import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.DexFilePerClassFileConsumer;
import com.android.tools.r8.DexIndexedConsumer;
import com.android.tools.r8.F1;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.GlobalSyntheticsConsumer;
import com.android.tools.r8.ProgramConsumer;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.SourceFileEnvironment;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.dex.C4310j;
import com.android.tools.r8.dex.C4311k;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.A5;
import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4615o5;
import com.android.tools.r8.graph.C4634p5;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.P5;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.graph.V3;
import com.android.tools.r8.graph.W2;
import com.android.tools.r8.graph.Z2;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC4885Aq0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC7737iJ;
import com.android.tools.r8.internal.AbstractC7755iS;
import com.android.tools.r8.internal.AbstractC8181l;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.AbstractC8713oA;
import com.android.tools.r8.internal.AbstractC8880pA;
import com.android.tools.r8.internal.AbstractC9109qb0;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C4856Ad0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5216Gi;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C5658Oa0;
import com.android.tools.r8.internal.C5679Oi;
import com.android.tools.r8.internal.C5763Pv;
import com.android.tools.r8.internal.C5821Qv;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.C7236fJ;
import com.android.tools.r8.internal.C7403gJ;
import com.android.tools.r8.internal.C7429gW;
import com.android.tools.r8.internal.C7596hW;
import com.android.tools.r8.internal.C8325ls0;
import com.android.tools.r8.internal.C8480mo0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8798oj;
import com.android.tools.r8.internal.C8942pb0;
import com.android.tools.r8.internal.InterfaceC6217Xr0;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.internal.J40;
import com.android.tools.r8.internal.J6;
import com.android.tools.r8.internal.K40;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.internal.U60;
import com.android.tools.r8.internal.U7;
import com.android.tools.r8.internal.X3;
import com.android.tools.r8.internal.X60;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.naming.I0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.shaking.C11349o2;
import com.android.tools.r8.utils.C11662i;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import mg.C14254o;
import u.C15556y0;
import u.K0;
import u.M0;
import u.O0;
import u.P0;

public class C4311k {

    public static final boolean f35875k = true;

    public final C4798y f35876a;

    public final C8570nJ f35877b;

    public final r f35878c;

    public final Predicate f35879d;

    public final Optional f35880e;

    public final Collection f35881f;

    public List f35882g;

    public HashSet f35883h;

    public final C10902n f35884i;

    public AbstractC7737iJ f35885j;

    public C4311k(C4798y c4798y, W w10, C10902n c10902n) {
        r c4316p;
        this.f35876a = c4798y;
        this.f35877b = c4798y.E();
        C8570nJ E10 = c4798y.E();
        if ((!c4798y.s().b() && E10.x().a().i().isEmpty() && E10.x().a().f53766c.f39242k.isEmpty()) || E10.x().f45396a.f53764a) {
            c4316p = new C4317q();
        } else {
            E10.F().getClass();
            c4316p = new C4316p(c4798y);
        }
        this.f35878c = c4316p;
        this.f35880e = Optional.ofNullable(w10);
        this.f35884i = c10902n;
        C4477h f10 = c4798y.f();
        Objects.requireNonNull(f10);
        this.f35879d = X60.a(new O0(f10));
        this.f35881f = c4798y.b().d();
    }

    public static C4311k a(C4798y<?> c4798y, W w10) {
        if (c4798y.E().f50599F1.f50892m) {
            return new C4312l(c4798y, w10, null);
        }
        return new C4311k(c4798y, w10, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8659ns0 b(List list, t0 t0Var) {
        ByteBufferProvider byteBufferProvider;
        Object obj;
        ByteBufferProvider byteBufferProvider2;
        C8659ns0 a10 = C8659ns0.a(this.f35877b, "VirtualFile " + t0Var.b());
        if (!t0Var.f35956b.f35937c.isEmpty()) {
            a(t0Var);
            HashSet hashSet = this.f35883h;
            if (hashSet != null && hashSet.contains(t0Var)) {
                byteBufferProvider2 = this.f35885j;
            } else {
                C10902n c10902n = this.f35884i;
                byteBufferProvider2 = c10902n;
                if (c10902n == null) {
                    L2 l22 = t0Var.f35960f;
                    if ((l22 == null ? null : l22.toString()) != null) {
                        byteBufferProvider2 = (DexFilePerClassFileConsumer) this.f35877b.f50697l;
                    } else {
                        FeatureSplit featureSplit = t0Var.f35958d;
                        if (featureSplit != null) {
                            Object programConsumer = featureSplit.getProgramConsumer();
                            if (!f35875k && !(programConsumer instanceof DexIndexedConsumer)) {
                                throw new AssertionError();
                            }
                            byteBufferProvider = (DexIndexedConsumer) programConsumer;
                            obj = programConsumer;
                            a10.b("Reindex for lazy strings");
                            C4766w5 c10 = t0Var.c();
                            c10.a(list);
                            a10.d();
                            a10.b("Write bytes");
                            F a11 = a(c10, byteBufferProvider, t0Var, a10);
                            ByteDataView byteDataView = new ByteDataView(a11.f35688a.a().array(), a11.f35688a.a().arrayOffset(), a11.f35689b);
                            a10.d();
                            a10.b("Pass bytes to consumer");
                            if (!(obj instanceof DexFilePerClassFileConsumer)) {
                                DexFilePerClassFileConsumer dexFilePerClassFileConsumer = (DexFilePerClassFileConsumer) obj;
                                L2 l23 = t0Var.f35960f;
                                String l24 = l23 != null ? l23.toString() : null;
                                HashSet hashSet2 = new HashSet();
                                Iterator it = t0Var.f35956b.f35937c.iterator();
                                while (it.hasNext()) {
                                    boolean add = hashSet2.add(((H2) it.next()).f36245e.f36592f.toString());
                                    if (!t0.f35954k && !add) {
                                        throw new AssertionError();
                                    }
                                }
                                dexFilePerClassFileConsumer.accept(l24, byteDataView, hashSet2, this.f35877b.f50691j);
                            } else {
                                DexIndexedConsumer dexIndexedConsumer = (DexIndexedConsumer) obj;
                                int b10 = t0Var.b();
                                HashSet hashSet3 = new HashSet();
                                Iterator it2 = t0Var.f35956b.f35937c.iterator();
                                while (it2.hasNext()) {
                                    boolean add2 = hashSet3.add(((H2) it2.next()).f36245e.f36592f.toString());
                                    if (!t0.f35954k && !add2) {
                                        throw new AssertionError();
                                    }
                                }
                                dexIndexedConsumer.accept(b10, byteDataView, hashSet3, this.f35877b.f50691j);
                            }
                            if (this.f35877b.f50712q != null) {
                                int i10 = AbstractC8880pA.f51464a;
                                C7596hW c7596hW = AbstractC8713oA.f51183a;
                                byte[] buffer = byteDataView.getBuffer();
                                int offset = byteDataView.getOffset();
                                int length = byteDataView.getLength() + byteDataView.getOffset();
                                c7596hW.getClass();
                                U60.a(offset, offset + length, buffer.length);
                                if (length >= 0) {
                                    t0Var.f35963i = ((C7429gW) ((AbstractC8181l) c7596hW.a()).a(buffer, offset, length)).a();
                                } else {
                                    throw new IllegalArgumentException(AbstractC4885Aq0.a("expectedInputSize must be >= 0 but was %s", Integer.valueOf(length)));
                                }
                            }
                            a10.d();
                            byteDataView.invalidate();
                            byteBufferProvider.releaseByteBuffer(a11.f35688a.a());
                        } else {
                            byteBufferProvider2 = (DexIndexedConsumer) this.f35877b.f50697l;
                        }
                    }
                }
            }
            byteBufferProvider = byteBufferProvider2;
            obj = byteBufferProvider2;
            a10.b("Reindex for lazy strings");
            C4766w5 c102 = t0Var.c();
            c102.a(list);
            a10.d();
            a10.b("Write bytes");
            F a112 = a(c102, byteBufferProvider, t0Var, a10);
            ByteDataView byteDataView2 = new ByteDataView(a112.f35688a.a().array(), a112.f35688a.a().arrayOffset(), a112.f35689b);
            a10.d();
            a10.b("Pass bytes to consumer");
            if (!(obj instanceof DexFilePerClassFileConsumer)) {
            }
            if (this.f35877b.f50712q != null) {
            }
            a10.d();
            byteDataView2.invalidate();
            byteBufferProvider.releaseByteBuffer(a112.f35688a.a());
        }
        a10.d();
        return a10;
    }

    public void c(ExecutorService executorService) throws IOException, ExecutionException {
        if (!f35875k && this.f35877b.J()) {
            throw new AssertionError();
        }
        a((C11662i) null, executorService);
    }

    public static F a(L l10) {
        G a10 = l10.a(0, 1);
        C4324y c4324y = a10.f35691b;
        C4318s c4318s = c4324y.f35978b;
        c4324y.f35978b = null;
        return new F(c4318s, a10.f35692c.f35716w);
    }

    public final C8659ns0 a(List list, t0 t0Var) {
        C8659ns0 a10 = C8659ns0.a(this.f35877b, "VirtualFile " + t0Var.b());
        if (!t0Var.f35956b.f35937c.isEmpty()) {
            a10.b("Compute object offset mapping");
            t0Var.a(this.f35876a, list.size(), a10, (C4766w5) null);
            a10.d();
            a10.b("Rewrite jumbo strings");
            a(t0Var.c(), t0Var.f35956b.f35937c);
            a10.d();
        }
        C8798oj.a(this.f35876a, t0Var);
        a10.d();
        return a10;
    }

    public static void a(L2 l22, H2 h22) {
        h22.f36249i = l22;
    }

    public final List a(ExecutorService executorService) {
        Collection<H2> collection;
        AbstractC9148qo0 b10;
        i0 l0Var;
        AbstractC7737iJ c7236fJ;
        Collection<H2> d10 = this.f35876a.f().d();
        ArrayList arrayList = new ArrayList();
        if (!this.f35876a.E().f50595E0 || this.f35876a.E().f50703n == null) {
            collection = d10;
        } else {
            ArrayList arrayList2 = new ArrayList(d10.size());
            for (H2 h22 : d10) {
                if (this.f35876a.f38408a.g().a(h22)) {
                    Consumer<H2> consumer = this.f35876a.E().f50599F1.f50820H;
                    if (consumer != null) {
                        consumer.accept(h22);
                    }
                    arrayList.add(h22);
                } else {
                    arrayList2.add(h22);
                }
            }
            collection = arrayList2;
        }
        C8570nJ c8570nJ = this.f35877b;
        ProgramConsumer programConsumer = c8570nJ.f50697l;
        if (programConsumer instanceof DexFilePerClassFileConsumer) {
            l0Var = new k0(this, collection, ((DexFilePerClassFileConsumer) programConsumer).combineSyntheticClassesWithPrimaryClass());
        } else {
            if (!C8570nJ.f50581h2 && !c8570nJ.P()) {
                throw new AssertionError();
            }
            if (!c8570nJ.f50595E0) {
                if (!c8570nJ.z().d(C2.L) && this.f35877b.f50602G1.isEmpty()) {
                    C11349o2 f10 = this.f35876a.f().f();
                    if (!C11349o2.f57580g && f10.f57582b.isEmpty() && !f10.f57584d.isEmpty()) {
                        throw new AssertionError();
                    }
                    if (f10.f57582b.isEmpty() && f10.f57581a.isEmpty() && this.f35877b.f50643U0) {
                        l0Var = new o0(this, collection, this.f35877b);
                    }
                }
            }
            if (this.f35877b.E().f51622e) {
                b10 = this.f35876a.f38424q;
            } else {
                b10 = AbstractC9148qo0.b();
            }
            l0Var = new l0(this, collection, this.f35877b, executorService, b10);
        }
        ArrayList a10 = l0Var.a();
        if (!arrayList.isEmpty()) {
            HashSet hashSet = new HashSet(new k0(this, arrayList, false).a());
            this.f35883h = hashSet;
            a10.addAll(hashSet);
            C8570nJ c8570nJ2 = this.f35877b;
            if (c8570nJ2.f50697l instanceof DexFilePerClassFileConsumer) {
                c7236fJ = new C7403gJ(c8570nJ2.f50703n, this.f35876a);
            } else {
                c7236fJ = new C7236fJ(c8570nJ2.f50703n);
            }
            this.f35885j = c7236fJ;
        }
        while (a10.size() > 0 && ((t0) J6.a(a10, 1)).f35956b.f35937c.isEmpty()) {
            a10.remove(a10.size() - 1);
        }
        return a10;
    }

    public final void b() {
        Iterator<H2> it;
        String v32;
        Iterator<H2> it2 = this.f35876a.f().d().iterator();
        while (it2.hasNext()) {
            H2 next = it2.next();
            C4500i3 O02 = next.O0();
            List<C4425e4> Q02 = next.Q0();
            if (O02 == null && Q02.isEmpty() && next.N0().a() && !next.q1() && !next.x1()) {
                it = it2;
            } else {
                ArrayList arrayList = new ArrayList(Q02.size() + 2);
                if (O02 != null) {
                    if (O02.a() != null) {
                        A2 a10 = O02.a();
                        C4724u1 c4724u1 = this.f35877b.f50660a;
                        C4666r0[] c4666r0Arr = C4666r0.f37690d;
                        arrayList.add(C4666r0.a(c4724u1.f38207z5, c4724u1, new W2(a10)));
                    } else {
                        M2 m22 = O02.f37289a;
                        C4724u1 c4724u12 = this.f35877b.f50660a;
                        C4666r0[] c4666r0Arr2 = C4666r0.f37690d;
                        arrayList.add(C4666r0.a(c4724u12.f38199y5, c4724u12, new R2.l(m22)));
                    }
                }
                if (!Q02.isEmpty()) {
                    ArrayList arrayList2 = new ArrayList(Q02.size());
                    for (C4425e4 c4425e4 : Q02) {
                        if (next.f36245e == c4425e4.b()) {
                            if (O02 == null && (c4425e4.d() == null || c4425e4.f37149d == null)) {
                                this.f35877b.a(next.f36245e, next.f36244d, next.G1());
                            } else {
                                L2 a11 = this.f35876a.s().a(c4425e4, this.f35877b);
                                int a12 = c4425e4.a();
                                C4724u1 c4724u13 = this.f35877b.f50660a;
                                arrayList.add(new C4666r0(2, new C4422e1(c4724u13.f37821A5, new C4704t0[]{new C4704t0(c4724u13.b("accessFlags"), R2.h.j(a12)), new C4704t0(c4724u13.b("name"), a11 == null ? Z2.f37013d : new R2.k(a11))})));
                                if (c4425e4.d() != null && c4425e4.e()) {
                                    M2 d10 = c4425e4.d();
                                    C4724u1 c4724u14 = this.f35877b.f50660a;
                                    arrayList.add(C4666r0.a(c4724u14.f38199y5, c4724u14, new R2.l(d10)));
                                }
                            }
                        } else if (next.f36245e == c4425e4.d() && c4425e4.e()) {
                            arrayList2.add(c4425e4.b());
                        }
                    }
                    if (!arrayList2.isEmpty()) {
                        C4724u1 c4724u15 = this.f35877b.f50660a;
                        C4666r0[] c4666r0Arr3 = C4666r0.f37690d;
                        R2[] r2Arr = new R2[arrayList2.size()];
                        for (int i10 = 0; i10 < arrayList2.size(); i10++) {
                            r2Arr[i10] = new R2.l((M2) arrayList2.get(i10));
                        }
                        arrayList.add(C4666r0.a(c4724u15.f37829B5, c4724u15, new R2.b(r2Arr)));
                    }
                }
                if (next.N0().b()) {
                    H3.b N02 = next.N0();
                    AbstractC10992r0 s10 = this.f35876a.s();
                    Predicate predicate = this.f35879d;
                    if (N02.a()) {
                        v32 = null;
                    } else {
                        V3 v33 = new V3(s10, predicate);
                        v33.a(N02);
                        v32 = v33.toString();
                    }
                    arrayList.add(C4666r0.a(v32, this.f35877b.f50660a));
                }
                if (this.f35877b.i()) {
                    if (next.t1()) {
                        List<C4634p5> V02 = next.V0();
                        C4724u1 c4724u16 = this.f35877b.f50660a;
                        C4666r0[] c4666r0Arr4 = C4666r0.f37690d;
                        ArrayList arrayList3 = new ArrayList(V02.size());
                        Iterator<C4634p5> it3 = V02.iterator();
                        while (it3.hasNext()) {
                            arrayList3.add(new R2.l(it3.next().a()));
                        }
                        arrayList.add(C4666r0.a(c4724u16.f37860F5, c4724u16, new R2.b((R2[]) arrayList3.toArray(R2.f36737b))));
                    }
                    if (next.u1()) {
                        C4615o5 U02 = next.U0();
                        C4724u1 c4724u17 = this.f35877b.f50660a;
                        C4666r0[] c4666r0Arr5 = C4666r0.f37690d;
                        arrayList.add(C4666r0.a(c4724u17.f37853E5, c4724u17, new R2.l(U02.a())));
                    }
                }
                if (!next.f36257q.isEmpty()) {
                    C8570nJ c8570nJ = this.f35877b;
                    c8570nJ.getClass();
                    if (c8570nJ.c(C2.U) || c8570nJ.f50725u0) {
                        List<A5> W02 = next.W0();
                        C4724u1 c4724u18 = this.f35877b.f50660a;
                        C4666r0[] c4666r0Arr6 = C4666r0.f37690d;
                        ArrayList arrayList4 = new ArrayList(W02.size());
                        Iterator<A5> it4 = W02.iterator();
                        while (it4.hasNext()) {
                            arrayList4.add(new R2.l(it4.next().a()));
                        }
                        arrayList.add(C4666r0.a(c4724u18.f37867G5, c4724u18, new R2.b((R2[]) arrayList4.toArray(R2.f36737b))));
                    }
                }
                if (next.x1() && this.f35877b.f50710p0) {
                    C4798y c4798y = this.f35876a;
                    C4666r0[] c4666r0Arr7 = C4666r0.f37690d;
                    C4724u1 b10 = c4798y.b();
                    int size = next.X0().size();
                    R2.k[] kVarArr = new R2.k[size];
                    R2.l[] lVarArr = new R2.l[size];
                    R2[] r2Arr2 = new R2[size];
                    R2.b[] bVarArr = new R2.b[size];
                    R2.b[] bVarArr2 = new R2.b[size];
                    int i11 = 0;
                    while (i11 < size) {
                        P5 p52 = next.X0().get(i11);
                        Iterator<H2> it5 = it2;
                        kVarArr[i11] = new R2.k(c4798y.s().a(p52.f36704b));
                        lVarArr[i11] = new R2.l(p52.d());
                        if (p52.c().a()) {
                            r2Arr2[i11] = Z2.f37013d;
                        } else {
                            r2Arr2[i11] = new R2.a(C4666r0.a(p52.c().toString(), b10).f37693c);
                        }
                        int size2 = p52.a().size();
                        R2.d[] dVarArr = new R2.d[size2];
                        R2.a[] aVarArr = new R2.a[size2];
                        C4798y c4798y2 = c4798y;
                        bVarArr[i11] = new R2.b(dVarArr);
                        bVarArr2[i11] = new R2.b(aVarArr);
                        int i12 = 0;
                        while (i12 < size2) {
                            int i13 = size2;
                            C4666r0 c4666r0 = p52.a().get(i12);
                            dVarArr[i12] = R2.d.a((byte) c4666r0.m0());
                            aVarArr[i12] = new R2.a(c4666r0.f37693c);
                            i12++;
                            size2 = i13;
                            size = size;
                        }
                        i11++;
                        it2 = it5;
                        c4798y = c4798y2;
                    }
                    it = it2;
                    arrayList.add(new C4666r0(2, new C4422e1(b10.f37874H5, new C4704t0[]{new C4704t0(b10.f37881I5, new R2.b(kVarArr)), new C4704t0(b10.f37888J5, new R2.b(lVarArr)), new C4704t0(b10.f37895K5, new R2.b(r2Arr2)), new C4704t0(b10.f37902L5, new R2.b(bVarArr)), new C4704t0(b10.f37909M5, new R2.b(bVarArr2))})));
                } else {
                    it = it2;
                }
                if (!arrayList.isEmpty()) {
                    C4666r0[] c4666r0Arr8 = next.k0().f37806d;
                    C4666r0[] c4666r0Arr9 = (C4666r0[]) arrayList.toArray(C4666r0.f37690d);
                    Object[] objArr = (Object[]) Array.newInstance((Class<?>) C4666r0.class, c4666r0Arr8.length + c4666r0Arr9.length);
                    System.arraycopy(c4666r0Arr8, 0, objArr, 0, c4666r0Arr8.length);
                    System.arraycopy(c4666r0Arr9, 0, objArr, c4666r0Arr8.length, c4666r0Arr9.length);
                    C4666r0[] c4666r0Arr10 = (C4666r0[]) objArr;
                    next.f37066b = X3.a(c4666r0Arr10) ? C4723u0.l0() : new C4723u0(c4666r0Arr10);
                }
                next.f36253m = null;
                next.f36254n.clear();
                next.D0();
                next.f36257q.clear();
                next.f36258r.clear();
            }
            next.I0().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C4311k.this.a((C4460g1) obj);
                }
            });
            next.z1().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C4311k.this.a((C4516j1) obj);
                }
            });
            it2 = it;
        }
    }

    public static L2 a(C4724u1 c4724u1, W w10) {
        return c4724u1.b(w10.toString());
    }

    public final void a(List list) {
        Collection<H2> d10 = this.f35876a.f().d();
        C4856Ad0 c4856Ad0 = new C4856Ad0(d10.size());
        for (H2 h22 : d10) {
            c4856Ad0.a(this.f35876a.s().c(h22.getType()), h22.F1());
        }
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            t0 t0Var = (t0) it.next();
            C4314n c4314n = new C4314n();
            Iterator<E> it2 = t0Var.f35956b.f35937c.iterator();
            while (it2.hasNext()) {
                L2 c10 = this.f35876a.s().c(((H2) it2.next()).f36245e);
                c4314n.f35896a.a(c10.toString(), c4856Ad0.b(c10));
            }
            t0Var.f35957c.a(this.f35876a.b().b(c4314n.a()));
            t0Var.f35957c.a();
        }
    }

    public final void a(List list, C7 c72, C4724u1 c4724u1, List list2, W w10) {
        if (this.f35877b.J()) {
            list.add(new C4304d(w10, c72, c4724u1));
        } else {
            list2.add(w10);
        }
    }

    public ArrayList a(ExecutorService executorService, List list, final ArrayList arrayList) {
        return C5467Kr0.a(list, new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj) {
                return C4311k.this.a(arrayList, (com.android.tools.r8.dex.t0) obj);
            }
        }, this.f35876a.E().G(), executorService);
    }

    public void a(ExecutorService executorService, List list, final ArrayList arrayList, C8659ns0 c8659ns0) {
        C8325ls0 a10 = c8659ns0.a(C5467Kr0.a(executorService), "Write files");
        a10.a(C5467Kr0.a(list, new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj) {
                return C4311k.this.b(arrayList, (com.android.tools.r8.dex.t0) obj);
            }
        }, this.f35876a.E().G(), executorService));
        a10.a();
        AbstractC7737iJ abstractC7737iJ = this.f35885j;
        if (abstractC7737iJ != null) {
            abstractC7737iJ.a(this.f35876a);
            return;
        }
        GlobalSyntheticsConsumer globalSyntheticsConsumer = this.f35877b.f50703n;
        if (globalSyntheticsConsumer != null) {
            globalSyntheticsConsumer.finished(this.f35876a.E().f50691j);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e5, code lost:
    
        r5 = r8.f35876a;
        r6 = new u.V0(r4);
        r7 = java.lang.Boolean.TRUE;
        r5 = r5.f38388C;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f0, code lost:
    
        if (r5 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f2, code lost:
    
        r7 = r6.apply(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00fc, code lost:
    
        if (((java.lang.Boolean) r7).booleanValue() == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0104, code lost:
    
        throw new java.lang.AssertionError();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C11662i c11662i, ExecutorService executorService) {
        K40 j40;
        Collection collection;
        C8659ns0 c8659ns0 = this.f35876a.f().a().f38365c;
        c8659ns0.b("DexApplication.write");
        C7 c72 = new C7();
        ArrayList arrayList = new ArrayList();
        a(c72, arrayList);
        C8570nJ c8570nJ = this.f35877b;
        if (c8570nJ.f50667b2 == null) {
            j40 = K40.f41570b;
        } else if (!c8570nJ.J()) {
            a(this.f35876a.f().d(), (I0) null);
            j40 = K40.f41569a;
        } else {
            Map a10 = a();
            arrayList.add(new C4305e(this, a10, c72));
            j40 = new J40(a10);
        }
        try {
            c8659ns0.b("Insert Attribute Annotations");
            b();
            c8659ns0.d();
            if (this.f35877b.P()) {
                c8659ns0.b("Set call-site contexts");
                b(executorService);
                c8659ns0.d();
            }
            C4798y c4798y = this.f35876a;
            if (c4798y.E().E().f51621d) {
                C8480mo0 c8480mo0 = new C8480mo0(c4798y);
                Set a11 = c8480mo0.a();
                Iterator<H2> it = c4798y.f().d().iterator();
                while (it.hasNext()) {
                    c8480mo0.a(it.next(), a11);
                }
            }
            c8659ns0.b("Distribute");
            final List a12 = a(executorService);
            c8659ns0.d();
            if (this.f35877b.f50639T) {
                c8659ns0.b("Encode checksums");
                a(a12);
                c8659ns0.d();
            }
            boolean z10 = f35875k;
            if (!z10 && (collection = this.f35881f) != null && !collection.isEmpty() && this.f35876a.b().d() == null) {
                throw new AssertionError();
            }
            c8659ns0.b("Sort Annotations");
            final C4310j c4310j = new C4310j(this.f35876a.s());
            this.f35876a.f().d().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((H2) obj).b(C4310j.this);
                }
            });
            c8659ns0.d();
            C8325ls0 a13 = c8659ns0.a(C5467Kr0.a(executorService), "Pre-write phase");
            a13.a(a(executorService, a12, arrayList));
            a13.a();
            if (this.f35877b.J()) {
                c72.a((C7) AbstractC7755iS.a(c11662i, this.f35876a, c8659ns0, j40, C8798oj.a(a12, this.f35877b)));
            }
            c8659ns0.b("Compute lazy strings");
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                AbstractC4309i abstractC4309i = (AbstractC4309i) obj;
                if (!AbstractC4309i.f35864b && abstractC4309i.f35865a) {
                    throw new AssertionError();
                }
                L2 a14 = abstractC4309i.a();
                abstractC4309i.f35865a = true;
                arrayList2.add(a14);
            }
            c8659ns0.d();
            a(executorService, a12, arrayList2, c8659ns0);
            if (this.f35877b.f50647V1 != null && !this.f35878c.a()) {
                if (!f35875k && this.f35877b.x().f45396a.f53764a) {
                    throw new AssertionError();
                }
                this.f35878c.a(this.f35877b);
            }
            this.f35877b.f50691j.a();
            if (this.f35884i == null) {
                a(this.f35876a, a12, executorService);
            }
            c8659ns0.d();
        } catch (Throwable th2) {
            c8659ns0.d();
            throw th2;
        }
    }

    public final void b(ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f35876a, this.f35876a.f().d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4311k.this.a((H2) obj);
            }
        }, executorService);
    }

    public static Boolean a(List list, final C5658Oa0 c5658Oa0) {
        Stream<E> stream = list.stream();
        Objects.requireNonNull(c5658Oa0);
        return Boolean.valueOf(stream.allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5658Oa0.this.a((com.android.tools.r8.dex.t0) obj);
            }
        }));
    }

    public final void a(final C7 c72, final ArrayList arrayList) {
        final ArrayList arrayList2 = new ArrayList();
        Collection collection = this.f35881f;
        if (collection != null) {
            arrayList2.addAll(collection);
        }
        final C4724u1 b10 = this.f35876a.b();
        this.f35880e.ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4311k.this.a(arrayList, c72, b10, arrayList2, (com.android.tools.r8.dex.W) obj);
            }
        });
        arrayList2.sort(Comparator.comparing(new F1()));
        this.f35882g = AT.a((Collection) arrayList2, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4311k.a(C4724u1.this, (com.android.tools.r8.dex.W) obj);
            }
        });
    }

    public final Map a() {
        final Collection<H2> d10 = this.f35876a.f().d();
        AbstractC9109qb0 abstractC9109qb0 = this.f35877b.f50596E1;
        if (abstractC9109qb0 == null) {
            return TU.a(d10, new C15556y0(), Function.identity(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((H2) obj).K0();
                }
            });
        }
        final C8942pb0 b10 = abstractC9109qb0.b();
        return TU.a(d10, new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return C4311k.a(Collection.this, b10, i10);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4311k.a(C8942pb0.this, (H2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((H2) obj).K0();
            }
        });
    }

    public static Map a(Collection collection, C8942pb0 c8942pb0, int i10) {
        int size = collection.size();
        if (C8942pb0.f51565g || c8942pb0.f51568d != null) {
            return new IdentityHashMap(size - c8942pb0.f51568d.values().size());
        }
        throw new AssertionError();
    }

    public static H2 a(C8942pb0 c8942pb0, H2 h22) {
        c8942pb0.getClass();
        if (c8942pb0.a(h22.getReference())) {
            return null;
        }
        return h22;
    }

    public final L2 a(Collection collection, I0 i02) {
        SourceFileEnvironment c4307g;
        if (!f35875k && this.f35877b.f50667b2 == null) {
            throw new AssertionError();
        }
        if (i02 == null) {
            c4307g = new C4306f();
        } else {
            c4307g = new C4307g(i02);
        }
        String str = this.f35877b.f50667b2.get(c4307g);
        final L2 b10 = str == null ? null : this.f35877b.f50660a.b(str);
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4311k.a(L2.this, (H2) obj);
            }
        });
        return b10;
    }

    public static void a(C4798y c4798y, List list, ExecutorService executorService) {
        C8570nJ E10 = c4798y.E();
        final C5094Ef0 c5094Ef0 = E10.f50691j;
        c4798y.f38411d.a(c4798y);
        StringConsumer stringConsumer = E10.f50641T1;
        if (stringConsumer != null) {
            AbstractC8333lv.a(c5094Ef0, stringConsumer, E10.B().f57597a);
            AbstractC8333lv.a(c5094Ef0, E10.f50641T1);
        }
        StringConsumer stringConsumer2 = E10.f50629P1;
        if (stringConsumer2 != null) {
            AbstractC8333lv.a(c5094Ef0, stringConsumer2, a(c4798y));
            AbstractC8333lv.a(c5094Ef0, E10.f50629P1);
        }
        com.android.tools.r8.naming.N n10 = new com.android.tools.r8.naming.N(c4798y);
        final DataResourceConsumer dataResourceConsumer = E10.f50715r;
        f0 f0Var = new f0(c4798y);
        if (dataResourceConsumer != null) {
            AbstractC7552hC abstractC7552hC = c4798y.e().f38363a;
            HashSet hashSet = new HashSet();
            Iterator<E> it = abstractC7552hC.iterator();
            while (it.hasNext()) {
                try {
                    ((DataResourceProvider) it.next()).accept(new C4308h(f0Var, dataResourceConsumer, E10, n10, hashSet));
                } catch (ResourceException e10) {
                    throw new C5325If(e10.getMessage(), e10);
                }
            }
            a(FeatureSplit.BASE, c4798y, c5094Ef0, dataResourceConsumer);
            n10.a().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DataResourceConsumer.this.accept((DataEntryResource) obj, c5094Ef0);
                }
            });
        }
        if (E10.I()) {
            C5821Qv c5821Qv = E10.f50718s;
            c5821Qv.getClass();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = c5821Qv.f43761a;
            int size = arrayList2.size();
            int i10 = 0;
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList2.get(i11);
                i11++;
                FeatureSplit featureSplit = (FeatureSplit) obj;
                DataResourceConsumer dataResourceConsumer2 = featureSplit.getProgramConsumer().getDataResourceConsumer();
                if (dataResourceConsumer2 != null) {
                    HashSet hashSet2 = new HashSet();
                    Iterator<ProgramResourceProvider> it2 = featureSplit.getProgramResourceProviders().iterator();
                    while (it2.hasNext()) {
                        DataResourceProvider dataResourceProvider = it2.next().getDataResourceProvider();
                        if (dataResourceProvider != null) {
                            hashSet2.add(dataResourceProvider);
                        }
                    }
                    if (!hashSet2.isEmpty()) {
                        arrayList.add(new C5763Pv(featureSplit, hashSet2, dataResourceConsumer2));
                    }
                }
            }
            int size2 = arrayList.size();
            while (i10 < size2) {
                int i12 = i10 + 1;
                C5763Pv c5763Pv = (C5763Pv) arrayList.get(i10);
                DataResourceConsumer dataResourceConsumer3 = c5763Pv.f43408c;
                HashSet hashSet3 = c5763Pv.f43407b;
                HashSet hashSet4 = new HashSet();
                Iterator it3 = hashSet3.iterator();
                while (it3.hasNext()) {
                    try {
                        ArrayList arrayList3 = arrayList;
                        com.android.tools.r8.naming.N n11 = n10;
                        ((DataResourceProvider) it3.next()).accept(new C4308h(f0Var, dataResourceConsumer3, E10, n10, hashSet4));
                        arrayList = arrayList3;
                        n10 = n11;
                    } catch (ResourceException e11) {
                        throw new C5325If(e11.getMessage(), e11);
                    }
                }
                a(c5763Pv.f43406a, c4798y, c5094Ef0, c5763Pv.f43408c);
                i10 = i12;
            }
        }
        if (E10.f50709p != null) {
            if (!f35875k && c4798y.f().h()) {
                throw new AssertionError();
            }
            E10.f50709p.accept(new C5216Gi(new C5679Oi(c4798y.N().E())));
        }
        if (E10.f50712q != null) {
            if (!f35875k && !c4798y.f().h()) {
                throw new AssertionError();
            }
            E10.f50712q.accept(U7.a(c4798y.L(), list, executorService));
        }
    }

    public static void a(FeatureSplit featureSplit, C4798y c4798y, C5094Ef0 c5094Ef0, DataResourceConsumer dataResourceConsumer) {
        final AbstractC10992r0 s10 = c4798y.s();
        final TreeMap treeMap = new TreeMap();
        c4798y.f38410c.a(featureSplit, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                treeMap.put(C4932Bl.b(r0.c((M2) obj).toString()), C10656zq0.a((List<String>) ((List) obj2).stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj3) {
                        return AbstractC10992r0.this.c((M2) obj3);
                    }
                }).map(new Z0()).map(new C15498a1()).collect(Collectors.toList())));
            }
        });
        for (Map.Entry entry : treeMap.entrySet()) {
            dataResourceConsumer.accept(DataEntryResource.fromBytes(((String) entry.getValue()).getBytes(StandardCharsets.UTF_8), C14254o.f97090b + ((String) entry.getKey()), Origin.unknown()), c5094Ef0);
        }
    }

    public final void a(C4460g1 c4460g1) {
        String v32;
        if (c4460g1.A0().a()) {
            return;
        }
        C4666r0[] c4666r0Arr = c4460g1.k0().f37806d;
        H3.e A02 = c4460g1.A0();
        AbstractC10992r0 s10 = this.f35876a.s();
        Predicate predicate = this.f35879d;
        if (A02.a()) {
            v32 = null;
        } else {
            V3 v33 = new V3(s10, predicate);
            v33.a((H3.i) A02);
            v32 = v33.toString();
        }
        C4666r0[] c4666r0Arr2 = (C4666r0[]) X3.b(c4666r0Arr, C4666r0.a(v32, this.f35877b.f50660a));
        c4460g1.f37066b = c4666r0Arr2.length == 0 ? C4723u0.l0() : new C4723u0(c4666r0Arr2);
        c4460g1.f37206k = H3.e.p();
    }

    public final void a(C4516j1 c4516j1) {
        String v32;
        if (c4516j1.A0().a()) {
            return;
        }
        C4666r0[] c4666r0Arr = c4516j1.k0().f37806d;
        H3.g A02 = c4516j1.A0();
        AbstractC10992r0 s10 = this.f35876a.s();
        Predicate predicate = this.f35879d;
        if (A02.a()) {
            v32 = null;
        } else {
            V3 v33 = new V3(s10, predicate);
            v33.a(A02);
            v32 = v33.toString();
        }
        C4666r0[] c4666r0Arr2 = (C4666r0[]) X3.b(c4666r0Arr, C4666r0.a(v32, this.f35877b.f50660a));
        c4516j1.f37066b = c4666r0Arr2.length == 0 ? C4723u0.l0() : new C4723u0(c4666r0Arr2);
        c4516j1.f37324q = H3.g.d();
    }

    public final void a(H2 h22) {
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                r1.d().Q0().m0().c((H5) obj);
            }
        }, new P0());
    }

    public final void a(final C4766w5 c4766w5, Collection collection) {
        if (this.f35877b.f50599F1.f50897o0 || c4766w5.f38347n != null) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                ((H2) it.next()).h(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C4311k.this.a(c4766w5, (H5) obj);
                    }
                }, new P0());
            }
        }
    }

    public final void a(C4766w5 c4766w5, H5 h52) {
        h52.a(h52.d().Q0().m0().a(h52, c4766w5, this.f35876a, this.f35877b.f50599F1.f50897o0).P(), this.f35876a);
    }

    public final F a(C4766w5 c4766w5, ByteBufferProvider byteBufferProvider, t0 t0Var, C8659ns0 c8659ns0) {
        final L l10 = new L(this.f35876a, new C4324y(byteBufferProvider), c4766w5, this.f35878c, t0Var, true);
        c8659ns0.a("collect", new M0(l10));
        return (F) c8659ns0.a("generate", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C4311k.a(com.android.tools.r8.dex.L.this);
            }
        });
    }

    public static String a(M2 m22, AbstractC10992r0 abstractC10992r0) {
        return C4932Bl.b(abstractC10992r0.c(m22).toString()).replace('.', '/') + ".class";
    }

    public static String a(final C4798y c4798y) {
        C11349o2 f10 = c4798y.f().f();
        final StringBuilder sb2 = new StringBuilder();
        ArrayList arrayList = new ArrayList(f10.f57584d.size() + f10.f57582b.size() + f10.f57581a.size());
        f10.a(new u.I0(arrayList));
        arrayList.sort(new K0());
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4311k.a(StringBuilder.this, c4798y, (M2) obj);
            }
        });
        return sb2.toString();
    }

    public static void a(StringBuilder sb2, C4798y c4798y, M2 m22) {
        sb2.append(a(m22, c4798y.s()));
        sb2.append('\n');
    }

    public final void a(t0 t0Var) {
        this.f35877b.f50599F1.getClass();
        boolean z10 = f35875k;
        if (!z10 && !t0Var.f35956b.f35945k.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !t0Var.f35956b.f35946l.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !t0Var.f35956b.f35947m.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !t0Var.f35956b.f35948n.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !t0Var.f35956b.f35949o.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !t0Var.f35956b.f35950p.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !t0Var.f35956b.f35951q.isEmpty()) {
            throw new AssertionError();
        }
    }
}
