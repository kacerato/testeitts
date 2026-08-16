package com.android.tools.r8.internal;

import java.util.Iterator;

public abstract class AbstractC6367a6 {
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005d, code lost:
    
        if (r4 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007a, code lost:
    
        if (com.android.tools.r8.internal.AbstractC10241xK.b(r1, com.android.tools.r8.internal.X60.a(new com.android.tools.r8.internal.B41(r3))) == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007c, code lost:
    
        r1.next();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(C7215fB c7215fB, AbstractC7552hC abstractC7552hC, C8570nJ c8570nJ) {
        Z5 z52 = new Z5(c7215fB, c7215fB.f47897d.size());
        int i10 = 0;
        while (z52.f46159b.hasPrevious()) {
            W5 w52 = (W5) z52.previous();
            final C7920jS c7920jS = new C7920jS(w52, w52.l().size());
            while (true) {
                boolean z10 = false;
                while (true) {
                    Iterator it = abstractC7552hC.iterator();
                    while (it.hasNext()) {
                        z10 |= ((InterfaceC6534b6) it.next()).a(c7920jS);
                    }
                    if (!c7920jS.hasPrevious()) {
                        break;
                    }
                    int i11 = c8570nJ.f50599F1.f50915x0;
                    if (i11 != -1) {
                        if (i10 > i11) {
                            throw new C5325If("Too many iterations in BasicBlockMuncher");
                        }
                        i10++;
                    }
                    c7920jS.previous();
                }
                c7920jS = new C7920jS(w52, w52.l().size());
            }
        }
    }
}
