package com.android.tools.r8.experimental.graphinfo;

public abstract class GraphNode {

    private static final a f36107b = new a();

    private final boolean f36108a;

    public GraphNode(boolean z10) {
        this.f36108a = z10;
    }

    public static GraphNode cycle() {
        return f36107b;
    }

    public abstract boolean equals(Object obj);

    public abstract int hashCode();

    public final boolean isCycle() {
        return this == cycle();
    }

    public boolean isLibraryNode() {
        return this.f36108a;
    }

    public abstract String toString();
}
