package com.google.android.gms.common.server.response;

import G0.A;
import G0.C2601y;
import G0.F;
import android.os.Parcel;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.a;

@F
@C0.a
public abstract class b extends a implements I0.c {
    @C0.a
    public b() {
    }

    @NonNull
    @C0.a
    public byte[] F0() {
        Parcel obtain = Parcel.obtain();
        writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @C0.a
    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!getClass().isInstance(obj)) {
            return false;
        }
        a aVar = (a) obj;
        for (a.C0954a<?, ?> c0954a : d().values()) {
            if (g(c0954a)) {
                if (!aVar.g(c0954a) || !C2601y.b(e(c0954a), aVar.e(c0954a))) {
                    return false;
                }
            } else if (aVar.g(c0954a)) {
                return false;
            }
        }
        return true;
    }

    @Override
    @Nullable
    public Object f(@NonNull String str) {
        return null;
    }

    @Override
    public boolean h(@NonNull String str) {
        return false;
    }

    @C0.a
    public int hashCode() {
        int i10 = 0;
        for (a.C0954a<?, ?> c0954a : d().values()) {
            if (g(c0954a)) {
                i10 = (i10 * 31) + A.r(e(c0954a)).hashCode();
            }
        }
        return i10;
    }
}
