package com.android.tools.r8.internal;

import java.util.List;

public final class C8116ke0 extends ZQ implements InterfaceC8676ny {

    public static final C8116ke0 f49699b = new C8116ke0();

    public C8116ke0() {
        super(1);
    }

    @Override
    public final Object a(Object obj) {
        C7131ej0 c7131ej0 = (C7131ej0) obj;
        int i10 = c7131ej0.f47762b;
        C5503Lg0 c5503Lg0 = i10 == 5 ? (C5503Lg0) c7131ej0.f47763c : C5503Lg0.f42036e;
        if (i10 == 4) {
            return AbstractC8972pl0.a((Object[]) new C7626hh0[]{c7131ej0.a()});
        }
        int i11 = c5503Lg0.f42038b;
        if (i11 == 2) {
            C6311Zh0 c6311Zh0 = c5503Lg0.a().f53822b;
            if (c6311Zh0 == null) {
                c6311Zh0 = C6311Zh0.f46320j;
            }
            GJ.b(c6311Zh0, "compoundValue.style.parent");
            InterfaceC8638nl0 a10 = AbstractC8972pl0.a((Object[]) new C7626hh0[]{C7626hh0.f48676e.toBuilder().a(c6311Zh0).build()});
            List list = c5503Lg0.a().f53824d;
            GJ.b(list, "compoundValue.style.entryList");
            return AbstractC8972pl0.b(AbstractC8972pl0.a((Object[]) new InterfaceC8638nl0[]{a10, new C4898Ax(new C7619hf(list), C7617he0.f48661b, C9806ul0.f52943h)}));
        }
        if (i11 == 4) {
            List list2 = (i11 == 4 ? (C10626zg0) c5503Lg0.f42039c : C10626zg0.f54442d).f54444b;
            GJ.b(list2, "compoundValue.array.elementList");
            return new C5874Rs0(new C7619hf(list2), C7784ie0.f49004b);
        }
        if (i11 != 5) {
            return C6220Xt.f45846a;
        }
        List list3 = (i11 == 5 ? (C5389Jh0) c5503Lg0.f42039c : C5389Jh0.f41453d).f41455b;
        GJ.b(list3, "compoundValue.plural.entryList");
        return new C5874Rs0(new C7619hf(list3), C7949je0.f49282b);
    }
}
