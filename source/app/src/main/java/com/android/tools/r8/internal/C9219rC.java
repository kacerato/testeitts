package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.Consumer;

public final class C9219rC extends AbstractC9386sC {

    public final transient AbstractC8552nC f52007e;

    public final transient AbstractC7552hC f52008f;

    public C9219rC(AbstractC8552nC abstractC8552nC, AbstractC7552hC abstractC7552hC) {
        this.f52007e = abstractC8552nC;
        this.f52008f = abstractC7552hC;
    }

    @Override
    public final int a(int i10, Object[] objArr) {
        return this.f52008f.a(i10, objArr);
    }

    @Override
    public final void forEach(Consumer consumer) {
        this.f52008f.forEach(consumer);
    }

    @Override
    public final AbstractC4895Av0 iterator() {
        return this.f52008f.iterator();
    }

    @Override
    public final AbstractC7552hC j() {
        return new C5902Se0(this, this.f52008f);
    }

    @Override
    public final AbstractC8552nC k() {
        return this.f52007e;
    }

    @Override
    public final Spliterator spliterator() {
        return this.f52008f.spliterator();
    }

    @Override
    public final Iterator iterator() {
        return this.f52008f.iterator();
    }

    public C9219rC(AbstractC8552nC abstractC8552nC, Map.Entry[] entryArr) {
        AbstractC7552hC b10 = AbstractC7552hC.b(entryArr.length, entryArr);
        this.f52007e = abstractC8552nC;
        this.f52008f = b10;
    }
}
