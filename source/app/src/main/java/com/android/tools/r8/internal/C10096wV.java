package com.android.tools.r8.internal;

import com.android.tools.r8.MarkerInfo;
import com.android.tools.r8.dex.W;

public final class C10096wV implements MarkerInfo {

    public final com.android.tools.r8.dex.W f53517a;

    public C10096wV(com.android.tools.r8.dex.W w10) {
        this.f53517a = w10;
    }

    @Override
    public final int getMinApi() {
        if (this.f53517a.k()) {
            return this.f53517a.e().intValue();
        }
        return -1;
    }

    @Override
    public final String getRawEncoding() {
        return this.f53517a.toString();
    }

    @Override
    public final String getTool() {
        return this.f53517a.h().toString();
    }

    @Override
    public final String getVersion() {
        return this.f53517a.i();
    }

    @Override
    public final boolean hasBackend() {
        return this.f53517a.a() != null;
    }

    @Override
    public final boolean hasCompilationMode() {
        return this.f53517a.f35797a.f48234b.containsKey("compilation-mode");
    }

    @Override
    public final boolean isBackendClassFiles() {
        return "cf".equals(this.f53517a.a());
    }

    @Override
    public final boolean isBackendDexFiles() {
        return "dex".equals(this.f53517a.a());
    }

    @Override
    public final boolean isCompilationModeDebug() {
        return "debug".equals(this.f53517a.b());
    }

    @Override
    public final boolean isCompilationModeRelease() {
        return "release".equals(this.f53517a.b());
    }

    @Override
    public final boolean isD8() {
        return this.f53517a.f35798b == W.b.f35802b;
    }

    @Override
    public final boolean isL8() {
        return this.f53517a.f35798b == W.b.f35804d;
    }

    @Override
    public final boolean isR8() {
        return this.f53517a.f35798b == W.b.f35805e;
    }

    @Override
    public final boolean isR8ModeCompatibility() {
        return isR8() && "compatibility".equals(this.f53517a.g());
    }

    @Override
    public final boolean isR8ModeFull() {
        return isR8() && "full".equals(this.f53517a.g());
    }
}
