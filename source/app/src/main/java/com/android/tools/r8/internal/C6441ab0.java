package com.android.tools.r8.internal;

import com.android.tools.r8.metadata.R8DexFileMetadata;
import com.android.tools.r8.metadata.R8FeatureSplitMetadata;
import java.util.List;

public final class C6441ab0 implements R8FeatureSplitMetadata {

    @InterfaceC9168qv
    @InterfaceC10474yl0("dexFiles")
    public final List<R8DexFileMetadata> f46561a;

    public C6441ab0(List list) {
        this.f46561a = list;
    }

    @Override
    public final List getDexFilesMetadata() {
        return this.f46561a;
    }
}
