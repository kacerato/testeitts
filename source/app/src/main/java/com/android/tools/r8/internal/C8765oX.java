package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.BitSet;
import java.util.Collections;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;

public final class C8765oX extends AbstractC8598nX {

    public static final C8765oX f51267b = new C8765oX(new C5000Cq(Collections.EMPTY_MAP));

    public static final boolean f51268c = true;

    public final C5000Cq f51269a;

    public C8765oX(C5000Cq c5000Cq) {
        this.f51269a = c5000Cq;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0123 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TW a(TW tw, C4798y c4798y, com.android.tools.r8.graph.F2 f22, TW tw2) {
        AbstractC10330xt a10;
        F1 b10;
        BitSet bitSet;
        boolean z10;
        BitSet s10;
        BitSet s11;
        BitSet bitSet2;
        boolean z11;
        boolean z12;
        BitSet bitSet3;
        int t10;
        if (tw2 == null) {
            return tw;
        }
        if (!(tw2 instanceof C5160Fj)) {
            tw.getClass();
            if (!(tw instanceof C5160Fj)) {
                if (f22.b().o0().S0()) {
                    a10 = AbstractC10330xt.m();
                } else {
                    a10 = tw2.n().a(c4798y, tw.n(), null, null);
                    if (f22.b().o0().I0()) {
                        a10 = AbstractC5363Ix0.a(c4798y, a10, f22.b().o0(), C8854p10.h());
                    } else if (!f22.b().o0().E0()) {
                        boolean z13 = f51268c;
                        if (!z13 && !f22.b().o0().P0()) {
                            throw new AssertionError();
                        }
                        if (!z13 && !a10.l()) {
                            throw new AssertionError();
                        }
                    }
                }
                AbstractC10330xt abstractC10330xt = a10;
                if (f22.b().o0().S0()) {
                    int i10 = F1.f40064a;
                    b10 = C10504yv0.f54195b;
                } else {
                    b10 = c4798y.f38428u.b(tw2.i(), tw.i(), f22.b().o0().b((C4798y<?>) c4798y));
                }
                int i11 = (tw2.G() && tw.G() && (t10 = tw2.t()) == tw.t()) ? t10 : -1;
                BitSet r10 = tw2.r();
                BitSet r11 = tw.r();
                if (r10 != null && r11 != null) {
                    BitSet bitSet4 = (BitSet) r10.clone();
                    bitSet4.and(r11);
                    if (!bitSet4.isEmpty()) {
                        bitSet = bitSet4;
                        z10 = f51268c;
                        if (z10 && bitSet != null && bitSet.isEmpty()) {
                            throw new AssertionError();
                        }
                        s10 = tw2.s();
                        s11 = tw.s();
                        if (s10 != null && s11 != null) {
                            bitSet3 = (BitSet) s10.clone();
                            bitSet3.and(s11);
                            if (!bitSet3.isEmpty()) {
                                bitSet2 = bitSet3;
                                if (z10 && bitSet2 != null && bitSet2.isEmpty()) {
                                    throw new AssertionError();
                                }
                                boolean z14 = tw2.C() && !tw.C();
                                z11 = !tw2.D() && tw.D();
                                z12 = !tw2.F() && tw.F();
                                int i12 = C8097kX.f49650j;
                                int i13 = F1.f40064a;
                                C10504yv0 c10504yv0 = C10504yv0.f54195b;
                                AbstractC10330xt.m();
                                boolean z15 = !z14;
                                if (!abstractC10330xt.l() && b10.isUnknown() && i11 < 0 && bitSet == null && bitSet2 == null && !z14 && !z11 && !z12) {
                                    return C5160Fj.f40293b;
                                }
                                return new C8097kX(b10, abstractC10330xt, z15, z11, bitSet, bitSet2, i11, z12);
                            }
                        }
                        bitSet2 = null;
                        if (z10) {
                        }
                        if (tw2.C()) {
                        }
                        if (tw2.D()) {
                        }
                        if (tw2.F()) {
                        }
                        int i122 = C8097kX.f49650j;
                        int i132 = F1.f40064a;
                        C10504yv0 c10504yv02 = C10504yv0.f54195b;
                        AbstractC10330xt.m();
                        boolean z152 = !z14;
                        if (!abstractC10330xt.l()) {
                        }
                        return new C8097kX(b10, abstractC10330xt, z152, z11, bitSet, bitSet2, i11, z12);
                    }
                }
                bitSet = null;
                z10 = f51268c;
                if (z10) {
                }
                s10 = tw2.s();
                s11 = tw.s();
                if (s10 != null) {
                    bitSet3 = (BitSet) s10.clone();
                    bitSet3.and(s11);
                    if (!bitSet3.isEmpty()) {
                    }
                }
                bitSet2 = null;
                if (z10) {
                }
                if (tw2.C()) {
                }
                if (tw2.D()) {
                }
                if (tw2.F()) {
                }
                int i1222 = C8097kX.f49650j;
                int i1322 = F1.f40064a;
                C10504yv0 c10504yv022 = C10504yv0.f54195b;
                AbstractC10330xt.m();
                boolean z1522 = !z14;
                if (!abstractC10330xt.l()) {
                }
                return new C8097kX(b10, abstractC10330xt, z1522, z11, bitSet, bitSet2, i11, z12);
            }
        }
        return C5160Fj.f40293b;
    }

    @Override
    public final C8765oX b() {
        return this;
    }

    public final void a(final C4798y c4798y, C8765oX c8765oX) {
        c8765oX.f51269a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8765oX.this.b(c4798y, (com.android.tools.r8.graph.F2) obj, (TW) obj2);
            }
        });
    }

    public final void b(final C4798y c4798y, com.android.tools.r8.graph.F2 f22, final TW tw) {
        this.f51269a.a(f22, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C8765oX.a(TW.this, c4798y, (com.android.tools.r8.graph.F2) obj, (TW) obj2);
            }
        });
    }
}
