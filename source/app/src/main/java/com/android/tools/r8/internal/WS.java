package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.EW;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;

public class WS<EV> extends AbstractC4497i0 implements InterfaceC5580Mq0<WS<EV>>, Iterable<InterfaceC6923dT> {

    public static final boolean f45402o = true;

    public final AbstractC9758uT f45403e;

    public final boolean f45404f;

    public final YS[] f45405g;

    public final SS[] f45406h;

    public final int f45407i;

    public final byte[] f45408j;

    public final int f45409k;

    public final VS f45410l;

    public final QS f45411m;

    public C6899dH f45412n;

    public WS(WS ws) {
        this(ws.f45405g, ws.f45406h, ws.f45407i, ws.f45408j, ws.f45409k, ws.f45410l, ws.f45411m, ws.f45403e, ws.f45404f, ws.f45412n);
    }

    public static void a(B60 b60) {
    }

    public static boolean h(WS ws) {
        return ws.f45412n == null;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public C7089eT iterator() {
        return new C7089eT(new W7(this.f45408j));
    }

    @Override
    public final int k(int i10) {
        if (!this.f45404f) {
            int i11 = this.f45409k;
            if (i11 <= i10) {
                return i11;
            }
            return -1;
        }
        C8089kT c8089kT = new C8089kT(this);
        C7089eT it = iterator();
        while (it.hasNext()) {
            c8089kT.a(it.next());
            if (c8089kT.f49644c > i10) {
                return -1;
            }
        }
        return c8089kT.f49644c;
    }

    @Override
    public final int k0() {
        throw new C5417Jv0("LIR code should not be subject to hashing.");
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                WS.a(abstractC5754Pq0);
            }
        };
    }

    @Override
    public final WS o0() {
        return this;
    }

    @Override
    public final void p0() {
        this.f45412n = null;
    }

    @Override
    public final int q0() {
        C8089kT c8089kT = new C8089kT(this);
        C7089eT it = iterator();
        while (it.hasNext()) {
            c8089kT.a(it.next());
            if (c8089kT.f49644c > Integer.MAX_VALUE) {
                return -1;
            }
        }
        return c8089kT.f49644c;
    }

    @Override
    public final boolean s0() {
        C7089eT it = iterator();
        while (it.hasNext()) {
            int a10 = it.next().a();
            if (a10 == 194 || a10 == 195) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final String toString() {
        return new C7922jT(this).j();
    }

    @Override
    public final boolean x0() {
        C7089eT it = iterator();
        while (it.hasNext()) {
            int a10 = it.next().a();
            if (a10 != 177 && a10 != 209) {
                return false;
            }
        }
        return true;
    }

    public WS(YS[] ysArr, SS[] ssArr, int i10, byte[] bArr, int i11, VS vs, QS qs, AbstractC9758uT abstractC9758uT, boolean z10, C6899dH c6899dH) {
        if (!f45402o && ssArr == null) {
            throw new AssertionError();
        }
        this.f45405g = ysArr;
        this.f45406h = ssArr;
        this.f45407i = i10;
        this.f45408j = bArr;
        this.f45409k = i11;
        this.f45410l = vs;
        this.f45411m = qs;
        this.f45403e = abstractC9758uT;
        this.f45404f = z10;
        this.f45412n = c6899dH;
    }

    public static <V, EV> PS<V, EV> a(com.android.tools.r8.graph.A2 a22, boolean z10, AbstractC6590bT<V, EV> abstractC6590bT, C8570nJ c8570nJ) {
        return new PS<>(a22, z10, abstractC6590bT, c8570nJ);
    }

    @Override
    public final boolean c(Object obj) {
        throw new C5417Jv0("LIR code should not be subject to equality checks.");
    }

    public final C4515j0 d(Object obj) {
        QS qs = this.f45411m;
        if (qs == null) {
            return null;
        }
        return (C4515j0) qs.f43584b.get(obj);
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.b(new Function() {
            @Override
            public final Object apply(Object obj) {
                YS[] ysArr;
                ysArr = ((WS) obj).f45405g;
                return ysArr;
            }
        }).f(new Function() {
            @Override
            public final Object apply(Object obj) {
                SS[] ssArr;
                ssArr = ((WS) obj).f45406h;
                return ssArr;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((WS) obj).f45407i;
                return i10;
            }
        }).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                byte[] bArr;
                bArr = ((WS) obj).f45408j;
                return bArr;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((WS) obj).f45409k;
                return i10;
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                VS vs;
                vs = ((WS) obj).f45410l;
                return vs;
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                QS qs;
                qs = ((WS) obj).f45411m;
                return qs;
            }
        }).a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return WS.h((WS) obj);
            }
        });
    }

    @Override
    public final C9374s8 a(InterfaceC5426Ka interfaceC5426Ka) {
        throw new C5417Jv0();
    }

    @Override
    public final C7215fB a(com.android.tools.r8.graph.H5 h52, C4798y c4798y, EW.a aVar) {
        return HS.a(h52, this, new C7535h60(this, new C10523z10()), c4798y, null, c4798y.v().f(h52.d().Q0().a(c4798y), h52.getReference()), aVar);
    }

    @Override
    public final C7215fB a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, C4798y c4798y, AbstractC5308Hz abstractC5308Hz, C10523z10 c10523z10, B60 b60, com.android.tools.r8.graph.proto.j jVar) {
        boolean z10 = f45402o;
        if (!z10 && c10523z10 == null) {
            throw new AssertionError();
        }
        if (!z10 && b60 == null) {
            throw new AssertionError();
        }
        if (!z10 && jVar == null) {
            throw new AssertionError();
        }
        return HS.a(h53, this, new C7535h60(this, c10523z10), c4798y, b60, jVar, EW.d());
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC4446f6 abstractC4446f6) {
        if (!f45402o && !abstractC4446f6.f37178c.d()) {
            throw new AssertionError();
        }
        for (SS ss : this.f45406h) {
            if (ss.b()) {
                abstractC4446f6.a(ss.a(h52.getReference(), h52.d().F0()));
            }
        }
        C9925vT c9925vT = new C9925vT(this, abstractC4446f6);
        C7089eT it = iterator();
        while (it.hasNext()) {
            InterfaceC6923dT next = it.next();
            C6899dH c6899dH = this.f45412n;
            if (c6899dH != null) {
                c9925vT.f53125d = (C9374s8) c6899dH.get(next.f());
            }
            c9925vT.a(next);
            if (abstractC4446f6.f37178c.c()) {
                return;
            }
        }
        VS vs = this.f45410l;
        if (vs != null) {
            C6732cH c6732cH = new C6732cH(((VG) vs.f45060b.values()).f45009b);
            while (c6732cH.hasNext()) {
                Iterator it2 = ((N8) c6732cH.f47013h.f47341c[c6732cH.a()]).f42510b.iterator();
                while (it2.hasNext()) {
                    abstractC4446f6.a((com.android.tools.r8.graph.M2) it2.next());
                    if (abstractC4446f6.f37178c.c()) {
                        return;
                    }
                }
            }
        }
    }

    @Override
    public final void a(C4421e0 c4421e0, C5563Mi c5563Mi) {
        throw new C6501av0();
    }

    @Override
    public final SG a(C4798y c4798y, C4516j1 c4516j1) {
        throw new C6501av0();
    }

    @Override
    public final String a(C4516j1 c4516j1, C9970vk0 c9970vk0) {
        return new C7922jT(this).j();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final SS[] a(B60 b60, com.android.tools.r8.graph.A2 a22, boolean z10, Consumer consumer) {
        B60 a10;
        SS[] ssArr;
        SS[] ssArr2;
        if (z10 && this.f45406h.length == 0) {
            consumer.accept(b60);
            return SS.f44209c;
        }
        SS[] ssArr3 = this.f45406h;
        int i10 = 0;
        if (ssArr3.length > 0) {
            SS ss = ssArr3[0];
            if (ss.f44210b == 0) {
                a10 = ss.a(a22, z10);
                J8 j82 = new J8(b60, this.f45406h.length, a22, z10, a10);
                ssArr = this.f45406h;
                if (ssArr.length != 0) {
                    ssArr2 = new SS[]{new TS(0, j82.f41304c)};
                } else {
                    SS[] ssArr4 = new SS[ssArr.length];
                    while (true) {
                        SS[] ssArr5 = this.f45406h;
                        if (i10 >= ssArr5.length) {
                            break;
                        }
                        SS ss2 = ssArr5[i10];
                        ssArr4[i10] = new TS(ss2.f44210b, j82.b(ss2.a(a22, z10)));
                        i10++;
                    }
                    ssArr2 = ssArr4;
                }
                consumer.accept(j82.f41304c);
                return ssArr2;
            }
        }
        B60.c.a a11 = B60.c.t().a(0).a(a22);
        a11.f38816e = z10;
        a10 = ((B60.c.a) a11.c()).a();
        J8 j822 = new J8(b60, this.f45406h.length, a22, z10, a10);
        ssArr = this.f45406h;
        if (ssArr.length != 0) {
        }
        consumer.accept(j822.f41304c);
        return ssArr2;
    }

    @Override
    public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22, boolean z10, com.android.tools.r8.graph.A2 a23, boolean z11, C4724u1 c4724u1) {
        B60.c.a a10 = B60.c.t().a(0).a(a22);
        a10.f38816e = true;
        SS[] a11 = a(a10.a(), a23, z11, new Consumer() {
            @Override
            public final void accept(Object obj) {
                WS.a((B60) obj);
            }
        });
        return Arrays.equals(this.f45406h, a11) ? this : new WS(this.f45405g, a11, this.f45407i, this.f45408j, this.f45409k, this.f45410l, this.f45411m, this.f45403e, this.f45404f, this.f45412n);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, boolean z10, Consumer consumer) {
        for (SS ss : this.f45406h) {
            consumer.accept(ss.a(a22, z10));
        }
    }
}
