package L0;

import G0.A;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@c.a(creator = "ModuleInstallStatusUpdateCreator")
public class i extends I0.a {

    @NonNull
    public static final Parcelable.Creator<i> CREATOR = new n();

    @c.InterfaceC0186c(getter = "getSessionId", id = 1)
    public final int f11516b;

    @c.InterfaceC0186c(getter = "getInstallState", id = 2)
    @a
    public final int f11517c;

    @Nullable
    @c.InterfaceC0186c(getter = "getBytesDownloaded", id = 3)
    public final Long f11518d;

    @Nullable
    @c.InterfaceC0186c(getter = "getTotalBytesToDownload", id = 4)
    public final Long f11519e;

    @c.InterfaceC0186c(getter = "getErrorCode", id = 5)
    public final int f11520f;

    @Nullable
    public final b f11521g;

    @Retention(RetentionPolicy.CLASS)
    public @interface a {

        public static final int f11522A = 3;

        public static final int f11523B = 4;

        public static final int f11524C = 5;

        public static final int f11525D = 6;

        public static final int f11526E = 7;

        public static final int f11527x = 0;

        public static final int f11528y = 1;

        public static final int f11529z = 2;
    }

    public static class b {

        public final long f11530a;

        public final long f11531b;

        public b(long j10, long j11) {
            A.v(j11);
            this.f11530a = j10;
            this.f11531b = j11;
        }

        public long a() {
            return this.f11530a;
        }

        public long b() {
            return this.f11531b;
        }
    }

    @c.b
    @C0.a
    public i(@c.e(id = 1) int i10, @a @c.e(id = 2) int i11, @Nullable @c.e(id = 3) Long l10, @Nullable @c.e(id = 4) Long l11, @c.e(id = 5) int i12) {
        this.f11516b = i10;
        this.f11517c = i11;
        this.f11518d = l10;
        this.f11519e = l11;
        this.f11520f = i12;
        this.f11521g = (l10 == null || l11 == null || l11.longValue() == 0) ? null : new b(l10.longValue(), l11.longValue());
    }

    @Nullable
    public b b0() {
        return this.f11521g;
    }

    public int n() {
        return this.f11520f;
    }

    public int n0() {
        return this.f11516b;
    }

    @a
    public int t() {
        return this.f11517c;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, n0());
        I0.b.F(parcel, 2, t());
        I0.b.N(parcel, 3, this.f11518d, false);
        I0.b.N(parcel, 4, this.f11519e, false);
        I0.b.F(parcel, 5, n());
        I0.b.b(parcel, a10);
    }
}
