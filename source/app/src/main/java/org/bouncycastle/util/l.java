package org.bouncycastle.util;

import java.util.Iterator;

public interface l<T> extends Iterable<T> {
    @Override
    Iterator<T> iterator();
}
