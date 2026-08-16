package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetraceUnknownJsonMappingInformationResult;
import com.android.tools.r8.retrace.RetraceUnknownMappingInformationElement;

public final class C7967jk0 implements RetraceUnknownMappingInformationElement {

    public final C7801ik0 f49331a;

    public final C9502sv0 f49332b;

    public C7967jk0(C7801ik0 c7801ik0, C9502sv0 c9502sv0) {
        this.f49331a = c7801ik0;
        this.f49332b = c9502sv0;
    }

    @Override
    public final String getIdentifier() {
        return this.f49332b.f52484a;
    }

    @Override
    public final String getPayLoad() {
        return this.f49332b.f52485b;
    }

    @Override
    public final RetraceUnknownJsonMappingInformationResult getRetraceResultContext() {
        return this.f49331a;
    }
}
