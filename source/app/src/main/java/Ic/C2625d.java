package Ic;

import java.util.concurrent.atomic.AtomicInteger;

public class C2625d {

    public final AtomicInteger f9104a;

    public C2625d() {
        this.f9104a = new AtomicInteger();
    }

    public void a() {
        this.f9104a.getAndIncrement();
    }

    public void b(int i10) {
        this.f9104a.addAndGet(i10);
    }

    public void c(int v10) {
        this.f9104a.set(v10);
    }

    public int d() {
        return this.f9104a.get();
    }

    public C2625d(int v10) {
        AtomicInteger atomicInteger = new AtomicInteger();
        this.f9104a = atomicInteger;
        atomicInteger.set(v10);
    }
}
