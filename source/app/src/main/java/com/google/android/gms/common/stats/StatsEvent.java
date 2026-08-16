package com.google.android.gms.common.stats;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;

@C0.a
@Deprecated
public abstract class StatsEvent extends I0.a implements ReflectedParcelable {

    @C0.a
    public interface a {

        @C0.a
        public static final int f61414a = 7;

        @C0.a
        public static final int f61415b = 8;
    }

    @NonNull
    public abstract String b0();

    public abstract int n();

    public abstract long t();

    @NonNull
    public final String toString() {
        return t() + "\t" + n() + "\t-1" + b0();
    }
}
