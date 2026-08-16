package com.android.tools.r8.internal;

public final class C8440mb extends AbstractC9441sb {

    public static final boolean f50336d = true;

    public final int f50337c;

    public C8440mb(AbstractC9441sb abstractC9441sb) {
        super(abstractC9441sb.f52388b + 1, abstractC9441sb);
        int d10 = abstractC9441sb.d() - 1;
        this.f50337c = d10;
        if (!f50336d && d10 < 0) {
            throw new AssertionError();
        }
    }

    @Override
    public final C8774ob b(int i10) {
        if (f50336d || i10 < this.f50337c) {
            return this.f52387a.b(i10);
        }
        throw new AssertionError();
    }

    @Override
    public final C8774ob c() {
        return this.f52387a.b(this.f50337c - 1);
    }

    @Override
    public final int d() {
        return this.f50337c;
    }

    public final String toString() {
        return this.f52387a.toString() + "; pop";
    }
}
