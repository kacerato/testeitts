package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C10471yk0;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C6286Yx0;
import com.android.tools.r8.internal.C6301Zd0;
import com.android.tools.r8.internal.C6920dR0;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7777ic;
import com.android.tools.r8.internal.C7942jc;
import com.android.tools.r8.internal.C8854p10;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.internal.Z5;
import com.android.tools.r8.synthesis.S;
import java.util.Collections;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.UnaryOperator;

public final class v0 {

    public static final boolean f54947d = true;

    public final C4798y f54948a;

    public final com.android.tools.r8.androidapi.a f54949b;

    public final com.android.tools.r8.synthesis.J f54950c;

    public v0(C4798y c4798y) {
        this.f54948a = c4798y;
        this.f54949b = c4798y.f38404S;
        this.f54950c = c4798y.f38408a.g();
    }

    public final Set a(final C4514j c4514j, H5 h52, C7215fB c7215fB) {
        if (!this.f54950c.a(h52.p(), new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58168U;
                return bVar;
            }
        }) && !this.f54950c.a(h52.p(), new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58169V;
                return bVar;
            }
        })) {
            final M2 E10 = h52.E();
            if (!E10.I0()) {
                return Collections.EMPTY_SET;
            }
            if (E10 == this.f54948a.b().f38068i2) {
                return Collections.EMPTY_SET;
            }
            com.android.tools.r8.graph.E0 g10 = c4514j.g(E10);
            if (g10 != null && g10.f0()) {
                com.android.tools.r8.androidapi.a aVar = this.f54949b;
                int i10 = com.android.tools.r8.androidapi.f.f35602a;
                if (aVar.a(E10, com.android.tools.r8.androidapi.h.f35609b).U()) {
                    return Collections.EMPTY_SET;
                }
                final Set c10 = AbstractC5513Ll0.c();
                final Set c11 = AbstractC5513Ll0.c();
                c7215fB.f().forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        com.android.tools.r8.ir.optimize.v0.this.a(c4514j, E10, c10, c11, (W5) obj);
                    }
                });
                return c11;
            }
            return Collections.EMPTY_SET;
        }
        return Collections.EMPTY_SET;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bf, code lost:
    
        if (r2 == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c1, code lost:
    
        r8.add(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c4, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C4514j c4514j, M2 m22, Set set, Set set2, W5 w52) {
        boolean z10;
        C10471yk0 G02 = w52.i().G0();
        C10340xw0 i10 = G02.w2().i();
        C6286Yx0 c6286Yx0 = new C6286Yx0(set);
        c6286Yx0.b((C6286Yx0) i10);
        while (true) {
            if (!c6286Yx0.b()) {
                z10 = false;
                break;
            }
            C10340xw0 c10340xw0 = (C10340xw0) c6286Yx0.c();
            if (c10340xw0.j()) {
                c6286Yx0.b((Iterable) c10340xw0.l().c0());
            }
            AbstractC8999pu0 u10 = c10340xw0.u();
            if (!u10.s()) {
                if (!f54947d && !(u10 instanceof C6301Zd0) && !u10.r()) {
                    throw new AssertionError();
                }
            } else {
                M2 E10 = u10.b().E();
                com.android.tools.r8.graph.E0 g10 = c4514j.g(E10);
                if (g10 != null && g10.f0() && c4514j.b(E10, m22)) {
                    com.android.tools.r8.androidapi.a aVar = this.f54949b;
                    int i11 = com.android.tools.r8.androidapi.f.f35602a;
                    com.android.tools.r8.androidapi.f a10 = aVar.a(E10, com.android.tools.r8.androidapi.h.f35609b);
                    com.android.tools.r8.androidapi.f fVar = this.f54948a.f38405T;
                    if (!a10.U() && (!a10.q() || !a10.F().a().e(C2.G))) {
                        if (a10.b(fVar)) {
                            z10 = true;
                            if (fVar.b(C2.K_WATCH).c() ? true : a10.a(C2.R).c()) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }
    }

    public final void a(H5 h52, C7215fB c7215fB, Set set) {
        if (set.isEmpty()) {
            return;
        }
        Z5 u10 = c7215fB.u();
        while (u10.f46159b.hasNext()) {
            W5 w52 = (W5) u10.f46159b.next();
            u10.f46160c = w52;
            C10471yk0 G02 = w52.i().G0();
            if (G02 != null) {
                if (w52.z() && w52.a()) {
                    Y5 I10 = w52.I();
                    I10.a(new C6920dR0());
                    w52 = I10.a(c7215fB, u10, this.f54948a.E(), (UnaryOperator<W5>) null);
                }
                Y5 b10 = w52.b(w52.f45293f.size() - 1);
                M2 E10 = h52.E();
                C10340xw0 w22 = G02.w2();
                boolean z10 = C7942jc.f49273m;
                C7777ic c7777ic = new C7777ic();
                c7777ic.f48983e = w22;
                C4798y c4798y = this.f54948a;
                C8854p10 B10 = w22.u().B();
                E10.getClass();
                c7777ic.f52321a = c7215fB.a(AbstractC8999pu0.a(E10, B10, (C4798y<?>) c4798y), (C4515j0) null);
                c7777ic.f48982d = E10;
                c7777ic.f52322b = G02.getPosition();
                C7942jc c10 = c7777ic.c();
                b10.add(c10);
                AbstractC10561zE next = b10.next();
                if (!f54947d && !next.g2()) {
                    throw new AssertionError();
                }
                next.a(0, c10.d());
            }
        }
    }
}
