package com.google.android.gms.auth.api.identity;

import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.InterfaceC11909m;
import v1.AbstractC15790k;

public interface InterfaceC11880a extends InterfaceC11909m<p> {
    @NonNull
    AbstractC15790k<Void> D(@NonNull ClearTokenRequest clearTokenRequest);

    @NonNull
    C11881b e(@Nullable Intent intent) throws ApiException;

    @NonNull
    AbstractC15790k<Void> q(@NonNull RevokeAccessRequest revokeAccessRequest);

    @NonNull
    AbstractC15790k<C11881b> s(@NonNull AuthorizationRequest authorizationRequest);
}
