package org.eclipse.jdt.internal.core.util;

import java.util.Enumeration;

public interface ICacheEnumeration<K, V> extends Enumeration<K> {
    V getValue();
}
