package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C9875v8;
import com.android.tools.r8.shaking.C11245i;
import java.util.Set;

public class C5186Fw {

    public final C4798y f40345a;

    public C5186Fw(C4798y c4798y) {
        this.f40345a = c4798y;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ce, code lost:
    
        r10.a(r8, new com.android.tools.r8.internal.WE0());
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d6, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(AbstractC7670hw abstractC7670hw, com.android.tools.r8.graph.F5 f52, C9875v8.a aVar) {
        com.android.tools.r8.graph.F5 r10;
        if (abstractC7670hw.F1()) {
            return;
        }
        C10340xw0 d10 = abstractC7670hw.R().d();
        Set<AbstractC10561zE> b02 = d10.b0();
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((Iterable) b02);
        boolean z10 = false;
        if (!d10.y() && !d10.B()) {
            c6286Yx0.b((Iterable) d10.b0());
            boolean z11 = false;
            while (true) {
                if (!c6286Yx0.b()) {
                    z10 = z11;
                    break;
                }
                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) c6286Yx0.c();
                if (!abstractC10561zE.l1() && !abstractC10561zE.W1() && !abstractC10561zE.n2()) {
                    if (!abstractC10561zE.F1()) {
                        break;
                    }
                    InterfaceC10172ww T10 = abstractC10561zE.T();
                    C4554l1 field = T10.getField();
                    C4554l1 reference = f52.getReference();
                    if (!field.f38298g.g(reference.f38298g) || !field.f37449i.a(reference.f37449i) || T10.e() != f52.getAccessFlags().n() || (r10 = ((C11245i) this.f40345a.f()).c(field).r()) == null || r10.d() != f52.d() || r10.getHolder() != f52.getHolder()) {
                        break;
                    } else {
                        z11 = true;
                    }
                } else {
                    C10340xw0 d11 = abstractC10561zE.d();
                    if (d11.y() || d11.B()) {
                        break;
                    } else {
                        c6286Yx0.b((Iterable) d11.b0());
                    }
                }
            }
        }
    }
}
