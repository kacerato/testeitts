package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.util.Pair;
import java.util.Collection;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public interface f<S> extends Parcelable {
    @NonNull
    View A(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, @NonNull a aVar, @NonNull s<S> sVar);

    boolean B();

    @NonNull
    Collection<Long> L();

    @Nullable
    S N();

    void Q(long j10);

    @NonNull
    String f0(Context context);

    @NonNull
    Collection<Pair<Long, Long>> g0();

    @StringRes
    int s();

    @StyleRes
    int v(Context context);

    void y(@NonNull S s10);
}
