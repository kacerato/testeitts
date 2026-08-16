package com.android.tools.r8.internal;

import java.util.HashMap;

public class C7322fr0 {

    public static final boolean f48126c = true;

    public final HashMap f48127a = new HashMap();

    public final HashMap f48128b = new HashMap();

    public void a(AbstractC5635Np abstractC5635Np) {
        int u10 = abstractC5635Np.u();
        int w10 = abstractC5635Np.w() + u10;
        this.f48128b.put(Integer.valueOf(w10), new C7155er0(u10));
        if (this.f48127a.containsKey(Integer.valueOf(w10))) {
            a((AbstractC5004Cs) this.f48127a.remove(Integer.valueOf(w10)));
        }
    }

    public int[] b(int i10) {
        return ((C7155er0) this.f48128b.get(Integer.valueOf(i10))).f47794c;
    }

    public void a(AbstractC5004Cs abstractC5004Cs) {
        int u10 = abstractC5004Cs.u();
        C7155er0 c7155er0 = (C7155er0) this.f48128b.get(Integer.valueOf(u10));
        if (c7155er0 == null) {
            this.f48127a.put(Integer.valueOf(u10), abstractC5004Cs);
            return;
        }
        int[] P10 = abstractC5004Cs.P();
        int[] iArr = new int[P10.length];
        for (int i10 = 0; i10 < P10.length; i10++) {
            iArr[i10] = c7155er0.f47792a + P10[i10];
        }
        c7155er0.f47793b = iArr;
        c7155er0.f47794c = abstractC5004Cs.O();
    }

    public int[] a(int i10) {
        return ((C7155er0) this.f48128b.get(Integer.valueOf(i10))).f47793b;
    }
}
