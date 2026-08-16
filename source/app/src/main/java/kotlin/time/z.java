package kotlin.time;

import kotlin.jvm.internal.M;
import kotlin.time.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface z {

    public static final class a implements z {

        @NotNull
        public final String f95912a;

        @NotNull
        public final CharSequence f95913b;

        public a(@NotNull String error, @NotNull CharSequence input) {
            M.p(error, "error");
            M.p(input, "input");
            this.f95912a = error;
            this.f95913b = input;
        }

        @Override
        @Nullable
        public q a() {
            return null;
        }

        @Override
        @NotNull
        public q b() {
            String D10;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f95912a);
            sb2.append(" when parsing an Instant from \"");
            D10 = y.D(this.f95913b, 64);
            sb2.append(D10);
            sb2.append('\"');
            throw new InstantFormatException(sb2.toString());
        }

        @NotNull
        public final String c() {
            return this.f95912a;
        }

        @NotNull
        public final CharSequence d() {
            return this.f95913b;
        }
    }

    public static final class b implements z {

        public final long f95914a;

        public final int f95915b;

        public b(long j10, int i10) {
            this.f95914a = j10;
            this.f95915b = i10;
        }

        @Override
        @Nullable
        public q a() {
            long j10 = this.f95914a;
            q.a aVar = q.f95889d;
            if (j10 < aVar.h().d() || this.f95914a > aVar.g().d()) {
                return null;
            }
            return aVar.b(this.f95914a, this.f95915b);
        }

        @Override
        @NotNull
        public q b() {
            long j10 = this.f95914a;
            q.a aVar = q.f95889d;
            if (j10 >= aVar.h().d() && this.f95914a <= aVar.g().d()) {
                return aVar.b(this.f95914a, this.f95915b);
            }
            throw new InstantFormatException("The parsed date is outside the range representable by Instant (Unix epoch second " + this.f95914a + ')');
        }

        public final long c() {
            return this.f95914a;
        }

        public final int d() {
            return this.f95915b;
        }
    }

    @Nullable
    q a();

    @NotNull
    q b();
}
