package K2;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RequiresApi;
import java.time.Instant;
import java.util.Date;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.i0;
import nf.Z;
import nf.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tf.C15420g;

public final class s implements Comparable<s>, Parcelable {

    public final long f10785b;

    public final int f10786c;

    @NotNull
    public static final b f10784d = new b(null);

    @Lf.g
    @NotNull
    public static final Parcelable.Creator<s> CREATOR = new a();

    public static final class a implements Parcelable.Creator<s> {
        @Override
        @NotNull
        public s createFromParcel(@NotNull Parcel source) {
            M.p(source, "source");
            return new s(source.readLong(), source.readInt());
        }

        @Override
        @NotNull
        public s[] newArray(int i10) {
            return new s[i10];
        }
    }

    public static final class b {
        public b(C14026x c14026x) {
            this();
        }

        @Lf.o
        @NotNull
        public final s c() {
            return new s(new Date());
        }

        public final Z<Long, Integer> d(Date date) {
            long j10 = 1000;
            long time = date.getTime() / j10;
            int time2 = (int) ((date.getTime() % j10) * 1000000);
            return time2 < 0 ? v0.a(Long.valueOf(time - 1), Integer.valueOf(time2 + 1000000000)) : v0.a(Long.valueOf(time), Integer.valueOf(time2));
        }

        public final void e(long j10, int i10) {
            if (i10 < 0 || i10 >= 1000000000) {
                throw new IllegalArgumentException(("Timestamp nanoseconds out of range: " + i10).toString());
            }
            if (-62135596800L > j10 || j10 >= 253402300800L) {
                throw new IllegalArgumentException(("Timestamp seconds out of range: " + j10).toString());
            }
        }

        public b() {
        }
    }

    public s(long j10, int i10) {
        f10784d.e(j10, i10);
        this.f10785b = j10;
        this.f10786c = i10;
    }

    @Lf.o
    @NotNull
    public static final s e() {
        return f10784d.c();
    }

    @Override
    public int compareTo(@NotNull s other) {
        M.p(other, "other");
        return C15420g.o(this, other, new i0() {
            @Override
            @Nullable
            public Object get(@Nullable Object obj) {
                return Long.valueOf(((s) obj).d());
            }
        }, new i0() {
            @Override
            @Nullable
            public Object get(@Nullable Object obj) {
                return Integer.valueOf(((s) obj).c());
            }
        });
    }

    public final int c() {
        return this.f10786c;
    }

    public final long d() {
        return this.f10785b;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        return obj == this || ((obj instanceof s) && compareTo((s) obj) == 0);
    }

    @NotNull
    public final Date g() {
        return new Date((this.f10785b * 1000) + (this.f10786c / 1000000));
    }

    @RequiresApi(26)
    @NotNull
    public final Instant h() {
        Instant ofEpochSecond = Instant.ofEpochSecond(this.f10785b, this.f10786c);
        M.o(ofEpochSecond, "ofEpochSecond(seconds, nanoseconds.toLong())");
        return ofEpochSecond;
    }

    public int hashCode() {
        long j10 = this.f10785b;
        return (((((int) j10) * 1369) + ((int) (j10 >> 32))) * 37) + this.f10786c;
    }

    @NotNull
    public String toString() {
        return "Timestamp(seconds=" + this.f10785b + ", nanoseconds=" + this.f10786c + ')';
    }

    @Override
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        M.p(dest, "dest");
        dest.writeLong(this.f10785b);
        dest.writeInt(this.f10786c);
    }

    public s(@NotNull Date date) {
        M.p(date, "date");
        b bVar = f10784d;
        Z d10 = bVar.d(date);
        long longValue = ((Number) d10.a()).longValue();
        int intValue = ((Number) d10.b()).intValue();
        bVar.e(longValue, intValue);
        this.f10785b = longValue;
        this.f10786c = intValue;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RequiresApi(26)
    public s(@NotNull Instant time) {
        this(time.getEpochSecond(), time.getNano());
        M.p(time, "time");
    }
}
