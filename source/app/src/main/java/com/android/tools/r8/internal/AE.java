package com.android.tools.r8.internal;

import java.util.Iterator;

public interface AE extends Iterator<AbstractC10561zE>, GZ<AbstractC10561zE> {
    default AbstractC10561zE h() {
        if (!hasNext()) {
            return null;
        }
        AbstractC10561zE next = next();
        previous();
        return next;
    }

    boolean hasPrevious();

    default AbstractC10561zE n() {
        if (!hasPrevious()) {
            return null;
        }
        AbstractC10561zE previous = previous();
        next();
        return previous;
    }

    AbstractC10561zE previous();

    @Override
    default void remove() {
        throw new UnsupportedOperationException("remove");
    }
}
