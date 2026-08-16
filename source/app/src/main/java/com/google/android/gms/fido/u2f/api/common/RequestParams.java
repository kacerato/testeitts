package com.google.android.gms.fido.u2f.api.common;

import android.net.Uri;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.List;
import java.util.Set;

@Deprecated
public abstract class RequestParams extends I0.a implements ReflectedParcelable {
    @NonNull
    public abstract ChannelIdValue b0();

    @NonNull
    public abstract Set<Uri> n();

    @NonNull
    public abstract String n0();

    @NonNull
    public abstract Uri t();

    @NonNull
    public abstract List<c1.c> u0();

    @NonNull
    public abstract Integer v0();

    @NonNull
    public abstract Double w0();
}
