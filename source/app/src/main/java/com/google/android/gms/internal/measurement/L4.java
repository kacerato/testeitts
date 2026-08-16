package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Map;

public final class L4 extends C12130n {

    public final C12031c f61976c;

    public L4(C12031c c12031c) {
        this.f61976c = c12031c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    public final InterfaceC12157q h(String str, C12079h2 c12079h2, List list) {
        char c10;
        switch (str.hashCode()) {
            case 21624207:
                if (str.equals("getEventName")) {
                    c10 = 0;
                    break;
                }
                c10 = '\uffff';
                break;
            case 45521504:
                if (str.equals("getTimestamp")) {
                    c10 = 3;
                    break;
                }
                c10 = '\uffff';
                break;
            case 146575578:
                if (str.equals("getParamValue")) {
                    c10 = 1;
                    break;
                }
                c10 = '\uffff';
                break;
            case 700587132:
                if (str.equals("getParams")) {
                    c10 = 2;
                    break;
                }
                c10 = '\uffff';
                break;
            case 920706790:
                if (str.equals("setParamValue")) {
                    c10 = 5;
                    break;
                }
                c10 = '\uffff';
                break;
            case 1570616835:
                if (str.equals("setEventName")) {
                    c10 = 4;
                    break;
                }
                c10 = '\uffff';
                break;
            default:
                c10 = '\uffff';
                break;
        }
        if (c10 == 0) {
            I2.a("getEventName", 0, list);
            return new C12192u(this.f61976c.c().b());
        }
        if (c10 == 1) {
            I2.a("getParamValue", 1, list);
            return C12098j3.a(this.f61976c.c().e(c12079h2.a((InterfaceC12157q) list.get(0)).P1()));
        }
        if (c10 == 2) {
            I2.a("getParams", 0, list);
            Map f10 = this.f61976c.c().f();
            C12130n c12130n = new C12130n();
            for (String str2 : f10.o()) {
                c12130n.f(str2, C12098j3.a(f10.get(str2)));
            }
            return c12130n;
        }
        if (c10 == 3) {
            I2.a("getTimestamp", 0, list);
            return new C12094j(Double.valueOf(this.f61976c.c().a()));
        }
        if (c10 != 4) {
            if (c10 != 5) {
                return super.h(str, c12079h2, list);
            }
            I2.a("setParamValue", 2, list);
            String P12 = c12079h2.a((InterfaceC12157q) list.get(0)).P1();
            InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) list.get(1));
            this.f61976c.c().d(P12, I2.j(a10));
            return a10;
        }
        I2.a("setEventName", 1, list);
        InterfaceC12157q a11 = c12079h2.a((InterfaceC12157q) list.get(0));
        if (InterfaceC12157q.f62394o4.equals(a11) || InterfaceC12157q.f62395p4.equals(a11)) {
            throw new IllegalArgumentException("Illegal event name");
        }
        this.f61976c.c().c(a11.P1());
        return new C12192u(a11.P1());
    }
}
