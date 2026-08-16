package g3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;
import g3.C13289b;

@AutoValue
public abstract class f {

    @AutoValue.Builder
    public static abstract class a {
        @NonNull
        public abstract f a();

        @NonNull
        public abstract a b(@NonNull b bVar);

        @NonNull
        public abstract a c(@NonNull String str);

        @NonNull
        public abstract a d(long j10);
    }

    public enum b {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    @NonNull
    public static a a() {
        return new C13289b.C1616b().d(0L);
    }

    @Nullable
    public abstract b b();

    @Nullable
    public abstract String c();

    @NonNull
    public abstract long d();

    @NonNull
    public abstract a e();
}
