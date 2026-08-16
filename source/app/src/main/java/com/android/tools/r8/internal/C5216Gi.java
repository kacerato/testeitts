package com.android.tools.r8.internal;

import com.android.tools.r8.Version;
import com.android.tools.r8.metadata.D8BuildMetadata;
import com.android.tools.r8.metadata.D8OptionsMetadata;

public final class C5216Gi implements D8BuildMetadata {

    @InterfaceC9168qv
    @InterfaceC10474yl0("options")
    public final D8OptionsMetadata f40560a;

    @InterfaceC9168qv
    @InterfaceC10474yl0("version")
    public final String f40561b = Version.LABEL;

    public C5216Gi(C5679Oi c5679Oi) {
        this.f40560a = c5679Oi;
    }

    @Override
    public final D8OptionsMetadata getOptionsMetadata() {
        return this.f40560a;
    }

    @Override
    public final String getVersion() {
        return this.f40561b;
    }

    @Override
    public final String toJson() {
        return new C5713Oz().a(this);
    }
}
