package com.android.tools.r8.internal;

import com.android.tools.r8.metadata.R8DexFileMetadata;

public final class C6292Za0 implements R8DexFileMetadata {

    public static final boolean f46266c = true;

    @InterfaceC9168qv
    @InterfaceC10474yl0("checksum")
    public final String f46267a;

    @InterfaceC9168qv
    @InterfaceC10474yl0("startup")
    public final boolean f46268b;

    public C6292Za0(String str, boolean z10) {
        this.f46267a = str;
        this.f46268b = z10;
    }

    public static C6292Za0 a(com.android.tools.r8.dex.t0 t0Var) {
        if (f46266c || !t0Var.f35956b.f35937c.isEmpty()) {
            return new C6292Za0(t0Var.f35963i.toString(), t0Var.f35962h);
        }
        throw new AssertionError();
    }

    @Override
    public final String getChecksum() {
        return this.f46267a;
    }

    @Override
    public final boolean isStartup() {
        return this.f46268b;
    }
}
