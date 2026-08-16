package com.android.tools.r8.graph;

import java.util.Iterator;
import java.util.TreeMap;

public abstract class L5 implements Iterable {

    public final TreeMap f36565b;

    public L5(TreeMap treeMap) {
        this.f36565b = treeMap;
    }

    @Override
    public final Iterator iterator() {
        return this.f36565b.values().iterator();
    }
}
