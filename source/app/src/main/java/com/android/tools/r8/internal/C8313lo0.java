package com.android.tools.r8.internal;

import org.eclipse.jdt.internal.core.JavaElement;

public final class C8313lo0 extends C10340xw0 {

    public static final boolean f50107q = true;

    public final C8146ko0[] f50108p;

    public C8313lo0(C8146ko0... c8146ko0Arr) {
        super(-1, AbstractC8999pu0.f(), null);
        this.f50108p = c8146ko0Arr;
        if (!f50107q && c8146ko0Arr.length < 2) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean Q() {
        return true;
    }

    @Override
    public final boolean T() {
        return false;
    }

    @Override
    public final void a(boolean z10) {
        if (!f50107q && z10) {
            throw new AssertionError();
        }
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        for (C8146ko0 c8146ko0 : this.f50108p) {
            if (sb2.length() > 1) {
                sb2.append(", ");
            }
            sb2.append((Object) c8146ko0);
        }
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        return sb2.toString();
    }

    @Override
    public final AbstractC8999pu0 u() {
        throw new C5417Jv0();
    }
}
