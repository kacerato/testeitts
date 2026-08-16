package Ge;

import Be.I;
import Be.InterfaceC2356f;
import Be.N;
import Be.v;
import Ie.j;

public enum e implements j<Object> {
    INSTANCE,
    NEVER;

    public static void a(InterfaceC2356f interfaceC2356f) {
        interfaceC2356f.e(INSTANCE);
        interfaceC2356f.a();
    }

    public static void b(v<?> vVar) {
        vVar.e(INSTANCE);
        vVar.a();
    }

    public static void c(I<?> i10) {
        i10.e(INSTANCE);
        i10.a();
    }

    public static void e(Throwable th2, InterfaceC2356f interfaceC2356f) {
        interfaceC2356f.e(INSTANCE);
        interfaceC2356f.onError(th2);
    }

    public static void g(Throwable th2, v<?> vVar) {
        vVar.e(INSTANCE);
        vVar.onError(th2);
    }

    public static void h(Throwable th2, I<?> i10) {
        i10.e(INSTANCE);
        i10.onError(th2);
    }

    public static void i(Throwable th2, N<?> n10) {
        n10.e(INSTANCE);
        n10.onError(th2);
    }

    @Override
    public void clear() {
    }

    @Override
    public boolean d() {
        return this == INSTANCE;
    }

    @Override
    public void dispose() {
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    public int m(int i10) {
        return i10 & 2;
    }

    @Override
    public boolean o(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    public boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    @Ce.g
    public Object poll() throws Exception {
        return null;
    }
}
