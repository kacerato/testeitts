package ql;

import ql.r;

public final class C15129g extends r {

    public static final int f108344h = 2;

    public static final int f108345i = 0;

    public final int f108346e;

    public final int f108347f;

    public final int f108348g;

    public static class b extends r.a<b> {

        public int f108349e;

        public int f108350f;

        public b() {
            super(2);
            this.f108349e = 0;
            this.f108350f = 0;
        }

        @Override
        public r e() {
            return new C15129g(this);
        }

        @Override
        public b f() {
            return this;
        }

        public b m(int i10) {
            this.f108349e = i10;
            return this;
        }

        public b n(int i10) {
            this.f108350f = i10;
            return this;
        }
    }

    public C15129g(b bVar) {
        super(bVar);
        this.f108346e = 0;
        this.f108347f = bVar.f108349e;
        this.f108348g = bVar.f108350f;
    }

    @Override
    public byte[] e() {
        byte[] e10 = super.e();
        org.bouncycastle.util.p.h(this.f108346e, e10, 16);
        org.bouncycastle.util.p.h(this.f108347f, e10, 20);
        org.bouncycastle.util.p.h(this.f108348g, e10, 24);
        return e10;
    }

    public int f() {
        return this.f108346e;
    }

    public int g() {
        return this.f108347f;
    }

    public int h() {
        return this.f108348g;
    }
}
