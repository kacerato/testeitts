package com.android.tools.r8.internal;

public final class C5347Ip0 implements InterfaceC5636Np0 {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean a(AbstractC5289Hp0 abstractC5289Hp0, AbstractC5289Hp0 abstractC5289Hp02, C5578Mp0 c5578Mp0) {
        InterfaceC10486yp0 j10;
        String a10;
        String a11;
        C9818up0 g10 = abstractC5289Hp02.g();
        if (g10 != null && g10.o() && (j10 = abstractC5289Hp02.m().j()) != 0) {
            AbstractC5289Hp0 abstractC5289Hp03 = (AbstractC5289Hp0) j10;
            if (abstractC5289Hp03.p()) {
                if (((abstractC5289Hp03 instanceof C10319xp0) && c5578Mp0.f42412d.contains(abstractC5289Hp0)) || (a10 = AbstractC5694Op0.a(g10, c5578Mp0)) == null || (a11 = AbstractC5694Op0.a(j10, c5578Mp0)) == null) {
                    return false;
                }
                String str = a11 + a10;
                j10.a(str);
                c5578Mp0.f42409a.put(j10.a(), new C6816cp0(str));
                c5578Mp0.f42409a.put(g10.f52955e, C6982dp0.f47529a);
                abstractC5289Hp02.s();
                return true;
            }
        }
        return false;
    }
}
