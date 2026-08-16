package ql;

import ql.r;

public final class C15132j extends r {

    public static final int f108360h = 0;

    public final int f108361e;

    public final int f108362f;

    public final int f108363g;

    public static class b extends r.a<b> {

        public int f108364e;

        public int f108365f;

        public int f108366g;

        public b() {
            super(0);
            this.f108364e = 0;
            this.f108365f = 0;
            this.f108366g = 0;
        }

        @Override
        public r e() {
            return new C15132j(this);
        }

        @Override
        public b f() {
            return this;
        }

        public b n(int i10) {
            this.f108365f = i10;
            return this;
        }

        public b o(int i10) {
            this.f108366g = i10;
            return this;
        }

        public b p(int i10) {
            this.f108364e = i10;
            return this;
        }
    }

    public C15132j(b bVar) {
        super(bVar);
        this.f108361e = bVar.f108364e;
        this.f108362f = bVar.f108365f;
        this.f108363g = bVar.f108366g;
    }

    @Override
    public byte[] e() {
        byte[] e10 = super.e();
        org.bouncycastle.util.p.h(this.f108361e, e10, 16);
        org.bouncycastle.util.p.h(this.f108362f, e10, 20);
        org.bouncycastle.util.p.h(this.f108363g, e10, 24);
        return e10;
    }

    public int f() {
        return this.f108362f;
    }

    public int g() {
        return this.f108363g;
    }

    public int h() {
        return this.f108361e;
    }
}
