package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Function;

public final class C9456sg extends AbstractC8455mg implements InterfaceC9623tg {

    public static final boolean f52431c = true;

    public final HashMap f52432b;

    public C9456sg(HashMap hashMap) {
        this.f52432b = hashMap;
        boolean z10 = f52431c;
        if (!z10 && hashMap.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && a(AbstractC10330xt.m()).isUnknown()) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static InterfaceC8956pg a(C4798y c4798y, com.android.tools.r8.graph.F2 f22, InterfaceC8956pg interfaceC8956pg, InterfaceC8956pg interfaceC8956pg2, AbstractC4939Bo0 abstractC4939Bo0) {
        if (interfaceC8956pg == 0) {
            return (InterfaceC8956pg) abstractC4939Bo0.a(interfaceC8956pg2);
        }
        AbstractC10267xX abstractC10267xX = (AbstractC10267xX) interfaceC8956pg;
        if (!(abstractC10267xX instanceof C9669tv0)) {
            AbstractC10267xX abstractC10267xX2 = (AbstractC10267xX) interfaceC8956pg2;
            abstractC10267xX2.getClass();
            if (!(abstractC10267xX2 instanceof C9669tv0)) {
                if (!f52431c && !(abstractC10267xX instanceof C8622ng)) {
                    throw new AssertionError();
                }
                return interfaceC8956pg.b().a(c4798y, f22, interfaceC8956pg2.b(), abstractC4939Bo0);
            }
        }
        return C9669tv0.f52729a;
    }

    @Override
    public final InterfaceC9623tg i() {
        return this;
    }

    @Override
    public final C9456sg j() {
        return this;
    }

    public C9456sg(C10664zt c10664zt, InterfaceC8956pg interfaceC8956pg) {
        HashMap hashMap = new HashMap(1);
        this.f52432b = hashMap;
        hashMap.put(c10664zt, interfaceC8956pg);
        if (!f52431c && a(AbstractC10330xt.m()).isUnknown()) {
            throw new AssertionError();
        }
    }

    public final void a(BiConsumer biConsumer) {
        this.f52432b.forEach(biConsumer);
    }

    public final InterfaceC10100wX a(C10664zt c10664zt) {
        InterfaceC8956pg interfaceC8956pg = (InterfaceC8956pg) this.f52432b.get(c10664zt);
        return interfaceC8956pg != null ? interfaceC8956pg : C9371s7.f52282a;
    }

    @Override
    public final InterfaceC10100wX a() {
        boolean z10 = f52431c;
        if (!z10 && this.f52432b.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && a(AbstractC10330xt.m()).isUnknown()) {
            throw new AssertionError();
        }
        final HashMap hashMap = new HashMap();
        this.f52432b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Map.this.put((C10664zt) obj, ((InterfaceC8956pg) obj2).a());
            }
        });
        return new C9456sg(hashMap);
    }

    public final AbstractC10267xX a(C4798y c4798y, Function function, com.android.tools.r8.graph.D2 d22) {
        C10650zo0 c10650zo0 = AbstractC4939Bo0.f39020a;
        boolean z10 = f52431c;
        if (!z10 && this.f52432b.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && a(AbstractC10330xt.m()).isUnknown()) {
            throw new AssertionError();
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.f52432b.entrySet()) {
            C10664zt c10664zt = (C10664zt) function.apply((C10664zt) entry.getKey());
            if (c10664zt != null) {
                InterfaceC10100wX a10 = a(c4798y, d22, (InterfaceC8956pg) hashMap.get(c10664zt), (InterfaceC8956pg) entry.getValue(), c10650zo0);
                if (c10664zt.l()) {
                    AbstractC10267xX abstractC10267xX = (AbstractC10267xX) a10;
                    abstractC10267xX.getClass();
                    if (abstractC10267xX instanceof C9669tv0) {
                        return C9669tv0.f52729a;
                    }
                }
                hashMap.put(c10664zt, a10);
            }
        }
        if (hashMap.isEmpty()) {
            return C9371s7.f52282a;
        }
        return new C9456sg(hashMap);
    }
}
