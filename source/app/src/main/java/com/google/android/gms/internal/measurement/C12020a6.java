package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

public final class C12020a6 implements InterfaceC12083h6 {

    public final W5 f62219a;

    public final AbstractC12181s6 f62220b;

    public final boolean f62221c;

    public final AbstractC12037c5 f62222d;

    public C12020a6(AbstractC12181s6 abstractC12181s6, AbstractC12037c5 abstractC12037c5, W5 w52) {
        this.f62220b = abstractC12181s6;
        this.f62221c = w52 instanceof AbstractC12136n5;
        this.f62222d = abstractC12037c5;
        this.f62219a = w52;
    }

    public static C12020a6 i(AbstractC12181s6 abstractC12181s6, AbstractC12037c5 abstractC12037c5, W5 w52) {
        return new C12020a6(abstractC12181s6, abstractC12037c5, w52);
    }

    @Override
    public final Object N1() {
        W5 w52 = this.f62219a;
        return w52 instanceof AbstractC12163q5 ? ((AbstractC12163q5) w52).m() : w52.b().D2();
    }

    @Override
    public final int a(Object obj) {
        int h10 = ((AbstractC12163q5) obj).zzc.h();
        return this.f62221c ? h10 + ((AbstractC12136n5) obj).zzb.g() : h10;
    }

    @Override
    public final int b(Object obj) {
        int hashCode = ((AbstractC12163q5) obj).zzc.hashCode();
        return this.f62221c ? (hashCode * 53) + ((AbstractC12136n5) obj).zzb.f62290a.hashCode() : hashCode;
    }

    @Override
    public final void c(Object obj, E6 e62) throws IOException {
        Iterator c10 = ((AbstractC12136n5) obj).zzb.c();
        while (c10.hasNext()) {
            Map.Entry entry = (Map.Entry) c10.next();
            InterfaceC12064f5 interfaceC12064f5 = (InterfaceC12064f5) entry.getKey();
            if (interfaceC12064f5.P1() != D6.MESSAGE || interfaceC12064f5.Q1() || interfaceC12064f5.R1()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof C5) {
                e62.y(interfaceC12064f5.N1(), ((C5) entry).b().c());
            } else {
                e62.y(interfaceC12064f5.N1(), entry.getValue());
            }
        }
        ((AbstractC12163q5) obj).zzc.f(e62);
    }

    @Override
    public final void d(Object obj, Object obj2) {
        C12101j6.d(this.f62220b, obj, obj2);
        if (this.f62221c) {
            C12101j6.c(this.f62222d, obj, obj2);
        }
    }

    @Override
    public final boolean e(Object obj) {
        return ((AbstractC12136n5) obj).zzb.e();
    }

    @Override
    public final void f(Object obj) {
        this.f62220b.b(obj);
        this.f62222d.a(obj);
    }

    @Override
    public final void g(Object obj, byte[] bArr, int i10, int i11, G4 g42) throws IOException {
        AbstractC12163q5 abstractC12163q5 = (AbstractC12163q5) obj;
        if (abstractC12163q5.zzc == C12190t6.a()) {
            abstractC12163q5.zzc = C12190t6.b();
        }
        throw null;
    }

    @Override
    public final boolean h(Object obj, Object obj2) {
        if (!((AbstractC12163q5) obj).zzc.equals(((AbstractC12163q5) obj2).zzc)) {
            return false;
        }
        if (this.f62221c) {
            return ((AbstractC12136n5) obj).zzb.equals(((AbstractC12136n5) obj2).zzb);
        }
        return true;
    }
}
