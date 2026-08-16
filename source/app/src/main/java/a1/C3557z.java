package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

@c.a(creator = "UvmEntryCreator")
public class C3557z extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C3557z> CREATOR = new X();

    @c.InterfaceC0186c(getter = "getUserVerificationMethod", id = 1)
    public final int f31672b;

    @c.InterfaceC0186c(getter = "getKeyProtectionType", id = 2)
    public final short f31673c;

    @c.InterfaceC0186c(getter = "getMatcherProtectionType", id = 3)
    public final short f31674d;

    public static final class a {

        public int f31675a;

        public short f31676b;

        public short f31677c;

        @NonNull
        public C3557z a() {
            return new C3557z(this.f31675a, this.f31676b, this.f31677c);
        }

        @NonNull
        public a b(short s10) {
            this.f31676b = s10;
            return this;
        }

        @NonNull
        public a c(short s10) {
            this.f31677c = s10;
            return this;
        }

        @NonNull
        public a d(int i10) {
            this.f31675a = i10;
            return this;
        }
    }

    @c.b
    public C3557z(@c.e(id = 1) int i10, @c.e(id = 2) short s10, @c.e(id = 3) short s11) {
        this.f31672b = i10;
        this.f31673c = s10;
        this.f31674d = s11;
    }

    public int b0() {
        return this.f31672b;
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof C3557z)) {
            return false;
        }
        C3557z c3557z = (C3557z) obj;
        return this.f31672b == c3557z.f31672b && this.f31673c == c3557z.f31673c && this.f31674d == c3557z.f31674d;
    }

    public int hashCode() {
        return C2601y.c(Integer.valueOf(this.f31672b), Short.valueOf(this.f31673c), Short.valueOf(this.f31674d));
    }

    public short n() {
        return this.f31673c;
    }

    public short t() {
        return this.f31674d;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, b0());
        I0.b.U(parcel, 2, n());
        I0.b.U(parcel, 3, t());
        I0.b.b(parcel, a10);
    }
}
