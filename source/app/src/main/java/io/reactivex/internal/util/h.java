package io.reactivex.internal.util;

import Be.I;
import Be.InterfaceC2356f;
import Be.InterfaceC2367q;
import Be.N;

public enum h implements InterfaceC2367q<Object>, I<Object>, Be.v<Object>, N<Object>, InterfaceC2356f, hn.d, De.c {
    INSTANCE;

    public static <T> I<T> c() {
        return INSTANCE;
    }

    public static <T> hn.c<T> g() {
        return INSTANCE;
    }

    @Override
    public void a() {
    }

    @Override
    public void b(Object obj) {
    }

    @Override
    public void cancel() {
    }

    @Override
    public boolean d() {
        return true;
    }

    @Override
    public void dispose() {
    }

    @Override
    public void e(De.c cVar) {
        cVar.dispose();
    }

    @Override
    public void h(Object obj) {
    }

    @Override
    public void i(long j10) {
    }

    @Override
    public void j(hn.d dVar) {
        dVar.cancel();
    }

    @Override
    public void onError(Throwable th2) {
        Ye.a.Y(th2);
    }
}
