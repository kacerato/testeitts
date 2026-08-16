package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C9931vW extends C10098wW {

    public final byte[] f53133c;

    public final ConcurrentHashMap f53134d;

    public C9931vW(byte[] bArr) {
        super(null, null);
        this.f53134d = new ConcurrentHashMap();
        this.f53133c = bArr;
    }

    public static boolean a(EnumC9764uW enumC9764uW, EnumC9764uW enumC9764uW2) {
        return enumC9764uW2 == enumC9764uW;
    }

    @Override
    public final Collection b() {
        C10098wW a10 = a(EnumC9764uW.f52867d);
        if (a10 == null) {
            return null;
        }
        return a10.b();
    }

    @Override
    public final boolean c() {
        C10098wW a10 = a(EnumC9764uW.f52868e);
        return a10 != null && a10.c();
    }

    @Override
    public final boolean d() {
        C10098wW a10 = a(EnumC9764uW.f52867d);
        return a10 != null && a10.d();
    }

    @Override
    public final Set a() {
        C10098wW a10 = a(EnumC9764uW.f52868e);
        if (a10 == null) {
            return null;
        }
        return a10.a();
    }

    public final C10098wW a(final EnumC9764uW enumC9764uW) {
        return (C10098wW) this.f53134d.computeIfAbsent(Integer.valueOf(enumC9764uW.f52869b), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9931vW.this.a(enumC9764uW, (Integer) obj);
            }
        });
    }

    public final C10098wW a(final EnumC9764uW enumC9764uW, Integer num) {
        return C10098wW.a(this.f53133c, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9931vW.a(EnumC9764uW.this, (EnumC9764uW) obj);
            }
        });
    }
}
