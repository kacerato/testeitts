package com.android.tools.r8.internal;

public final class C9945vc extends AbstractC4892Au {

    public final int f53153a;

    public C9945vc(int i10) {
        this.f53153a = i10;
    }

    @Override
    public final C9945vc a() {
        return this;
    }

    @Override
    public final AbstractC4892Au a(com.android.tools.r8.graph.proto.c cVar) {
        if (cVar.a(this.f53153a).c()) {
            return C8000jv0.f49417a;
        }
        int b10 = cVar.b(this.f53153a);
        return b10 != this.f53153a ? new C9945vc(b10) : this;
    }
}
