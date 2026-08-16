package com.android.dx.dex.file;

import org.eclipse.jdt.internal.core.JavaElement;

public abstract class IndexedItem extends Item {
    private int index = -1;

    public final int getIndex() {
        int i10 = this.index;
        if (i10 >= 0) {
            return i10;
        }
        throw new RuntimeException("index not yet set");
    }

    public final boolean hasIndex() {
        return this.index >= 0;
    }

    public final String indexString() {
        return '[' + Integer.toHexString(this.index) + JavaElement.JEM_TYPE_PARAMETER;
    }

    public final void setIndex(int i10) {
        if (this.index != -1) {
            throw new RuntimeException("index already set");
        }
        this.index = i10;
    }
}
