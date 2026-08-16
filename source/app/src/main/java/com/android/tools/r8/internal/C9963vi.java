package com.android.tools.r8.internal;

public final class C9963vi extends AbstractC10297xi {

    public static final C9963vi f53204b = new C9963vi();

    @Override
    public final int a(AbstractC10297xi abstractC10297xi) {
        return abstractC10297xi == this ? 0 : 1;
    }

    @Override
    public final void b(StringBuilder sb2) {
        sb2.append("+\u221e)");
    }

    @Override
    public final int compareTo(Object obj) {
        return ((AbstractC10297xi) obj) == this ? 0 : 1;
    }

    @Override
    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return "+\u221e";
    }

    @Override
    public final boolean a() {
        return false;
    }

    @Override
    public final void a(StringBuilder sb2) {
        throw new AssertionError();
    }
}
