package Ue;

import Ie.l;

public enum g implements l<Object> {
    INSTANCE;

    public static void a(hn.c<?> cVar) {
        cVar.j(INSTANCE);
        cVar.a();
    }

    public static void b(Throwable th2, hn.c<?> cVar) {
        cVar.j(INSTANCE);
        cVar.onError(th2);
    }

    @Override
    public void cancel() {
    }

    @Override
    public void clear() {
    }

    @Override
    public void i(long j10) {
        j.m(j10);
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
    public Object poll() {
        return null;
    }

    @Override
    public String toString() {
        return "EmptySubscription";
    }
}
