package com.android.tools.r8.internal;

import java.util.AbstractSequentialList;
import java.util.ListIterator;
import java.util.function.Consumer;

public final class C8922pS extends AbstractSequentialList {

    public final C10090wS f51531b;

    public C8922pS(C10090wS c10090wS) {
        this.f51531b = c10090wS;
    }

    @Override
    public final void forEach(Consumer consumer) {
        consumer.getClass();
        for (C9589tS c9589tS = this.f51531b.f53505f; c9589tS != null; c9589tS = c9589tS.f52607d) {
            consumer.accept(c9589tS);
        }
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new C9756uS(this.f51531b, i10);
    }

    @Override
    public final int size() {
        return this.f51531b.f53508i;
    }
}
