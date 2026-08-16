package com.android.tools.r8.internal;

import java.util.Map;
import java.util.TreeMap;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class C8137kl0<V> {

    public static final boolean f49750d = true;

    public final boolean f49752b;

    public final TreeMap f49751a = new TreeMap();

    public int f49753c = 0;

    public C8137kl0(boolean z10) {
        this.f49752b = z10;
    }

    public V a(int i10) {
        Map.Entry<Integer, V> a10 = a(Integer.valueOf(i10));
        if (a10 != null) {
            return a10.getValue();
        }
        return null;
    }

    public Map.Entry<Integer, V> a(Integer num) {
        Map.Entry<Integer, V> floorEntry = this.f49751a.floorEntry(num);
        if (floorEntry == null || floorEntry.getValue() == null) {
            return null;
        }
        return floorEntry;
    }

    public C8137kl0<V> a(final int i10, final int i11, V v10) {
        Map.Entry<Integer, V> a10 = a(Integer.valueOf(i11));
        final C7 c72 = new C7(0);
        boolean removeIf = this.f49751a.navigableKeySet().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8137kl0.this.a(i10, i11, c72, (Integer) obj);
            }
        });
        if (a10 != null) {
            if (!f49750d && !this.f49752b) {
                throw new AssertionError();
            }
            if (removeIf) {
                c72.a((C7) Integer.valueOf(((Integer) c72.a()).intValue() - 1));
            }
        }
        this.f49751a.put(Integer.valueOf(i10), v10);
        int i12 = i11 + 1;
        if (!this.f49751a.containsKey(Integer.valueOf(i12))) {
            this.f49751a.put(Integer.valueOf(i12), a10 == null ? null : a10.getValue());
        }
        this.f49753c = (this.f49753c - ((Integer) c72.a()).intValue()) + 1;
        return this;
    }

    public final boolean a(int i10, int i11, C7 c72, Integer num) {
        if (i10 >= num.intValue() || num.intValue() > i11) {
            return false;
        }
        if (!f49750d && !this.f49752b) {
            throw new AssertionError();
        }
        if (this.f49751a.get(num) != null) {
            c72.a((C7) Integer.valueOf(((Integer) c72.a()).intValue() + 1));
        }
        return true;
    }

    public int a() {
        return this.f49753c;
    }

    public final void a(final Consumer consumer) {
        this.f49751a.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8137kl0.a(Consumer.this, obj);
            }
        });
    }

    public static void a(Consumer consumer, Object obj) {
        if (obj != null) {
            consumer.accept(obj);
        }
    }
}
