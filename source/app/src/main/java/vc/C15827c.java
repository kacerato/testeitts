package vc;

import yc.C16167a;

public class C15827c {

    public C16167a f121449a;

    public C15827c(int capacity) {
        this.f121449a = new C16167a(capacity);
    }

    public int a() {
        return this.f121449a.a();
    }

    public C15827c clone() {
        C15827c c15827c = new C15827c(this.f121449a.a());
        c15827c.f121449a.E(0);
        c15827c.f121449a.M(this.f121449a);
        c15827c.f121449a.E(0);
        return c15827c;
    }

    public void c(int size) {
        o(a() - size, true);
    }

    public void d() {
        C16167a c16167a = this.f121449a;
        if (c16167a != null) {
            c16167a.h();
            this.f121449a = null;
        }
    }

    public void e(float value) {
        this.f121449a.E(0);
        C16167a c16167a = this.f121449a;
        c16167a.Q(value, c16167a.a());
    }

    public float f(int idx) {
        return this.f121449a.n(idx);
    }

    public C16167a g() {
        return this.f121449a;
    }

    public float[] h() {
        return this.f121449a.k0();
    }

    public void i(int size) {
        o(a() + size, true);
    }

    public void j(int position) {
        this.f121449a.E(position);
    }

    public void k(float value) {
        this.f121449a.F(value);
    }

    public void l(float[] value) {
        this.f121449a.O(value);
    }

    public void m(float value, int count) {
        this.f121449a.Q(value, count);
    }

    public void n(int newCapacity) {
        o(newCapacity, true);
    }

    public void o(int newCapacity, boolean copyData) {
        if (newCapacity != this.f121449a.a()) {
            C16167a c16167a = new C16167a(newCapacity);
            if (copyData) {
                int i10 = 0;
                if (newCapacity > this.f121449a.a()) {
                    while (i10 < this.f121449a.a()) {
                        c16167a.F(this.f121449a.n(i10));
                        i10++;
                    }
                } else if (newCapacity < this.f121449a.a()) {
                    while (i10 < newCapacity) {
                        c16167a.F(this.f121449a.n(i10));
                        i10++;
                    }
                }
            }
            this.f121449a.h();
            this.f121449a = c16167a;
        }
    }

    public void p(int position, float value) {
        this.f121449a.E(position);
        this.f121449a.F(value);
    }

    public void q(float value) {
        this.f121449a.E(r0.a() - 1);
        this.f121449a.F(value);
    }

    public int r() {
        return this.f121449a.a();
    }

    public C15827c(C16167a buffer) {
        this.f121449a = buffer;
    }
}
