package com.google.android.gms.common.internal;

import C0.a;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@a
public abstract class DowngradeableSafeParcel extends I0.a implements ReflectedParcelable {

    public static final Object f61362c = new Object();

    public boolean f61363b = false;

    @a
    public static boolean b(@NonNull String str) {
        synchronized (f61362c) {
        }
        return true;
    }

    @Nullable
    @a
    public static Integer n() {
        synchronized (f61362c) {
        }
        return null;
    }

    @a
    public boolean b0() {
        return this.f61363b;
    }

    @a
    public abstract boolean p(int i10);

    @a
    public void t(boolean z10) {
        this.f61363b = z10;
    }
}
