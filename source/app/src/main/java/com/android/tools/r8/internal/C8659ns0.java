package com.android.tools.r8.internal;

import android.icu.text.DateFormat;
import eg.C13143u0;
import java.util.ArrayDeque;
import java.util.LinkedHashMap;

public class C8659ns0 implements AutoCloseable {

    public static final int f51095d;

    public static final int f51096e;

    public static final C7492gs0 f51097f;

    public static final boolean f51098g = true;

    public final C7825is0 f51099a;

    public final ArrayDeque f51100b;

    public final boolean f51101c;

    static {
        String property = System.getProperty("com.android.tools.r8.printtimes.minvalue_ms");
        f51095d = property != null ? Integer.parseInt(property) : 10;
        String property2 = System.getProperty("com.android.tools.r8.printtimes.minvalue");
        f51096e = property2 != null ? Integer.parseInt(property2) : 0;
        f51097f = new C7492gs0();
    }

    public C8659ns0(String str, boolean z10) {
        this.f51101c = z10;
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f51100b = arrayDeque;
        C7825is0 c7825is0 = new C7825is0(str, z10);
        this.f51099a = c7825is0;
        arrayDeque.push(c7825is0);
    }

    public static C8659ns0 a(C8570nJ c8570nJ, String str) {
        C8659ns0 c8659ns0;
        if (!c8570nJ.f50727v && !C8570nJ.b()) {
            c8659ns0 = c();
        } else {
            c8659ns0 = new C8659ns0(str, c8570nJ.f50730w);
        }
        return c8570nJ.f50668c != null ? new C8492ms0(c8570nJ, c8659ns0) : c8659ns0;
    }

    public static String b(long j10) {
        return a(j10 / 1024) + "k";
    }

    public static C8659ns0 c() {
        return f51097f;
    }

    @Override
    public final void close() {
        d();
    }

    public C8659ns0 d() {
        ((C7825is0) this.f51100b.peek()).a();
        this.f51100b.pop();
        return this;
    }

    public void e() {
        boolean z10 = f51098g;
        if (!z10 && this.f51100b.size() != 1) {
            throw new AssertionError((Object) ("Unexpected non-singleton stack: " + ((Object) this.f51100b)));
        }
        C7825is0 c7825is0 = (C7825is0) this.f51100b.peek();
        if (!z10 && c7825is0 != this.f51099a) {
            throw new AssertionError();
        }
        c7825is0.a();
        System.out.println("Recorded timings:");
        c7825is0.a(0, c7825is0);
    }

    public static String c(long j10) {
        return (j10 / C13143u0.f85788e) + DateFormat.MINUTE_SECOND;
    }

    public C8659ns0 b(String str) {
        C7825is0 c7825is0;
        C7825is0 c7825is02 = (C7825is0) this.f51100b.peek();
        if (c7825is02.f49080c.containsKey(str)) {
            c7825is0 = (C7825is0) c7825is02.f49080c.get(str);
            if (!C7825is0.f49077h && c7825is0.f49082e != -1) {
                throw new AssertionError();
            }
            if (c7825is0.f49079b) {
                System.gc();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("Memory", new C7659hs0(Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()));
                c7825is0.f49083f = linkedHashMap;
            }
            c7825is0.f49082e = System.nanoTime();
        } else {
            C7825is0 c7825is03 = new C7825is0(str, this.f51101c);
            c7825is02.f49080c.put(str, c7825is03);
            c7825is0 = c7825is03;
        }
        this.f51100b.push(c7825is0);
        return this;
    }

    public C8325ls0 a(int i10, String str) {
        boolean z10 = f51098g;
        if (!z10 && this.f51100b.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10) {
            C7825is0 c7825is0 = (C7825is0) this.f51100b.peekFirst();
            if (!z10 && c7825is0.f49080c.containsKey(str)) {
                throw new AssertionError((Object) "Ambiguous timing chain. Insert a begin/end to fix");
            }
        }
        return new C8325ls0(str, i10, this);
    }

    public static String a(long j10, long j11) {
        return ((j10 * 100) / j11) + ve.j.f121589a;
    }

    public static String a(long j10) {
        long abs = Math.abs(j10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(abs);
        String sb3 = sb2.toString();
        if (sb3.length() < 4) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(j10);
            return sb4.toString();
        }
        StringBuilder sb5 = new StringBuilder();
        if (j10 < 0) {
            sb5.append('-');
        }
        int length = sb3.length() % 3;
        sb5.append((CharSequence) sb3, 0, length);
        while (length < sb3.length()) {
            if (length > 0) {
                sb5.append('.');
            }
            int i10 = length + 3;
            sb5.append((CharSequence) sb3, length, i10);
            length = i10;
        }
        return sb5.toString();
    }

    public void a(String str, InterfaceC5930Sr0 interfaceC5930Sr0) {
        b(str);
        try {
            interfaceC5930Sr0.a();
        } finally {
            d();
        }
    }

    public Object a(String str, InterfaceC7158es0 interfaceC7158es0) {
        b(str);
        try {
            return interfaceC7158es0.get();
        } finally {
            d();
        }
    }
}
