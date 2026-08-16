package com.android.tools.r8;

import com.android.tools.r8.ResourceShrinker;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.internal.AbstractC5635Np;
import com.android.tools.r8.internal.AbstractC6483ap0;
import com.android.tools.r8.internal.AbstractC8315lp;
import com.android.tools.r8.internal.AbstractC8482mp;
import com.android.tools.r8.internal.C4998Cp;
import com.android.tools.r8.internal.C5402Jo;
import com.android.tools.r8.internal.C5460Ko;
import com.android.tools.r8.internal.C5929Sr;
import com.android.tools.r8.internal.C5987Tr;
import com.android.tools.r8.internal.C6045Ur;
import com.android.tools.r8.internal.C6102Vr;
import com.android.tools.r8.internal.C6159Wr;
import com.android.tools.r8.internal.C6273Yr;
import com.android.tools.r8.internal.C6330Zr;
import com.android.tools.r8.internal.C7655hr;
import com.android.tools.r8.internal.C8145ko;
import com.android.tools.r8.internal.C8312lo;
import com.android.tools.r8.internal.InterfaceC4993Cm0;
import com.android.tools.r8.internal.InterfaceC5131Ex0;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;

public final class C11620t0 {

    public static final boolean f58384c = true;

    public final com.android.tools.r8.graph.H2 f58385a;

    public final ResourceShrinker.ReferenceChecker f58386b;

    public C11620t0(com.android.tools.r8.graph.H2 h22, ResourceShrinker.ReferenceChecker referenceChecker) {
        this.f58385a = h22;
        this.f58386b = referenceChecker;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:244:0x03a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        boolean z10;
        boolean b10;
        int a10;
        int v10;
        String l22;
        int v11;
        C4554l1 field;
        int v12;
        int v13;
        int v14;
        this.f58386b.startClassVisit(this.f58385a.M0());
        if (this.f58386b.shouldProcess(this.f58385a.f36245e.w0())) {
            Iterator<C4460g1> it = this.f58385a.A1().iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.R2 K02 = it.next().K0();
                if (K02 != null) {
                    int ordinal = K02.G0().ordinal();
                    if (ordinal == 3) {
                        this.f58386b.referencedInt(K02.w0().W0());
                    } else if (ordinal == 9) {
                        this.f58386b.referencedString(((com.android.tools.r8.graph.L2) K02.D0().f36759d).toString());
                    } else if (ordinal == 14) {
                        for (com.android.tools.r8.graph.R2 r22 : K02.n0().W0()) {
                            if (r22.N0()) {
                                this.f58386b.referencedInt(r22.w0().W0());
                            }
                        }
                    }
                }
            }
            for (C4516j1 c4516j1 : this.f58385a.A0()) {
                this.f58386b.startMethodVisit(c4516j1.getReference().v0());
                AbstractC4497i0 Q02 = c4516j1.Q0();
                if (Q02 != null) {
                    HashSet hashSet = new HashSet();
                    ArrayList arrayList = new ArrayList();
                    AbstractC5635Np[] abstractC5635NpArr = Q02.C().f36463j;
                    for (int i10 = 0; i10 < abstractC5635NpArr.length; i10++) {
                        C4998Cp c4998Cp = abstractC5635NpArr[i10];
                        int v15 = c4998Cp.v();
                        if (v15 != 18 && v15 != 19 && v15 != 20 && v15 != 23 && v15 != 21 && v15 != 22) {
                            int v16 = c4998Cp.v();
                            if (v16 != 26 && v16 != 27) {
                                int v17 = c4998Cp.v();
                                if (v17 != 96 && v17 != 99 && v17 != 100 && v17 != 101 && v17 != 98 && v17 != 102 && v17 != 97) {
                                    int v18 = c4998Cp.v();
                                    if (v18 != 110 && v18 != 111 && v18 != 112 && v18 != 113 && v18 != 114) {
                                        int v19 = c4998Cp.v();
                                        if (v19 != 116 && v19 != 117 && v19 != 118 && v19 != 119 && v19 != 120) {
                                            if (c4998Cp instanceof C5402Jo) {
                                                C5402Jo c5402Jo = (C5402Jo) abstractC5635NpArr[i10];
                                                if (i10 > 0) {
                                                    Object[] objArr = abstractC5635NpArr[i10 - 1];
                                                    if ((objArr instanceof C7655hr) && !Objects.equals(((com.android.tools.r8.graph.M2) ((C7655hr) objArr).f46871h).f36592f.toString(), "[I")) {
                                                    }
                                                }
                                                hashSet.add(Integer.valueOf(c5402Jo.u() + c5402Jo.f49364g));
                                            } else if (c4998Cp instanceof C5460Ko) {
                                                arrayList.add((C5460Ko) c4998Cp);
                                            }
                                        } else {
                                            if (!f58384c && (v14 = c4998Cp.v()) != 116 && v14 != 117 && v14 != 118 && v14 != 119 && v14 != 120) {
                                                throw new AssertionError();
                                            }
                                            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) ((AbstractC8482mp) c4998Cp).f50429h;
                                            ResourceShrinker.ReferenceChecker referenceChecker = this.f58386b;
                                            String w02 = a22.f38297f.w0();
                                            String l23 = a22.f38298g.toString();
                                            com.android.tools.r8.graph.I2 i22 = a22.f36127i;
                                            i22.getClass();
                                            referenceChecker.referencedMethod(w02, l23, i22.a(AbstractC10992r0.a()));
                                        }
                                    } else {
                                        if (!f58384c && (v13 = c4998Cp.v()) != 110 && v13 != 111 && v13 != 112 && v13 != 113 && v13 != 114) {
                                            throw new AssertionError();
                                        }
                                        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) ((AbstractC8315lp) c4998Cp).f50116l;
                                        ResourceShrinker.ReferenceChecker referenceChecker2 = this.f58386b;
                                        String w03 = a23.f38297f.w0();
                                        String l24 = a23.f38298g.toString();
                                        com.android.tools.r8.graph.I2 i23 = a23.f36127i;
                                        i23.getClass();
                                        referenceChecker2.referencedMethod(w03, l24, i23.a(AbstractC10992r0.a()));
                                    }
                                } else {
                                    if (!f58384c && (v12 = c4998Cp.v()) != 96 && v12 != 99 && v12 != 100 && v12 != 101 && v12 != 98 && v12 != 102 && v12 != 97) {
                                        throw new AssertionError();
                                    }
                                    if (c4998Cp instanceof C5929Sr) {
                                        field = ((C5929Sr) c4998Cp).getField();
                                    } else if (c4998Cp instanceof C5987Tr) {
                                        field = ((C5987Tr) c4998Cp).getField();
                                    } else if (c4998Cp instanceof C6045Ur) {
                                        field = ((C6045Ur) c4998Cp).getField();
                                    } else if (c4998Cp instanceof C6102Vr) {
                                        field = ((C6102Vr) c4998Cp).getField();
                                    } else if (c4998Cp instanceof C6159Wr) {
                                        field = ((C6159Wr) c4998Cp).getField();
                                    } else if (c4998Cp instanceof C6273Yr) {
                                        field = ((C6273Yr) c4998Cp).getField();
                                    } else if (c4998Cp instanceof C6330Zr) {
                                        field = ((C6330Zr) c4998Cp).getField();
                                    } else {
                                        throw new AssertionError((Object) "Not a get static instruction");
                                    }
                                    this.f58386b.referencedStaticField(field.f38297f.w0(), field.f38298g.toString());
                                }
                            } else {
                                if (!f58384c && (v11 = c4998Cp.v()) != 26 && v11 != 27) {
                                    throw new AssertionError();
                                }
                                if (c4998Cp instanceof C8145ko) {
                                    l22 = ((C8145ko) c4998Cp).O().toString();
                                } else if (c4998Cp instanceof C8312lo) {
                                    l22 = ((C8312lo) c4998Cp).O().toString();
                                } else {
                                    throw new AssertionError((Object) "Not a string constant instruction.");
                                }
                                this.f58386b.referencedString(l22);
                            }
                        } else {
                            if (!f58384c && (v10 = c4998Cp.v()) != 18 && v10 != 19 && v10 != 20 && v10 != 23 && v10 != 21 && v10 != 22) {
                                throw new AssertionError();
                            }
                            if (c4998Cp instanceof InterfaceC4993Cm0) {
                                a10 = ((InterfaceC4993Cm0) c4998Cp).a();
                            } else if (c4998Cp instanceof InterfaceC5131Ex0) {
                                InterfaceC5131Ex0 interfaceC5131Ex0 = (InterfaceC5131Ex0) c4998Cp;
                                if (((int) interfaceC5131Ex0.a()) == interfaceC5131Ex0.a()) {
                                    a10 = (int) interfaceC5131Ex0.a();
                                }
                            } else {
                                throw new AssertionError((Object) "Not an int const instruction.");
                            }
                            this.f58386b.referencedInt(a10);
                        }
                    }
                    int size = arrayList.size();
                    int i11 = 0;
                    while (i11 < size) {
                        Object obj = arrayList.get(i11);
                        i11++;
                        C5460Ko c5460Ko = (C5460Ko) obj;
                        if (c5460Ko == null ? false : hashSet.contains(Integer.valueOf(c5460Ko.u()))) {
                            int i12 = 0;
                            while (true) {
                                short[] sArr = c5460Ko.f41784i;
                                if (i12 < sArr.length / 2) {
                                    int i13 = i12 * 2;
                                    this.f58386b.referencedInt(sArr[i13] | (sArr[i13 + 1] << 16));
                                    i12++;
                                }
                            }
                        }
                    }
                }
                this.f58386b.endMethodVisit(c4516j1.getReference().v0());
            }
            com.android.tools.r8.graph.H2 h22 = this.f58385a;
            if (h22.k0().isEmpty()) {
                N4 n42 = h22.f36252l;
                synchronized (n42) {
                    b10 = n42.b();
                }
                if (!b10 && !com.android.tools.r8.graph.H2.a(h22.f36251k)) {
                    z10 = false;
                    if (z10) {
                        a(this.f58385a);
                    }
                    this.f58386b.endClassVisit(this.f58385a.M0());
                }
            }
            z10 = true;
            if (z10) {
            }
            this.f58386b.endClassVisit(this.f58385a.M0());
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        AbstractC6483ap0.a(Arrays.stream(h22.k0().f37806d), AbstractC6483ap0.a(h22.I0()).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C4460g1) obj).q0();
            }
        }).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Stream stream;
                stream = ((C4460g1) obj).k0().stream();
                return stream;
            }
        }), AbstractC6483ap0.a(h22.z1()).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C4516j1) obj).r0();
            }
        }).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Stream stream;
                stream = ((C4516j1) obj).k0().stream();
                return stream;
            }
        })).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11620t0.this.a((C4666r0) obj);
            }
        });
    }

    public final void a(C4666r0 c4666r0) {
        for (C4704t0 c4704t0 : c4666r0.f37693c.f37143c) {
            a(c4704t0.f37739c);
        }
    }

    public final void a(com.android.tools.r8.graph.R2 r22) {
        int ordinal = r22.G0().ordinal();
        if (ordinal == 3) {
            this.f58386b.referencedInt(r22.w0().f36754d);
            return;
        }
        if (ordinal == 9) {
            this.f58386b.referencedString(((com.android.tools.r8.graph.L2) r22.D0().f36759d).toString());
            return;
        }
        int i10 = 0;
        if (ordinal == 14) {
            com.android.tools.r8.graph.R2[] W02 = r22.n0().W0();
            int length = W02.length;
            while (i10 < length) {
                a(W02[i10]);
                i10++;
            }
            return;
        }
        if (ordinal != 15) {
            return;
        }
        C4704t0[] c4704t0Arr = r22.m0().f36739d.f37143c;
        int length2 = c4704t0Arr.length;
        while (i10 < length2) {
            a(c4704t0Arr[i10].f37739c);
            i10++;
        }
    }
}
