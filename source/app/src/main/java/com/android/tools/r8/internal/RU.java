package com.android.tools.r8.internal;

import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.Map;

public final class RU extends AbstractC9997vt0 {

    public final C10331xt0 f43909a;

    public final C10331xt0 f43910b;

    public final InterfaceC10529z30 f43911c;

    public final SU f43912d;

    public RU(SU su, C5713Oz c5713Oz, Type type, AbstractC9997vt0 abstractC9997vt0, Type type2, AbstractC9997vt0 abstractC9997vt02, InterfaceC10529z30 interfaceC10529z30) {
        this.f43912d = su;
        this.f43909a = new C10331xt0(c5713Oz, abstractC9997vt0, type);
        this.f43910b = new C10331xt0(c5713Oz, abstractC9997vt02, type2);
        this.f43911c = interfaceC10529z30;
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        Map map = (Map) obj;
        if (map == null) {
            c9075qL.i();
            return;
        }
        this.f43912d.getClass();
        c9075qL.e();
        for (Map.Entry entry : map.entrySet()) {
            c9075qL.b(String.valueOf(entry.getKey()));
            this.f43910b.a(c9075qL, entry.getValue());
        }
        c9075qL.g();
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        int u10 = c8240lL.u();
        if (u10 == 9) {
            c8240lL.r();
            return null;
        }
        Map map = (Map) this.f43911c.a();
        if (u10 == 1) {
            c8240lL.c();
            while (c8240lL.k()) {
                c8240lL.c();
                Object a10 = this.f43909a.f53867b.a(c8240lL);
                if (map.put(a10, this.f43910b.f53867b.a(c8240lL)) == null) {
                    c8240lL.g();
                } else {
                    throw new C8407mL("duplicate key: " + a10);
                }
            }
            c8240lL.g();
            return map;
        }
        c8240lL.d();
        while (c8240lL.k()) {
            C8073kL.f49592a.getClass();
            if (c8240lL instanceof C8908pL) {
                C8908pL c8908pL = (C8908pL) c8240lL;
                c8908pL.c(5);
                Map.Entry entry = (Map.Entry) ((Iterator) c8908pL.A()).next();
                c8908pL.a(entry.getValue());
                c8908pL.a(new C7906jL((String) entry.getKey()));
            } else {
                int i10 = c8240lL.f49945h;
                if (i10 == 0) {
                    i10 = c8240lL.f();
                }
                if (i10 == 13) {
                    c8240lL.f49945h = 9;
                } else if (i10 == 12) {
                    c8240lL.f49945h = 8;
                } else if (i10 == 14) {
                    c8240lL.f49945h = 10;
                } else {
                    throw new IllegalStateException("Expected a name but was " + AbstractC8574nL.a(c8240lL.u()) + c8240lL.l());
                }
            }
            Object a11 = this.f43909a.f53867b.a(c8240lL);
            if (map.put(a11, this.f43910b.f53867b.a(c8240lL)) != null) {
                throw new C8407mL("duplicate key: " + a11);
            }
        }
        c8240lL.h();
        return map;
    }
}
