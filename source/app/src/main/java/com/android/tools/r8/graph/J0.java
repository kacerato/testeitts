package com.android.tools.r8.graph;

import com.android.tools.r8.C11699z2;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.graph.O0;
import com.android.tools.r8.graph.W0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5635Np;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.AbstractC9647to;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10523z10;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5116Eq;
import com.android.tools.r8.internal.C5563Mi;
import com.android.tools.r8.internal.C5577Mp;
import com.android.tools.r8.internal.C5639Nr;
import com.android.tools.r8.internal.C6298Zc0;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.C6947dd0;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7479go;
import com.android.tools.r8.internal.C7713iA;
import com.android.tools.r8.internal.C8157ks;
import com.android.tools.r8.internal.C8312lo;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8707o8;
import com.android.tools.r8.internal.C9374s8;
import com.android.tools.r8.internal.C9380sA;
import com.android.tools.r8.internal.C9480so;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.C9708u8;
import com.android.tools.r8.internal.C9970vk0;
import com.android.tools.r8.internal.C9987vq;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.InterfaceC5426Ka;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.InterfaceC7166ev;
import com.android.tools.r8.internal.InterfaceC7614hd0;
import com.android.tools.r8.internal.RR;
import com.bumptech.glide.load.engine.GlideException;
import java.lang.constant.ConstantDescs;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;

public class J0 extends AbstractC4497i0 implements InterfaceC4443f3, InterfaceC5580Mq0<J0>, InterfaceC4424e3 {

    public static final boolean f36457o = true;

    public final int f36458e;

    public final int f36459f;

    public final int f36460g;

    public final a[] f36461h;

    public final b[] f36462i;

    public final AbstractC5635Np[] f36463j;

    public L2 f36464k;

    public W0 f36465l;

    public Z0 f36466m;

    public final C9708u8 f36467n;

    public static class a extends AbstractC4592n1 implements InterfaceC5580Mq0<a> {

        public static final a[] f36468f = new a[0];

        public static final boolean f36469g = true;

        public final int f36470b;

        public int f36471c;

        public int f36472d;

        public int f36473e = -1;

        public a(int i10, int i11, int i12) {
            this.f36471c = i10;
            this.f36472d = i11;
            this.f36470b = i12;
            if (!f36469g && !C8707o8.a(i11)) {
                throw new AssertionError();
            }
        }

        @Override
        public final a E() {
            return this;
        }

        public final boolean equals(Object obj) {
            return InterfaceC7166ev.a(this, obj);
        }

        public final int hashCode() {
            return (this.f36473e * 5) + (this.f36472d * 3) + (this.f36471c * 2);
        }

        @Override
        public final InterfaceC5638Nq0<a> m() {
            return new InterfaceC5638Nq0() {
                @Override
                public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                    J0.a.a(abstractC5754Pq0);
                }
            };
        }

        public final String toString() {
            return "[" + C10656zq0.a(this.f36471c, 2) + " .. " + C10656zq0.a(this.f36471c + this.f36472d, 2) + "[ -> " + this.f36473e;
        }

        public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
            abstractC5754Pq0.a(new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((J0.a) obj).f36471c;
                    return i10;
                }
            }).a(new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((J0.a) obj).f36472d;
                    return i10;
                }
            }).a(new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((J0.a) obj).f36473e;
                    return i10;
                }
            });
        }

        @Override
        public final void a(com.android.tools.r8.dex.X x10) {
            if (!f36469g) {
                throw new AssertionError();
            }
        }
    }

    public static class b extends AbstractC4592n1 implements InterfaceC5580Mq0<b> {

        public static final b[] f36474d = new b[0];

        public static final boolean f36475e = true;

        public final a[] f36476b;

        public final int f36477c;

        public static class a extends AbstractC4592n1 implements InterfaceC5580Mq0<a> {

            public static final boolean f36478d = true;

            public final M2 f36479b;

            public final int f36480c;

            public a(int i10, M2 m22) {
                this.f36479b = m22;
                this.f36480c = i10;
            }

            @Override
            public final a E() {
                return this;
            }

            public final boolean equals(Object obj) {
                return InterfaceC7166ev.a(this, obj);
            }

            public M2 getType() {
                return this.f36479b;
            }

            public final int hashCode() {
                return (this.f36479b.hashCode() * 7) + this.f36480c;
            }

            @Override
            public final InterfaceC5638Nq0<a> m() {
                return new InterfaceC5638Nq0() {
                    @Override
                    public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                        J0.b.a.a(abstractC5754Pq0);
                    }
                };
            }

            public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
                abstractC5754Pq0.e(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        M2 m22;
                        m22 = ((J0.b.a) obj).f36479b;
                        return m22;
                    }
                }).a(new ToIntFunction() {
                    @Override
                    public final int applyAsInt(Object obj) {
                        int i10;
                        i10 = ((J0.b.a) obj).f36480c;
                        return i10;
                    }
                });
            }

            @Override
            public final void a(com.android.tools.r8.dex.X x10) {
                if (!f36478d) {
                    throw new AssertionError();
                }
            }
        }

        public b(a[] aVarArr, int i10) {
            this.f36476b = aVarArr;
            this.f36477c = i10;
        }

        @Override
        public final b E() {
            return this;
        }

        public final boolean equals(Object obj) {
            return InterfaceC7166ev.a(this, obj);
        }

        public final int hashCode() {
            boolean z10 = C7713iA.f48866c;
            return C7713iA.a(this, m());
        }

        @Override
        public final InterfaceC5638Nq0<b> m() {
            return new InterfaceC5638Nq0() {
                @Override
                public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                    J0.b.a(abstractC5754Pq0);
                }
            };
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("[\n");
            for (a aVar : this.f36476b) {
                sb2.append("       ");
                sb2.append((Object) aVar.f36479b);
                sb2.append(" -> ");
                sb2.append(C10656zq0.a(aVar.f36480c, 2));
                sb2.append("\n");
            }
            if (this.f36477c != -1) {
                sb2.append("       default -> ");
                sb2.append(C10656zq0.a(this.f36477c, 2));
                sb2.append("\n");
            }
            sb2.append("     ]");
            return sb2.toString();
        }

        public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
            abstractC5754Pq0.a(new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((J0.b) obj).f36477c;
                    return i10;
                }
            }).f(new Function() {
                @Override
                public final Object apply(Object obj) {
                    J0.b.a[] aVarArr;
                    aVarArr = ((J0.b) obj).f36476b;
                    return aVarArr;
                }
            });
        }

        @Override
        public final void a(com.android.tools.r8.dex.X x10) {
            if (!f36475e) {
                throw new AssertionError();
            }
        }
    }

    public J0(int i10, int i11, int i12, AbstractC5635Np[] abstractC5635NpArr, a[] aVarArr, b[] bVarArr, W0 w02) {
        this(i10, i11, i12, abstractC5635NpArr, aVarArr, bVarArr, w02, C9708u8.f52785b);
    }

    @Override
    public final J0 C() {
        return this;
    }

    @Override
    public final J0 E() {
        return this;
    }

    public W0 E0() {
        return this.f36465l;
    }

    @Override
    public final AbstractC4497i0 P() {
        return this;
    }

    @Override
    public final int T() {
        return this.f36460g;
    }

    @Override
    public int Y() {
        AbstractC5635Np abstractC5635Np = this.f36463j[r0.length - 1];
        boolean z10 = f36457o;
        if (!z10 && abstractC5635Np.f42705b < 0) {
            throw new AssertionError();
        }
        int y10 = abstractC5635Np.y() + abstractC5635Np.u();
        if (!z10) {
            int i10 = 0;
            for (AbstractC5635Np abstractC5635Np2 : this.f36463j) {
                i10 += abstractC5635Np2.y();
            }
            if (y10 != i10) {
                throw new AssertionError();
            }
        }
        return y10;
    }

    @Override
    public final InterfaceC4424e3 a(H5 h52, C4724u1 c4724u1) {
        return this;
    }

    @Override
    public final int k0() {
        int hashCode = (Arrays.hashCode(this.f36463j) * 7) + (this.f36460g * 5) + (this.f36458e * 3) + (this.f36459f * 2);
        W0 w02 = this.f36465l;
        return (Arrays.hashCode(this.f36462i) * 17) + (Arrays.hashCode(this.f36461h) * 13) + ((w02 == null ? 0 : w02.hashCode()) * 11) + hashCode;
    }

    @Override
    public final int l() {
        return 1;
    }

    @Override
    public final InterfaceC5638Nq0<J0> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                J0.a(abstractC5754Pq0);
            }
        };
    }

    @Override
    public final InterfaceC4443f3 m0() {
        return this;
    }

    @Override
    public a[] o() {
        return this.f36461h;
    }

    @Override
    public final int q0() {
        return Y();
    }

    @Override
    public final b[] r() {
        return this.f36462i;
    }

    @Override
    public final boolean s0() {
        for (AbstractC5635Np abstractC5635Np : this.f36463j) {
            if (abstractC5635Np instanceof C5116Eq) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final String toString() {
        return a((C4516j1) null, C9970vk0.f53318b);
    }

    @Override
    public final Z0 u() {
        if (this.f36466m == null) {
            this.f36466m = W0.a(this.f36465l);
        }
        return this.f36466m;
    }

    @Override
    public final boolean v0() {
        return true;
    }

    @Override
    public final boolean w0() {
        return true;
    }

    @Override
    public boolean x0() {
        AbstractC5635Np[] abstractC5635NpArr = this.f36463j;
        return abstractC5635NpArr.length == 1 && (abstractC5635NpArr[0] instanceof C5639Nr);
    }

    @Override
    public final int b(H5 h52) {
        return this.f36459f;
    }

    @Override
    public final void c(H5 h52) {
        for (AbstractC5635Np abstractC5635Np : this.f36463j) {
            D0 n10 = abstractC5635Np.n();
            if (n10 != null) {
                A2 reference = h52.getReference();
                int u10 = abstractC5635Np.u();
                boolean z10 = D0.f36211l;
                if (!z10 && reference == null) {
                    throw new AssertionError();
                }
                if (!z10 && u10 < 0) {
                    throw new AssertionError();
                }
                if (!z10 && n10.f36217j != null) {
                    throw new AssertionError();
                }
                if (!z10 && n10.f36218k != -1) {
                    throw new AssertionError();
                }
                n10.f36217j = reference;
                n10.f36218k = u10;
            }
        }
    }

    public J0(int i10, int i11, int i12, AbstractC5635Np[] abstractC5635NpArr, a[] aVarArr, b[] bVarArr, W0 w02, C9708u8 c9708u8) {
        this.f36459f = i11;
        this.f36458e = i10;
        this.f36460g = i12;
        this.f36463j = abstractC5635NpArr;
        this.f36461h = aVarArr;
        this.f36462i = bVarArr;
        this.f36465l = w02;
        this.f36467n = c9708u8;
        boolean z10 = f36457o;
        if (!z10 && aVarArr == null) {
            throw new AssertionError();
        }
        if (!z10 && bVarArr == null) {
            throw new AssertionError();
        }
        if (!z10 && abstractC5635NpArr == null) {
            throw new AssertionError();
        }
        if (!z10 && w02 != null && !w02.r0() && !AbstractC9647to.a(w02.l0().f36926g)) {
            throw new AssertionError();
        }
        hashCode();
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((J0) obj).f36458e;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((J0) obj).f36459f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((J0) obj).f36460g;
                return i10;
            }
        }).f(new Function() {
            @Override
            public final Object apply(Object obj) {
                J0.a[] aVarArr;
                aVarArr = ((J0) obj).f36461h;
                return aVarArr;
            }
        }).f(new Function() {
            @Override
            public final Object apply(Object obj) {
                J0.b[] bVarArr;
                bVarArr = ((J0) obj).f36462i;
                return bVarArr;
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                W0 w02;
                w02 = ((J0) obj).f36465l;
                return w02;
            }
        }).f(new Function() {
            @Override
            public final Object apply(Object obj) {
                AbstractC5635Np[] abstractC5635NpArr;
                abstractC5635NpArr = ((J0) obj).f36463j;
                return abstractC5635NpArr;
            }
        });
    }

    @Override
    public final C9374s8 a(InterfaceC5426Ka interfaceC5426Ka) {
        return (C9374s8) this.f36467n.f52787a.get(interfaceC5426Ka.s());
    }

    @Override
    public final boolean c(Object obj) {
        return InterfaceC7166ev.a(this, obj);
    }

    public static boolean a(C4798y c4798y, H5 h52) {
        C8570nJ E10 = c4798y.E();
        E10.getClass();
        boolean z10 = C8570nJ.f50581h2;
        if (!z10 && h52.d().Q0().C() == null) {
            throw new AssertionError();
        }
        if (!z10 && h52.d().Q0().C().E0() != null) {
            throw new AssertionError();
        }
        if (h52.getHolder().f36366u != ProgramResource.Kind.DEX || !E10.g()) {
            return false;
        }
        if (!E10.z().d(com.android.tools.r8.internal.C2.O)) {
            return false;
        }
        L2 Z02 = h52.getHolder().Z0();
        return Z02 == null || Z02.equals(E10.f50660a.f38183w5);
    }

    public void a(W0 w02) {
        this.f36465l = w02;
        if (this.f36466m != null) {
            this.f36466m = null;
        }
        this.f36242b = -1;
    }

    public final W0.a a(C4724u1 c4724u1) {
        W0.a a10 = W0.a(this, c4724u1);
        if (a10 == null) {
            return a10;
        }
        int i10 = 0;
        for (L2 l22 : a10.f36925f) {
            i10 = Integer.max(i10, a(c4724u1, l22));
        }
        for (O0 o02 : a10.f36926g) {
            if (o02 instanceof O0.d) {
                i10 = Integer.max(i10, a(c4724u1, ((O0.d) o02).f36668e));
            }
        }
        String str = C11699z2.a(ConstantDescs.DEFAULT_NAME, i10 + 1) + "this";
        L2[] l2Arr = a10.f36925f;
        L2[] l2Arr2 = new L2[l2Arr.length + 1];
        l2Arr2[0] = c4724u1.b(str);
        System.arraycopy(l2Arr, 0, l2Arr2, 1, l2Arr.length);
        return new W0.a(a10.f36924e, l2Arr2, a10.f36926g);
    }

    @Override
    public final AbstractC4497i0 a(A2 a22, boolean z10, A2 a23, boolean z11, C4724u1 c4724u1) {
        b[] bVarArr;
        a[] aVarArr;
        AbstractC5635Np[] abstractC5635NpArr;
        int i10;
        W0.a aVar;
        int i11;
        int i12 = this.f36458e;
        int i13 = this.f36459f;
        int i14 = this.f36460g;
        AbstractC5635Np[] abstractC5635NpArr2 = this.f36463j;
        a[] aVarArr2 = this.f36461h;
        b[] bVarArr2 = this.f36462i;
        B60.c.a a10 = B60.c.t().a(0).a(a22);
        a10.f38816e = true;
        B60.c a11 = a10.a();
        W0.a a12 = W0.a(this, c4724u1);
        if (a12 == null) {
            if (!z11) {
                B60.c.a a13 = B60.c.t().a(a23);
                a13.f38814c = a11;
                a11 = a13.a(0).a();
            }
            i10 = i14;
            abstractC5635NpArr = abstractC5635NpArr2;
            aVarArr = aVarArr2;
            bVarArr = bVarArr2;
            aVar = new W0.a(0, new L2[a23.w0()], new O0[]{c4724u1.a(a11), c4724u1.f38137r});
        } else {
            C9480so a14 = AbstractC9647to.a(a23, z11, a12);
            O0[] o0Arr = a12.f36926g;
            bVarArr = bVarArr2;
            int i15 = (a14.f52456b <= -1 && this.f36465l.p0() > 0) ? 1 : 0;
            aVarArr = aVarArr2;
            abstractC5635NpArr = abstractC5635NpArr2;
            i10 = i14;
            ArrayList arrayList = new ArrayList(o0Arr.length + ((a14.f52455a != null ? 1 : 0) ^ 1) + ((a14.f52456b > -1 ? 1 : 0) ^ 1) + i15);
            if (a14.f52455a == null) {
                B60.a t10 = z11 ? B60.c.t() : B60.b.t();
                int i16 = a14.f52456b;
                if (i16 <= -1) {
                    i16 = 0;
                }
                B60.a a15 = t10.a(i16).a(a23);
                a15.f38816e = z11;
                arrayList.add(c4724u1.a(AbstractC4497i0.a(a11, a15.c().a(), z11)));
            }
            if (a14.f52456b <= -1) {
                arrayList.add(c4724u1.f38137r);
            }
            int length = o0Arr.length;
            int i17 = 0;
            while (i17 < length) {
                O0 o02 = o0Arr[i17];
                o02.getClass();
                if ((o02 instanceof N0) && i15 != 0) {
                    arrayList.add(c4724u1.a(this.f36465l.p0() + o02.k0().f36628d));
                } else if ((o02 instanceof O0.b) && i15 != 0) {
                    O0.b l02 = o02.l0();
                    U0.a(this.f36465l.p0() + l02.p0(), l02.q0(), arrayList, c4724u1);
                } else {
                    if (o02 instanceof S0) {
                        S0 m02 = o02.m0();
                        if (!f36457o && m02.f36791d == null) {
                            throw new AssertionError();
                        }
                        arrayList.add(new S0(AbstractC4497i0.a(a11, m02.f36791d, z11)));
                    } else {
                        arrayList.add(o02);
                    }
                    i11 = 1;
                    i17 += i11;
                }
                i11 = 1;
                i15 = 0;
                i17 += i11;
            }
            if (i15 != 0) {
                arrayList.add(c4724u1.a(this.f36465l.p0()));
            }
            aVar = new W0.a(a14.f52456b > -1 ? a12.f36924e : 0, a12.f36925f, (O0[]) arrayList.toArray(O0.f36660b));
        }
        return new J0(i12, i13, i10, abstractC5635NpArr, aVarArr, bVarArr, aVar);
    }

    @Override
    public final InterfaceC4443f3 a(final H5 h52, C4766w5 c4766w5, final C4798y c4798y, boolean z10) {
        L2 l22 = null;
        if (z10) {
            C6298Zc0 c6298Zc0 = new C6298Zc0(((C6947dd0) c4766w5.f38343j.i()).f47437b);
            while (true) {
                if (!c6298Zc0.hasNext()) {
                    break;
                }
                InterfaceC7614hd0 interfaceC7614hd0 = (InterfaceC7614hd0) c6298Zc0.next();
                if (interfaceC7614hd0.getIntValue() == 0) {
                    l22 = (L2) interfaceC7614hd0.getKey();
                    break;
                }
            }
        } else {
            boolean z11 = f36457o;
            if (!z11 && this.f36464k == null && !Arrays.stream(this.f36463j).noneMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((AbstractC5635Np) obj).D();
                }
            })) {
                throw new AssertionError();
            }
            if (!z11 && !Arrays.stream(this.f36463j).noneMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((AbstractC5635Np) obj).H();
                }
            })) {
                throw new AssertionError();
            }
            L2 l23 = this.f36464k;
            if (l23 != null && l23.d(c4766w5.f38347n)) {
                l22 = c4766w5.f38347n;
            }
        }
        return l22 != null ? new com.android.tools.r8.dex.U(h52.d(), l22, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return J0.a(C4798y.this, h52);
            }
        }, c4798y.b()).a() : this;
    }

    public static int a(C4724u1 c4724u1, L2 l22) {
        if (l22 != null && l22.a(c4724u1.f38083k1.f36562f)) {
            String l23 = l22.toString();
            for (int i10 = 0; i10 < l23.length(); i10++) {
                if (l23.charAt(i10) != '_') {
                    return i10;
                }
            }
        }
        return 0;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        InterfaceC5638Nq0<J0> m10 = m();
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.getClass();
        m10.a(new C9380sA(this, c9547tA));
    }

    @Override
    public final C7215fB a(H5 h52, C4798y c4798y, EW.a aVar) {
        return C6382aB.a(h52, c4798y, new C8157ks(this, h52, null, c4798y.b())).a(h52, aVar);
    }

    @Override
    public final C7215fB a(H5 h52, H5 h53, C4798y c4798y, AbstractC5308Hz abstractC5308Hz, C10523z10 c10523z10, B60 b60, com.android.tools.r8.graph.proto.j jVar) {
        return new C6382aB(h53, c4798y, abstractC5308Hz, new C8157ks(this, h53, b60, c4798y.b()), jVar, c10523z10).a(h52, EW.d());
    }

    @Override
    public final void a(H5 h52, AbstractC4446f6 abstractC4446f6) {
        a(abstractC4446f6);
    }

    @Override
    public final void a(C4421e0 c4421e0, C5563Mi c5563Mi) {
        a(c5563Mi);
    }

    public final void a(AbstractC4446f6 abstractC4446f6) {
        if (!f36457o && !abstractC4446f6.f37178c.d()) {
            throw new AssertionError();
        }
        for (AbstractC5635Np abstractC5635Np : this.f36463j) {
            abstractC5635Np.a(abstractC4446f6);
            if (abstractC4446f6.f37178c.c()) {
                return;
            }
        }
        for (b bVar : this.f36462i) {
            for (b.a aVar : bVar.f36476b) {
                abstractC4446f6.a(aVar.f36479b);
                if (abstractC4446f6.f37178c.c()) {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x016f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String a(C4516j1 c4516j1, C9970vk0 c9970vk0) {
        K0 k02;
        int length;
        int i10;
        Map<Integer, C4515j0> map;
        AbstractC5635Np[] abstractC5635NpArr;
        StringBuilder sb2 = new StringBuilder();
        if (c4516j1 != null) {
            sb2.append(c9970vk0.c(c4516j1.getReference()));
            sb2.append("\n");
        }
        sb2.append("registers: ");
        sb2.append(this.f36458e);
        sb2.append(", inputs: ");
        sb2.append(this.f36459f);
        sb2.append(", outputs: ");
        sb2.append(this.f36460g);
        sb2.append("\n------------------------------------------------------------\ninst#  offset  instruction         arguments\n------------------------------------------------------------\n");
        HashMap hashMap = new HashMap();
        for (AbstractC5635Np abstractC5635Np : this.f36463j) {
            if (abstractC5635Np.B()) {
                hashMap.put(Integer.valueOf(abstractC5635Np.w() + abstractC5635Np.u()), abstractC5635Np);
            }
        }
        Iterator<K0> emptyIterator = Collections.emptyIterator();
        boolean z10 = E0() != null && E0().r0();
        if (!z10 && E0() != null && c4516j1 != null) {
            emptyIterator = new M0(c4516j1, new C4724u1()).a().iterator();
            if (emptyIterator.hasNext()) {
                k02 = emptyIterator.next();
                Map<Integer, C4515j0> map2 = Collections.EMPTY_MAP;
                AbstractC5635Np[] abstractC5635NpArr2 = this.f36463j;
                length = abstractC5635NpArr2.length;
                i10 = 0;
                int i11 = 0;
                while (i10 < length) {
                    AbstractC5635Np abstractC5635Np2 = abstractC5635NpArr2[i10];
                    K0 k03 = k02;
                    int u10 = abstractC5635Np2.u() - 1;
                    K0 k04 = k03;
                    while (true) {
                        map = map2;
                        if (k04 == null || k04.f36515b > u10) {
                            break;
                        }
                        if (emptyIterator.hasNext()) {
                            k04 = emptyIterator.next();
                            map2 = map;
                        } else {
                            map2 = map;
                            k04 = null;
                        }
                    }
                    k02 = k04;
                    map2 = map;
                    while (true) {
                        if (k02 == null) {
                            abstractC5635NpArr = abstractC5635NpArr2;
                            break;
                        }
                        abstractC5635NpArr = abstractC5635NpArr2;
                        if (k02.f36515b != abstractC5635Np2.u()) {
                            break;
                        }
                        if (k02.f36514a || !map2.equals(k02.f36518e)) {
                            sb2.append("         ");
                            sb2.append(k02.a(false));
                            sb2.append("\n");
                        }
                        map2 = k02.f36518e;
                        k02 = emptyIterator.hasNext() ? emptyIterator.next() : null;
                        abstractC5635NpArr2 = abstractC5635NpArr;
                    }
                    int i12 = i11 + 1;
                    C10656zq0.a(sb2, Integer.toString(i11), 5);
                    sb2.append(": ");
                    if (abstractC5635Np2.N()) {
                        sb2.append(abstractC5635Np2.b((AbstractC5635Np) hashMap.get(Integer.valueOf(abstractC5635Np2.u()))));
                    } else {
                        sb2.append(abstractC5635Np2.b(c9970vk0));
                    }
                    sb2.append('\n');
                    i10++;
                    i11 = i12;
                    abstractC5635NpArr2 = abstractC5635NpArr;
                }
                K0 k05 = k02;
                if (!z10) {
                    sb2.append((Object) E0());
                    sb2.append("\n");
                } else if (emptyIterator.hasNext()) {
                    int u11 = ((AbstractC5635Np) com.android.tools.r8.internal.X3.b(this.f36463j)).u();
                    K0 k06 = k05;
                    while (k06 != null && k06.f36515b <= u11) {
                        k06 = emptyIterator.hasNext() ? emptyIterator.next() : null;
                    }
                    if (k06 != null) {
                        sb2.append("(warning: has unhandled debug events @ pc:");
                        sb2.append(k06.f36515b);
                        sb2.append(", line:");
                        sb2.append(k06.b().f());
                    } else {
                        sb2.append("(has debug events past last pc)\n");
                    }
                }
                if (this.f36461h.length > 0) {
                    sb2.append("Tries (numbers are offsets)\n");
                    for (a aVar : this.f36461h) {
                        sb2.append(GlideException.a.f59088e);
                        sb2.append(aVar.toString());
                        sb2.append('\n');
                    }
                    sb2.append("Handlers (numbers are offsets)\n");
                    int i13 = 0;
                    while (true) {
                        b[] bVarArr = this.f36462i;
                        if (i13 >= bVarArr.length) {
                            break;
                        }
                        b bVar = bVarArr[i13];
                        sb2.append(GlideException.a.f59088e);
                        sb2.append(i13);
                        sb2.append(": ");
                        sb2.append(bVar.toString());
                        sb2.append('\n');
                        i13++;
                    }
                }
                return sb2.toString();
            }
        }
        k02 = null;
        Map<Integer, C4515j0> map22 = Collections.EMPTY_MAP;
        AbstractC5635Np[] abstractC5635NpArr22 = this.f36463j;
        length = abstractC5635NpArr22.length;
        i10 = 0;
        int i112 = 0;
        while (i10 < length) {
        }
        K0 k052 = k02;
        if (!z10) {
        }
        if (this.f36461h.length > 0) {
        }
        return sb2.toString();
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, H5 h52, RR rr) {
        this.f36464k = null;
        for (AbstractC5635Np abstractC5635Np : this.f36463j) {
            boolean z10 = f36457o;
            if (!z10) {
                abstractC5635Np.getClass();
                if (abstractC5635Np instanceof C9987vq) {
                    throw new AssertionError();
                }
            }
            abstractC5635Np.a(c4798y, abstractC5308Hz, m10, h52, rr);
            if (abstractC5635Np.D()) {
                L2 O10 = abstractC5635Np.e().O();
                if (!z10 && O10 == null) {
                    throw new AssertionError();
                }
                L2 l22 = this.f36464k;
                if (l22 == null || l22.compareTo(O10) < 0) {
                    this.f36464k = O10;
                }
            } else if (abstractC5635Np instanceof C8312lo) {
                L2 O11 = abstractC5635Np.f().O();
                if (!z10 && O11 == null) {
                    throw new AssertionError();
                }
                L2 l23 = this.f36464k;
                if (l23 == null || l23.compareTo(O11) < 0) {
                    this.f36464k = O11;
                }
            } else {
                continue;
            }
        }
        if (this.f36465l != null) {
            u().a(c4798y, abstractC5308Hz, m10);
        }
        for (b bVar : this.f36462i) {
            for (b.a aVar : bVar.f36476b) {
                aVar.getClass();
                c4798y.v().c(abstractC5308Hz, aVar.f36479b).a(c4798y, m10);
            }
        }
    }

    @Override
    public final int a(H5 h52) {
        return this.f36458e;
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        if (this.f36465l != null) {
            u().a(x10);
        }
    }

    @Override
    public final void a(com.android.tools.r8.dex.r rVar) {
        for (AbstractC5635Np abstractC5635Np : this.f36463j) {
            A2 b10 = abstractC5635Np.b();
            C4554l1 field = abstractC5635Np.getField();
            if (field != null) {
                if (!f36457o && b10 != null) {
                    throw new AssertionError();
                }
                rVar.a(field);
            } else if (b10 != null) {
                rVar.a(b10);
            } else if (abstractC5635Np instanceof C7479go) {
                rVar.a(abstractC5635Np.d().O());
            } else if (abstractC5635Np instanceof C5577Mp) {
                rVar.a(abstractC5635Np.i().O());
            } else if (abstractC5635Np.C()) {
                rVar.a(abstractC5635Np.c().O());
            }
        }
    }

    @Override
    public final void a(C4766w5 c4766w5, H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        for (AbstractC5635Np abstractC5635Np : this.f36463j) {
            abstractC5635Np.a(c4766w5, h52, abstractC5308Hz, abstractC5308Hz2, rr, shortBuffer);
        }
    }

    @Override
    public final void a(A2 a22, boolean z10, Consumer consumer) {
        if (E0() == null || E0().r0()) {
            return;
        }
        for (O0 o02 : E0().l0().f36926g) {
            o02.getClass();
            if (o02 instanceof S0) {
                consumer.accept(o02.m0().f36791d);
            }
        }
    }
}
