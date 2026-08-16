package f3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;
import f3.C13182a;
import f3.C13184c;

@AutoValue
public abstract class d {

    @NonNull
    public static d f86011a = a().a();

    @AutoValue.Builder
    public static abstract class a {
        @NonNull
        public abstract d a();

        @NonNull
        public abstract a b(@Nullable String str);

        @NonNull
        public abstract a c(long j10);

        @NonNull
        public abstract a d(@NonNull String str);

        @NonNull
        public abstract a e(@Nullable String str);

        @NonNull
        public abstract a f(@Nullable String str);

        @NonNull
        public abstract a g(@NonNull C13184c.a aVar);

        @NonNull
        public abstract a h(long j10);
    }

    @NonNull
    public static a a() {
        return new C13182a.b().h(0L).g(C13184c.a.ATTEMPT_MIGRATION).c(0L);
    }

    @Nullable
    public abstract String b();

    public abstract long c();

    @Nullable
    public abstract String d();

    @Nullable
    public abstract String e();

    @Nullable
    public abstract String f();

    @NonNull
    public abstract C13184c.a g();

    public abstract long h();

    public boolean i() {
        return g() == C13184c.a.REGISTER_ERROR;
    }

    public boolean j() {
        return g() == C13184c.a.NOT_GENERATED || g() == C13184c.a.ATTEMPT_MIGRATION;
    }

    public boolean k() {
        return g() == C13184c.a.REGISTERED;
    }

    public boolean l() {
        return g() == C13184c.a.UNREGISTERED;
    }

    public boolean m() {
        return g() == C13184c.a.ATTEMPT_MIGRATION;
    }

    @NonNull
    public abstract a n();

    @NonNull
    public d o(@NonNull String str, long j10, long j11) {
        return n().b(str).c(j10).h(j11).a();
    }

    @NonNull
    public d p() {
        return n().b(null).a();
    }

    @NonNull
    public d q(@NonNull String str) {
        return n().e(str).g(C13184c.a.REGISTER_ERROR).a();
    }

    @NonNull
    public d r() {
        return n().g(C13184c.a.NOT_GENERATED).a();
    }

    @NonNull
    public d s(@NonNull String str, @NonNull String str2, long j10, @Nullable String str3, long j11) {
        return n().d(str).g(C13184c.a.REGISTERED).b(str3).f(str2).c(j11).h(j10).a();
    }

    @NonNull
    public d t(@NonNull String str) {
        return n().d(str).g(C13184c.a.UNREGISTERED).a();
    }
}
