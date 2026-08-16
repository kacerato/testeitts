package com.google.common.util.concurrent;

import com.google.common.collect.Q1;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@A
@v2.b
public final class C12626p<K> implements Serializable {

    public final ConcurrentHashMap<K, AtomicLong> f67502b;

    @CheckForNull
    public transient Map<K, Long> f67503c;

    public class a implements InterfaceC15902t<AtomicLong, Long> {
        public a(C12626p c12626p) {
        }

        @Override
        public Long apply(AtomicLong atomicLong) {
            return Long.valueOf(atomicLong.get());
        }
    }

    public C12626p(ConcurrentHashMap<K, AtomicLong> concurrentHashMap) {
        this.f67502b = (ConcurrentHashMap) w2.H.E(concurrentHashMap);
    }

    public static <K> C12626p<K> e() {
        return new C12626p<>(new ConcurrentHashMap());
    }

    public static <K> C12626p<K> f(Map<? extends K, ? extends Long> map) {
        C12626p<K> e10 = e();
        e10.p(map);
        return e10;
    }

    @I2.a
    public long a(K k10, long j10) {
        AtomicLong atomicLong;
        long j11;
        long j12;
        do {
            atomicLong = this.f67502b.get(k10);
            if (atomicLong == null && (atomicLong = this.f67502b.putIfAbsent(k10, new AtomicLong(j10))) == null) {
                return j10;
            }
            do {
                j11 = atomicLong.get();
                if (j11 != 0) {
                    j12 = j11 + j10;
                }
            } while (!atomicLong.compareAndSet(j11, j12));
            return j12;
        } while (!this.f67502b.replace(k10, atomicLong, new AtomicLong(j10)));
        return j10;
    }

    public Map<K, Long> b() {
        Map<K, Long> map = this.f67503c;
        if (map != null) {
            return map;
        }
        Map<K, Long> g10 = g();
        this.f67503c = g10;
        return g10;
    }

    public void c() {
        this.f67502b.clear();
    }

    public boolean d(Object obj) {
        return this.f67502b.containsKey(obj);
    }

    public final Map<K, Long> g() {
        return Collections.unmodifiableMap(Q1.B0(this.f67502b, new a(this)));
    }

    @I2.a
    public long h(K k10) {
        return a(k10, -1L);
    }

    public long i(K k10) {
        AtomicLong atomicLong = this.f67502b.get(k10);
        if (atomicLong == null) {
            return 0L;
        }
        return atomicLong.get();
    }

    @I2.a
    public long j(K k10, long j10) {
        AtomicLong atomicLong;
        long j11;
        do {
            atomicLong = this.f67502b.get(k10);
            if (atomicLong == null && (atomicLong = this.f67502b.putIfAbsent(k10, new AtomicLong(j10))) == null) {
                return 0L;
            }
            do {
                j11 = atomicLong.get();
                if (j11 == 0) {
                }
            } while (!atomicLong.compareAndSet(j11, j11 + j10));
            return j11;
        } while (!this.f67502b.replace(k10, atomicLong, new AtomicLong(j10)));
        return 0L;
    }

    @I2.a
    public long k(K k10) {
        return j(k10, -1L);
    }

    @I2.a
    public long l(K k10) {
        return j(k10, 1L);
    }

    @I2.a
    public long m(K k10) {
        return a(k10, 1L);
    }

    public boolean n() {
        return this.f67502b.isEmpty();
    }

    @I2.a
    public long o(K k10, long j10) {
        AtomicLong atomicLong;
        long j11;
        do {
            atomicLong = this.f67502b.get(k10);
            if (atomicLong == null && (atomicLong = this.f67502b.putIfAbsent(k10, new AtomicLong(j10))) == null) {
                return 0L;
            }
            do {
                j11 = atomicLong.get();
                if (j11 == 0) {
                }
            } while (!atomicLong.compareAndSet(j11, j10));
            return j11;
        } while (!this.f67502b.replace(k10, atomicLong, new AtomicLong(j10)));
        return 0L;
    }

    public void p(Map<? extends K, ? extends Long> map) {
        for (Map.Entry<? extends K, ? extends Long> entry : map.entrySet()) {
            o(entry.getKey(), entry.getValue().longValue());
        }
    }

    public long q(K k10, long j10) {
        AtomicLong atomicLong;
        do {
            atomicLong = this.f67502b.get(k10);
            if (atomicLong == null && (atomicLong = this.f67502b.putIfAbsent(k10, new AtomicLong(j10))) == null) {
                return 0L;
            }
            long j11 = atomicLong.get();
            if (j11 != 0) {
                return j11;
            }
        } while (!this.f67502b.replace(k10, atomicLong, new AtomicLong(j10)));
        return 0L;
    }

    @I2.a
    public long r(K k10) {
        long j10;
        AtomicLong atomicLong = this.f67502b.get(k10);
        if (atomicLong == null) {
            return 0L;
        }
        do {
            j10 = atomicLong.get();
            if (j10 == 0) {
                break;
            }
        } while (!atomicLong.compareAndSet(j10, 0L));
        this.f67502b.remove(k10, atomicLong);
        return j10;
    }

    public boolean s(K k10, long j10) {
        AtomicLong atomicLong = this.f67502b.get(k10);
        if (atomicLong == null) {
            return false;
        }
        long j11 = atomicLong.get();
        if (j11 != j10) {
            return false;
        }
        if (j11 != 0 && !atomicLong.compareAndSet(j11, 0L)) {
            return false;
        }
        this.f67502b.remove(k10, atomicLong);
        return true;
    }

    public String toString() {
        return this.f67502b.toString();
    }

    public void u() {
        Iterator<Map.Entry<K, AtomicLong>> it = this.f67502b.entrySet().iterator();
        while (it.hasNext()) {
            AtomicLong value = it.next().getValue();
            if (value != null && value.get() == 0) {
                it.remove();
            }
        }
    }

    @I2.a
    @InterfaceC15800a
    public boolean v(K k10) {
        return s(k10, 0L);
    }

    public boolean w(K k10, long j10, long j11) {
        if (j10 == 0) {
            return q(k10, j11) == 0;
        }
        AtomicLong atomicLong = this.f67502b.get(k10);
        if (atomicLong == null) {
            return false;
        }
        return atomicLong.compareAndSet(j10, j11);
    }

    public int x() {
        return this.f67502b.size();
    }

    public long y() {
        Iterator<AtomicLong> it = this.f67502b.values().iterator();
        long j10 = 0;
        while (it.hasNext()) {
            j10 += it.next().get();
        }
        return j10;
    }
}
