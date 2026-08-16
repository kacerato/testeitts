package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11904b;
import com.google.android.gms.common.api.internal.e;

@C0.a
public class j extends e.a {

    @C0.a
    public final C11904b.InterfaceC0952b<Status> f61167e;

    @C0.a
    public j(@NonNull C11904b.InterfaceC0952b<Status> interfaceC0952b) {
        this.f61167e = interfaceC0952b;
    }

    @Override
    @C0.a
    public void Z(@NonNull Status status) {
        this.f61167e.a(status);
    }
}
