package com.android.tools.r8.synthesis;

public interface E {
    static A a(A a10) {
        return a10;
    }

    static E b() {
        return new E() {
            @Override
            public final A a() {
                return E.c();
            }
        };
    }

    static A c() {
        return new B();
    }

    static E d() {
        final D d10 = new D();
        return new E() {
            @Override
            public final A a() {
                return E.a(C.this);
            }
        };
    }

    static E e() {
        final C c10 = new C();
        return new E() {
            @Override
            public final A a() {
                return E.a(A.this);
            }
        };
    }

    A a();

    static A a(C c10) {
        return c10;
    }
}
