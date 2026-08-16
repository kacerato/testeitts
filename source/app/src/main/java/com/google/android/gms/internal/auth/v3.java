package com.google.android.gms.internal.auth;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import v1.C15791l;

public final class v3 extends m3 {

    public final C15791l f61853e;

    public v3(C11918c c11918c, C15791l c15791l) {
        this.f61853e = c15791l;
    }

    @Override
    public final void s(Status status, @Nullable Bundle bundle) {
        C11918c.g0(status, bundle, this.f61853e);
    }
}
