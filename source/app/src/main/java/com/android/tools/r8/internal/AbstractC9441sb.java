package com.android.tools.r8.internal;

public abstract class AbstractC9441sb {

    public final AbstractC9441sb f52387a;

    public final int f52388b;

    public AbstractC9441sb(int i10, AbstractC9441sb abstractC9441sb) {
        this.f52387a = abstractC9441sb;
        this.f52388b = i10;
    }

    public C8774ob a(int i10) {
        return this.f52387a.a(i10);
    }

    public int b() {
        return this.f52387a.b();
    }

    public C8774ob c() {
        return this.f52387a.c();
    }

    public int d() {
        return this.f52387a.d();
    }

    public void a(C8273lb c8273lb) {
        this.f52387a.a(c8273lb);
    }

    public C8774ob b(int i10) {
        return this.f52387a.b(i10);
    }

    public C8273lb a() {
        C8273lb c8273lb = new C8273lb(b() + 1, d());
        a(c8273lb);
        return c8273lb;
    }
}
