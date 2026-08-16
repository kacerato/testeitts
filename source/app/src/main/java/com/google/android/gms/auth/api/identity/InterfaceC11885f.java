package com.google.android.gms.auth.api.identity;

import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.InterfaceC11909m;
import com.google.android.gms.common.api.Status;
import v1.AbstractC15790k;

public interface InterfaceC11885f extends InterfaceC11909m<z> {
    @NonNull
    AbstractC15790k<C11889j> A(@NonNull SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest);

    @NonNull
    Status h(@Nullable Intent intent);

    @NonNull
    @Deprecated
    AbstractC15790k<C11891l> n(@NonNull C11890k c11890k);
}
