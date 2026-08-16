package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.InterfaceC11909m;
import v1.AbstractC15790k;

public interface InterfaceC11892m extends InterfaceC11909m<M> {
    @NonNull
    AbstractC15790k<PendingIntent> B(@NonNull C11886g c11886g);

    @NonNull
    @Deprecated
    AbstractC15790k<Void> C();

    @NonNull
    @Deprecated
    AbstractC15790k<C11883d> E(@NonNull C11882c c11882c);

    @NonNull
    @Deprecated
    AbstractC15790k<PendingIntent> c(@NonNull C11887h c11887h);

    @NonNull
    @Deprecated
    C11893n d(@Nullable Intent intent) throws ApiException;

    @NonNull
    String y(@Nullable Intent intent) throws ApiException;
}
