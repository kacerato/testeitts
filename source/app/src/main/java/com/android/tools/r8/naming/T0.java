package com.android.tools.r8.naming;

import com.android.tools.r8.SourceFileEnvironment;
import com.android.tools.r8.SourceFileProvider;

public final class T0 implements SourceFileProvider {

    public final String f55757a;

    public final boolean f55758b;

    public T0(String str, boolean z10) {
        this.f55757a = str;
        this.f55758b = z10;
    }

    @Override
    public final boolean allowDiscardingSourceFile() {
        return this.f55758b;
    }

    @Override
    public final String get(SourceFileEnvironment sourceFileEnvironment) {
        return this.f55757a;
    }
}
