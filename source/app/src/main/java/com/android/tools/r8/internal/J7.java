package com.android.tools.r8.internal;

import java.util.function.Function;

public final class J7 extends H7 {

    public C10340xw0 f41294c;

    public final DG f41295d;

    public W5 f41296e;

    public J7(B60 b60) {
        super(b60);
        this.f41295d = new DG();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final W5 a(C8382mB c8382mB) {
        final C8022k20 c8022k20 = new C8022k20();
        c8022k20.f45889b = -1;
        DG dg2 = this.f41295d;
        int i10 = dg2.f39474c;
        int[] iArr = new int[i10];
        int[] iArr2 = new int[i10];
        C9231rG c9231rG = new C9231rG(((C9398sG) dg2.o()).f52324c);
        int i11 = 0;
        while (c9231rG.hasNext()) {
            int i12 = c9231rG.a().f44050b;
            Integer num = (Integer) c8022k20.computeIfAbsent((W5) this.f41295d.get(i12), new Function() {
                @Override
                public final Object apply(Object obj) {
                    Integer valueOf;
                    valueOf = Integer.valueOf(Y0.this.size());
                    return valueOf;
                }
            });
            iArr[i11] = i12;
            iArr2[i11] = num.intValue();
            i11++;
        }
        C9569tI c9569tI = new C9569tI(this.f41294c, iArr, iArr2, ((Integer) c8022k20.computeIfAbsent(this.f41296e, new Function() {
            @Override
            public final Object apply(Object obj) {
                Integer valueOf;
                valueOf = Integer.valueOf(Y0.this.size());
                return valueOf;
            }
        })).intValue());
        c9569tI.b(this.f40683b);
        int i13 = this.f40682a;
        W5 w52 = new W5(c8382mB);
        w52.a(c9569tI, c8382mB);
        w52.a((C6382aB) null);
        w52.d(i13);
        C7022e20 c7022e20 = new C7022e20(((C7189f20) c8022k20.o()).f47823b);
        while (c7022e20.hasNext()) {
            w52.g((W5) c7022e20.f47581g.f49456c[c7022e20.b()]);
        }
        return w52;
    }
}
