package com.android.tools.r8.internal;

import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Consumer;

public abstract class AbstractC8928pV extends AbstractMap {
    public final void a(Consumer consumer) {
        e().forEachRemaining(consumer);
    }

    public abstract Iterator e();

    @Override
    public final Set entrySet() {
        return new C8761oV(this);
    }

    public final Spliterator i() {
        return Spliterators.spliterator(e(), size(), 65);
    }

    @Override
    public abstract int size();
}
