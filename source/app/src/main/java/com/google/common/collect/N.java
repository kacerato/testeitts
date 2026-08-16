package com.google.common.collect;

import java.util.Queue;
import javax.annotation.CheckForNull;

@X
@v2.b
public final class N<T> extends AbstractC12503c<T> {

    public final Queue<T> f65892d;

    public N(Queue<T> queue) {
        this.f65892d = (Queue) w2.H.E(queue);
    }

    @Override
    @CheckForNull
    public T a() {
        return this.f65892d.isEmpty() ? b() : this.f65892d.remove();
    }
}
