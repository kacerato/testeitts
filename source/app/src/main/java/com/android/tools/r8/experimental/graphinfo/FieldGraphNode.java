package com.android.tools.r8.experimental.graphinfo;

import com.android.tools.r8.references.FieldReference;

public final class FieldGraphNode extends GraphNode {

    static final boolean f36105d = true;

    private final FieldReference f36106c;

    public FieldGraphNode(boolean z10, FieldReference fieldReference) {
        super(z10);
        if (!f36105d && fieldReference == null) {
            throw new AssertionError();
        }
        this.f36106c = fieldReference;
    }

    @Override
    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof FieldGraphNode) && ((FieldGraphNode) obj).f36106c.equals(this.f36106c);
        }
        return true;
    }

    public FieldReference getReference() {
        return this.f36106c;
    }

    @Override
    public int hashCode() {
        return this.f36106c.hashCode();
    }

    @Override
    public String toString() {
        return this.f36106c.toString();
    }
}
