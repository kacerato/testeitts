package com.android.tools.r8.internal;

import com.android.tools.r8.C11699z2;
import com.bumptech.glide.load.engine.GlideException;
import eg.C13143u0;
import java.io.PrintStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Consumer;

public class C7825is0 {

    public static final boolean f49077h = true;

    public final String f49078a;

    public final boolean f49079b;

    public final LinkedHashMap f49080c = new LinkedHashMap();

    public long f49081d = 0;

    public long f49082e;

    public LinkedHashMap f49083f;

    public LinkedHashMap f49084g;

    public C7825is0(String str, boolean z10) {
        this.f49078a = str;
        this.f49079b = z10;
        if (z10) {
            int i10 = C8659ns0.f51095d;
            System.gc();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("Memory", new C7659hs0(Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()));
            this.f49083f = linkedHashMap;
        }
        this.f49082e = System.nanoTime();
    }

    public static void b(int i10) {
        if (i10 > 0) {
            PrintStream printStream = System.out;
            printStream.print(C11699z2.a(GlideException.a.f59088e, i10));
            printStream.print("- ");
        }
    }

    public final void a() {
        long nanoTime = (System.nanoTime() - this.f49082e) + this.f49081d;
        this.f49081d = nanoTime;
        this.f49082e = -1L;
        if (!f49077h && nanoTime < 0) {
            throw new AssertionError();
        }
        if (this.f49079b) {
            int i10 = C8659ns0.f51095d;
            System.gc();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("Memory", new C7659hs0(Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()));
            this.f49084g = linkedHashMap;
        }
    }

    public String toString() {
        return this.f49078a + ": " + C8659ns0.c(this.f49081d);
    }

    public final String a(C7825is0 c7825is0) {
        if (this == c7825is0) {
            return toString();
        }
        return "(" + C8659ns0.a(this.f49081d, c7825is0.f49081d) + ") " + toString();
    }

    public void a(final int i10, final C7825is0 c7825is0) {
        long j10 = 0;
        if (!f49077h && this.f49081d < 0) {
            throw new AssertionError();
        }
        long j11 = this.f49081d;
        if (j11 / C13143u0.f85788e < C8659ns0.f51095d) {
            return;
        }
        if ((j11 * 100) / c7825is0.f49081d < C8659ns0.f51096e) {
            return;
        }
        b(i10);
        System.out.println(a(c7825is0));
        if (this.f49079b) {
            a(i10);
        }
        if (this.f49080c.isEmpty()) {
            return;
        }
        Collection values = this.f49080c.values();
        Iterator it = values.iterator();
        while (it.hasNext()) {
            j10 += ((C7825is0) it.next()).f49081d;
        }
        long j12 = this.f49081d;
        if (j10 < j12) {
            long j13 = j12 - j10;
            if (j13 / C13143u0.f85788e >= C8659ns0.f51095d) {
                if ((100 * j13) / c7825is0.f49081d >= C8659ns0.f51096e) {
                    b(i10 + 1);
                    System.out.println("(" + C8659ns0.a(j13, c7825is0.f49081d) + ") Unaccounted: " + C8659ns0.c(j13));
                }
            }
        }
        values.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7825is0 c7825is02 = (C7825is0) obj;
                c7825is02.a(i10 + 1, c7825is0);
            }
        });
    }

    public final void a(int i10) {
        for (Map.Entry entry : this.f49083f.entrySet()) {
            if (((String) entry.getKey()).equals("Memory")) {
                for (int i11 = 0; i11 <= i10; i11++) {
                    System.out.print(GlideException.a.f59088e);
                }
                C7659hs0 c7659hs0 = (C7659hs0) this.f49084g.get(entry.getKey());
                C7659hs0 c7659hs02 = (C7659hs0) entry.getValue();
                System.out.println(((String) entry.getKey()) + " start: " + C8659ns0.b(c7659hs02.f48731a) + ", end: " + C8659ns0.b(c7659hs0.f48731a) + ", delta: " + C8659ns0.b(c7659hs0.f48731a - c7659hs02.f48731a));
            }
        }
    }
}
