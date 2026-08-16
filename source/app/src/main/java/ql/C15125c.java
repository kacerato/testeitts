package ql;

import java.io.Serializable;
import java.util.Stack;
import ql.C15129g;
import ql.C15131i;
import ql.C15132j;

public class C15125c implements Serializable, Cloneable {

    public static final long f108329h = 1;

    public E f108330b;

    public final int f108331c;

    public int f108332d;

    public int f108333e;

    public boolean f108334f = false;

    public boolean f108335g = false;

    public C15125c(int i10) {
        this.f108331c = i10;
    }

    public C15125c clone() {
        C15125c c15125c = new C15125c(this.f108331c);
        c15125c.f108330b = this.f108330b;
        c15125c.f108332d = this.f108332d;
        c15125c.f108333e = this.f108333e;
        c15125c.f108334f = this.f108334f;
        c15125c.f108335g = this.f108335g;
        return c15125c;
    }

    public int b() {
        if (!this.f108334f || this.f108335g) {
            return Integer.MAX_VALUE;
        }
        return this.f108332d;
    }

    public int c() {
        return this.f108333e;
    }

    public E d() {
        return this.f108330b;
    }

    public void e(int i10) {
        this.f108330b = null;
        this.f108332d = this.f108331c;
        this.f108333e = i10;
        this.f108334f = true;
        this.f108335g = false;
    }

    public boolean f() {
        return this.f108335g;
    }

    public boolean g() {
        return this.f108334f;
    }

    public void h(E e10) {
        this.f108330b = e10;
        int a10 = e10.a();
        this.f108332d = a10;
        if (a10 == this.f108331c) {
            this.f108335g = true;
        }
    }

    public void i(Stack<E> stack, C15133k c15133k, byte[] bArr, byte[] bArr2, C15132j c15132j) {
        if (c15132j == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        if (this.f108335g || !this.f108334f) {
            throw new IllegalStateException("finished or not initialized");
        }
        C15132j c15132j2 = (C15132j) new C15132j.b().h(c15132j.b()).i(c15132j.c()).p(this.f108333e).n(c15132j.f()).o(c15132j.g()).g(c15132j.a()).e();
        C15131i c15131i = (C15131i) new C15131i.b().h(c15132j2.b()).i(c15132j2.c()).n(this.f108333e).e();
        C15129g c15129g = (C15129g) new C15129g.b().h(c15132j2.b()).i(c15132j2.c()).n(this.f108333e).e();
        c15133k.l(c15133k.k(bArr2, c15132j2), bArr);
        E a10 = F.a(c15133k, c15133k.g(c15132j2), c15131i);
        while (!stack.isEmpty() && stack.peek().a() == a10.a() && stack.peek().a() != this.f108331c) {
            C15129g c15129g2 = (C15129g) new C15129g.b().h(c15129g.b()).i(c15129g.c()).m(c15129g.g()).n((c15129g.h() - 1) / 2).g(c15129g.a()).e();
            E b10 = F.b(c15133k, stack.pop(), a10, c15129g2);
            E e10 = new E(b10.a() + 1, b10.b());
            c15129g = (C15129g) new C15129g.b().h(c15129g2.b()).i(c15129g2.c()).m(c15129g2.g() + 1).n(c15129g2.h()).g(c15129g2.a()).e();
            a10 = e10;
        }
        E e11 = this.f108330b;
        if (e11 == null) {
            this.f108330b = a10;
        } else if (e11.a() == a10.a()) {
            C15129g c15129g3 = (C15129g) new C15129g.b().h(c15129g.b()).i(c15129g.c()).m(c15129g.g()).n((c15129g.h() - 1) / 2).g(c15129g.a()).e();
            a10 = new E(this.f108330b.a() + 1, F.b(c15133k, this.f108330b, a10, c15129g3).b());
            this.f108330b = a10;
        } else {
            stack.push(a10);
        }
        if (this.f108330b.a() == this.f108331c) {
            this.f108335g = true;
        } else {
            this.f108332d = a10.a();
            this.f108333e++;
        }
    }
}
