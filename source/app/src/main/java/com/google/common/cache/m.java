package com.google.common.cache;

import java.util.concurrent.atomic.AtomicLong;
import w2.Q;

@v2.b(emulated = true)
@g
public final class m {

    public static final Q<l> f65569a;

    public class a implements Q<l> {
        @Override
        public l get() {
            return new n();
        }
    }

    public class b implements Q<l> {
        @Override
        public l get() {
            return new c(null);
        }
    }

    public static final class c extends AtomicLong implements l {
        public c() {
        }

        @Override
        public void M0(long j10) {
            getAndAdd(j10);
        }

        @Override
        public void N0() {
            getAndIncrement();
        }

        @Override
        public long o() {
            return get();
        }

        public c(a aVar) {
            this();
        }
    }

    static {
        Q<l> bVar;
        try {
            new n();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        f65569a = bVar;
    }

    public static l a() {
        return f65569a.get();
    }
}
