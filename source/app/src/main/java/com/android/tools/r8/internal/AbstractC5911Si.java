package com.android.tools.r8.internal;

import com.android.tools.r8.internal.InterfaceC5737Pi;

public abstract class AbstractC5911Si<ApiModelingMetadata, LibraryDesugaringMetadata extends InterfaceC5737Pi> implements InterfaceC5853Ri<ApiModelingMetadata, LibraryDesugaringMetadata> {

    @InterfaceC9168qv
    @InterfaceC10474yl0("apiModeling")
    public final ApiModelingMetadata f44280a;

    @InterfaceC9168qv
    @InterfaceC10474yl0("libraryDesugaring")
    public final LibraryDesugaringMetadata f44281b;

    @InterfaceC9168qv
    @InterfaceC10474yl0("minApiLevel")
    public final String f44282c;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isDebugModeEnabled")
    public final boolean f44283d;

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC5911Si(Object obj, AbstractC5795Qi abstractC5795Qi, C8570nJ c8570nJ) {
        this.f44280a = obj;
        this.f44281b = abstractC5795Qi;
        this.f44282c = c8570nJ.P() ? Integer.toString(c8570nJ.z().d()) : null;
        this.f44283d = c8570nJ.f50690i1;
    }

    public final Object getApiModelingMetadata() {
        return this.f44280a;
    }

    @Override
    public final InterfaceC5737Pi getLibraryDesugaringMetadata() {
        return this.f44281b;
    }

    @Override
    public final String getMinApiLevel() {
        return this.f44282c;
    }

    @Override
    public final boolean isDebugModeEnabled() {
        return this.f44283d;
    }
}
