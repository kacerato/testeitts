package com.android.tools.r8.internal;

public class C10233xG extends BG {

    public final AG f53730g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10233xG(AG ag2) {
        super(ag2.f38585i);
        this.f53730g = ag2;
        this.f38865c = ag2.i();
    }

    @Override
    public final void d() {
        C8898pG b10 = this.f38865c.b();
        this.f38865c = b10;
        AG ag2 = this.f53730g;
        if (ag2.f38581e || b10 == null || ag2.f38585i.c(b10.f44050b, ag2.f38579c) < 0) {
            return;
        }
        this.f38865c = null;
    }

    @Override
    public final void e() {
        C8898pG d10 = this.f38864b.d();
        this.f38864b = d10;
        AG ag2 = this.f53730g;
        if (ag2.f38580d || d10 == null || ag2.f38585i.c(d10.f44050b, ag2.f38578b) >= 0) {
            return;
        }
        this.f38864b = null;
    }
}
