package com.android.tools.r8.internal;

import org.eclipse.jdt.internal.core.ClasspathEntry;

public final class C5024Db0 extends AbstractC5082Eb0 implements V60 {

    public static final C5024Db0 f39560d = new C5024Db0(C10130wi.f53572b, C9963vi.f53204b);

    public final AbstractC10297xi f39561b;

    public final AbstractC10297xi f39562c;

    public C5024Db0(AbstractC10297xi abstractC10297xi, AbstractC10297xi abstractC10297xi2) {
        abstractC10297xi.getClass();
        this.f39561b = abstractC10297xi;
        abstractC10297xi2.getClass();
        this.f39562c = abstractC10297xi2;
        if (abstractC10297xi.a(abstractC10297xi2) > 0 || abstractC10297xi == C9963vi.f53204b || abstractC10297xi2 == C10130wi.f53572b) {
            StringBuilder sb2 = new StringBuilder("Invalid range: ");
            StringBuilder sb3 = new StringBuilder(16);
            abstractC10297xi.a(sb3);
            sb3.append(ClasspathEntry.DOT_DOT);
            abstractC10297xi2.b(sb3);
            sb2.append(sb3.toString());
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    @Override
    public final boolean apply(Object obj) {
        ((Comparable) obj).getClass();
        return this.f39561b.a() && !this.f39562c.a();
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj instanceof C5024Db0) {
            C5024Db0 c5024Db0 = (C5024Db0) obj;
            if (this.f39561b.equals(c5024Db0.f39561b) && this.f39562c.equals(c5024Db0.f39562c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f39562c.hashCode() + (this.f39561b.hashCode() * 31);
    }

    public final String toString() {
        AbstractC10297xi abstractC10297xi = this.f39561b;
        AbstractC10297xi abstractC10297xi2 = this.f39562c;
        StringBuilder sb2 = new StringBuilder(16);
        abstractC10297xi.a(sb2);
        sb2.append(ClasspathEntry.DOT_DOT);
        abstractC10297xi2.b(sb2);
        return sb2.toString();
    }
}
