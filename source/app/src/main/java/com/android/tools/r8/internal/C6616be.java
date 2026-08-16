package com.android.tools.r8.internal;

public final class C6616be {

    public static final C6616be f46810c;

    public static final C6616be f46811d;

    public static final C6616be f46812e;

    public static final C6616be f46813f;

    public static final boolean f46814g = true;

    public AbstractC9530t40 f46815a;

    public AbstractC9530t40 f46816b;

    static {
        AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52517a;
        AbstractC9530t40 abstractC9530t402 = AbstractC9530t40.f52518b;
        f46810c = new C6616be(abstractC9530t40, abstractC9530t402);
        AbstractC9530t40 abstractC9530t403 = AbstractC9530t40.f52519c;
        f46811d = new C6616be(abstractC9530t403, abstractC9530t402);
        f46812e = new C6616be(abstractC9530t402, abstractC9530t40);
        f46813f = new C6616be(abstractC9530t402, abstractC9530t403);
    }

    public C6616be(AbstractC9530t40 abstractC9530t40, AbstractC9530t40 abstractC9530t402) {
        this.f46815a = abstractC9530t40;
        this.f46816b = abstractC9530t402;
        if (!f46814g && abstractC9530t40.c() && this.f46816b.c()) {
            throw new AssertionError();
        }
    }
}
