package b3;

import androidx.annotation.NonNull;
import b3.C3839a;
import com.google.auto.value.AutoValue;

@AutoValue
public abstract class n {

    @AutoValue.Builder
    public static abstract class a {
        @NonNull
        public abstract n a();

        @NonNull
        public abstract a b(@NonNull String str);

        @NonNull
        public abstract a c(long j10);

        @NonNull
        public abstract a d(long j10);
    }

    @NonNull
    public static a a() {
        return new C3839a.b();
    }

    @NonNull
    public abstract String b();

    @NonNull
    public abstract long c();

    @NonNull
    public abstract long d();

    @NonNull
    public abstract a e();
}
