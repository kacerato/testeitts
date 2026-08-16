package com.android.tools.r8.internal;

public final class C6572bK implements Comparable {

    public final com.android.tools.r8.graph.H5 f46746b;

    public final com.android.tools.r8.graph.H5 f46747c;

    public final com.android.tools.r8.graph.G f46748d;

    public C6572bK(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, com.android.tools.r8.graph.G g10) {
        this.f46746b = h52;
        this.f46747c = h53;
        this.f46748d = g10;
    }

    @Override
    public final int compareTo(Object obj) {
        return this.f46746b.getReference().compareTo(((C6572bK) obj).f46746b.getReference());
    }
}
