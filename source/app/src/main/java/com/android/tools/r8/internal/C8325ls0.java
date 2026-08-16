package com.android.tools.r8.internal;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.function.BiConsumer;
import java.util.function.Function;

public class C8325ls0 {

    public static final boolean f50127e = true;

    public final C7825is0 f50128a;

    public final C7991js0 f50129b;

    public int f50130c = 0;

    public C7825is0 f50131d = new C7825is0("<zero>", false);

    /* JADX WARN: Multi-variable type inference failed */
    public C8325ls0(String str, int i10, C8659ns0 c8659ns0) {
        this.f50128a = (C7825is0) (c8659ns0 instanceof C8492ms0 ? ((C8492ms0) c8659ns0).f50443h.f51100b : c8659ns0.f51100b).peek();
        this.f50129b = new C7991js0(this, str, c8659ns0.f51101c, i10);
    }

    public void a(Collection collection) {
        ArrayDeque arrayDeque;
        final boolean z10 = this.f50129b.f49079b;
        final ArrayDeque arrayDeque2 = new ArrayDeque();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            C8659ns0 c8659ns0 = (C8659ns0) it.next();
            if (c8659ns0 != C8659ns0.c()) {
                if (c8659ns0 instanceof C8492ms0) {
                    arrayDeque = ((C8492ms0) c8659ns0).f50443h.f51100b;
                } else {
                    arrayDeque = c8659ns0.f51100b;
                }
                if (!f50127e && !arrayDeque.isEmpty()) {
                    throw new AssertionError((Object) "Expected sub-timing to have completed prior to merge");
                }
                this.f50130c++;
                C7991js0 c7991js0 = this.f50129b;
                long j10 = c7991js0.f49081d;
                C7825is0 c7825is0 = c8659ns0.f51099a;
                c7991js0.f49081d = j10 + c7825is0.f49081d;
                C7825is0 c7825is02 = this.f50131d;
                if (c7825is02 != null && c7825is0.f49081d > c7825is02.f49081d) {
                    this.f50131d = c7825is0;
                }
                arrayDeque2.addLast(new C8158ks0(c7991js0, c7825is0));
            }
        }
        while (!arrayDeque2.isEmpty()) {
            final C8158ks0 c8158ks0 = (C8158ks0) arrayDeque2.pollFirst();
            c8158ks0.f49795b.f49080c.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C8325ls0.a(C8158ks0.this, z10, arrayDeque2, (String) obj, (C7825is0) obj2);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(C8158ks0 c8158ks0, final boolean z10, Deque deque, String str, C7825is0 c7825is0) {
        C7825is0 c7825is02 = (C7825is0) c8158ks0.f49794a.f49080c.computeIfAbsent(str, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8325ls0.a(z10, (String) obj);
            }
        });
        c7825is02.f49081d += c7825is0.f49081d;
        c7825is02.f49084g = c7825is0.f49084g;
        if (c7825is0.f49080c.isEmpty()) {
            return;
        }
        deque.addLast(new C8158ks0(c7825is02, c7825is0));
    }

    public static C7825is0 a(boolean z10, String str) {
        return new C7825is0(str, z10);
    }

    public void a() {
        if (!f50127e) {
            C7825is0 c7825is0 = this.f50128a;
            String str = this.f50129b.f49078a;
            if (!C8659ns0.f51098g && c7825is0.f49080c.containsKey(str)) {
                throw new AssertionError((Object) "Ambiguous timing chain. Insert a begin/end to fix");
            }
        }
        this.f50129b.a();
        LinkedHashMap linkedHashMap = this.f50128a.f49080c;
        C7991js0 c7991js0 = this.f50129b;
        linkedHashMap.put(c7991js0.f49078a, c7991js0);
    }
}
