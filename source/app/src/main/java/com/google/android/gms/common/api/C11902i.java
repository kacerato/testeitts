package com.google.android.gms.common.api;

import F0.a;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.u;
import java.util.Iterator;

@C0.a
public class C11902i<T, R extends F0.a<T> & u> extends t<R> implements F0.b<T> {
    @C0.a
    public C11902i() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @Nullable
    public final Bundle Oc() {
        return ((F0.a) c()).Oc();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void close() {
        ((F0.a) c()).close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @NonNull
    public final T get(int i10) {
        return (T) ((F0.a) c()).get(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int getCount() {
        return ((F0.a) c()).getCount();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean isClosed() {
        return ((F0.a) c()).isClosed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @NonNull
    public final Iterator<T> iterator() {
        return ((F0.a) c()).iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void release() {
        ((F0.a) c()).release();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @NonNull
    public final Iterator<T> x3() {
        return ((F0.a) c()).x3();
    }

    /* JADX WARN: Incorrect types in method signature: (TR;)V */
    /* JADX WARN: Multi-variable type inference failed */
    @C0.a
    public C11902i(@NonNull F0.a aVar) {
        super(aVar);
    }
}
