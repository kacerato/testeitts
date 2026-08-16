package com.android.tools.r8.graph;

public abstract class AbstractC4820z2 extends AbstractC4592n1 {

    public final AbstractC4744v2 f38458b;

    public final AbstractC4592n1 f38459c;

    public AbstractC4820z2(AbstractC4744v2 abstractC4744v2, AbstractC4592n1 abstractC4592n1) {
        this.f38458b = abstractC4744v2;
        this.f38459c = abstractC4592n1;
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        this.f38459c.a(x10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC4820z2) {
            AbstractC4820z2 abstractC4820z2 = (AbstractC4820z2) obj;
            if (this.f38458b.equals(abstractC4820z2.f38458b) && this.f38459c.equals(abstractC4820z2.f38459c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f38459c.hashCode() + (this.f38458b.hashCode() * 7);
    }
}
