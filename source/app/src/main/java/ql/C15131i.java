package ql;

import ql.r;

public final class C15131i extends r {

    public static final int f108353h = 1;

    public final int f108354e;

    public final int f108355f;

    public final int f108356g;

    public static class b extends r.a<b> {

        public int f108357e;

        public int f108358f;

        public int f108359g;

        public b() {
            super(1);
            this.f108357e = 0;
            this.f108358f = 0;
            this.f108359g = 0;
        }

        @Override
        public r e() {
            return new C15131i(this);
        }

        @Override
        public b f() {
            return this;
        }

        public b n(int i10) {
            this.f108357e = i10;
            return this;
        }

        public b o(int i10) {
            this.f108358f = i10;
            return this;
        }

        public b p(int i10) {
            this.f108359g = i10;
            return this;
        }
    }

    public C15131i(b bVar) {
        super(bVar);
        this.f108354e = bVar.f108357e;
        this.f108355f = bVar.f108358f;
        this.f108356g = bVar.f108359g;
    }

    @Override
    public byte[] e() {
        byte[] e10 = super.e();
        org.bouncycastle.util.p.h(this.f108354e, e10, 16);
        org.bouncycastle.util.p.h(this.f108355f, e10, 20);
        org.bouncycastle.util.p.h(this.f108356g, e10, 24);
        return e10;
    }

    public int f() {
        return this.f108354e;
    }

    public int g() {
        return this.f108355f;
    }

    public int h() {
        return this.f108356g;
    }
}
