package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class I2 {
    public static void a(String str, int i10, List list) {
        if (list.size() != i10) {
            throw new IllegalArgumentException(String.format("%s operation requires %s parameters found %s", str, Integer.valueOf(i10), Integer.valueOf(list.size())));
        }
    }

    public static void b(String str, int i10, List list) {
        if (list.size() < i10) {
            throw new IllegalArgumentException(String.format("%s operation requires at least %s parameters found %s", str, Integer.valueOf(i10), Integer.valueOf(list.size())));
        }
    }

    public static void c(String str, int i10, List list) {
        if (list.size() > i10) {
            throw new IllegalArgumentException(String.format("%s operation requires at most %s parameters found %s", str, Integer.valueOf(i10), Integer.valueOf(list.size())));
        }
    }

    public static boolean d(InterfaceC12157q interfaceC12157q) {
        if (interfaceC12157q == null) {
            return false;
        }
        Double Q12 = interfaceC12157q.Q1();
        return !Q12.isNaN() && Q12.doubleValue() >= 0.0d && Q12.equals(Double.valueOf(Math.floor(Q12.doubleValue())));
    }

    public static N e(String str) {
        N n10 = null;
        if (str != null && !str.isEmpty()) {
            n10 = N.a(Integer.parseInt(str));
        }
        if (n10 != null) {
            return n10;
        }
        throw new IllegalArgumentException(String.format("Unsupported commandId %s", str));
    }

    public static boolean f(InterfaceC12157q interfaceC12157q, InterfaceC12157q interfaceC12157q2) {
        if (!interfaceC12157q.getClass().equals(interfaceC12157q2.getClass())) {
            return false;
        }
        if ((interfaceC12157q instanceof C12201v) || (interfaceC12157q instanceof C12139o)) {
            return true;
        }
        if (!(interfaceC12157q instanceof C12094j)) {
            return interfaceC12157q instanceof C12192u ? interfaceC12157q.P1().equals(interfaceC12157q2.P1()) : interfaceC12157q instanceof C12067g ? interfaceC12157q.R1().equals(interfaceC12157q2.R1()) : interfaceC12157q == interfaceC12157q2;
        }
        if (Double.isNaN(interfaceC12157q.Q1().doubleValue()) || Double.isNaN(interfaceC12157q2.Q1().doubleValue())) {
            return false;
        }
        return interfaceC12157q.Q1().equals(interfaceC12157q2.Q1());
    }

    public static int g(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10) || d10 == 0.0d) {
            return 0;
        }
        return (int) (((d10 > 0.0d ? 1 : -1) * Math.floor(Math.abs(d10))) % 4.294967296E9d);
    }

    public static long h(double d10) {
        return g(d10) & 4294967295L;
    }

    public static double i(double d10) {
        if (Double.isNaN(d10)) {
            return 0.0d;
        }
        if (Double.isInfinite(d10) || d10 == 0.0d || d10 == 0.0d) {
            return d10;
        }
        return (d10 > 0.0d ? 1 : -1) * Math.floor(Math.abs(d10));
    }

    public static Object j(InterfaceC12157q interfaceC12157q) {
        if (InterfaceC12157q.f62395p4.equals(interfaceC12157q)) {
            return null;
        }
        if (InterfaceC12157q.f62394o4.equals(interfaceC12157q)) {
            return "";
        }
        if (interfaceC12157q instanceof C12130n) {
            return k((C12130n) interfaceC12157q);
        }
        if (!(interfaceC12157q instanceof C12058f)) {
            return !interfaceC12157q.Q1().isNaN() ? interfaceC12157q.Q1() : interfaceC12157q.P1();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = ((C12058f) interfaceC12157q).iterator();
        while (it.hasNext()) {
            Object j10 = j((InterfaceC12157q) it.next());
            if (j10 != null) {
                arrayList.add(j10);
            }
        }
        return arrayList;
    }

    public static Map k(C12130n c12130n) {
        HashMap hashMap = new HashMap();
        for (String str : c12130n.i()) {
            Object j10 = j(c12130n.c(str));
            if (j10 != null) {
                hashMap.put(str, j10);
            }
        }
        return hashMap;
    }

    public static int l(C12079h2 c12079h2) {
        int g10 = g(c12079h2.h("runtime.counter").Q1().doubleValue() + 1.0d);
        if (g10 > 1000000) {
            throw new IllegalStateException("Instructions allowed exceeded");
        }
        c12079h2.e("runtime.counter", new C12094j(Double.valueOf(g10)));
        return g10;
    }
}
