package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "AuthenticationExtensionsClientOutputsCreator")
public class C3534b extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C3534b> CREATOR = new Y();

    @Nullable
    @c.InterfaceC0186c(getter = "getUvmEntries", id = 1)
    public final C3556y f31563b;

    @Nullable
    @c.InterfaceC0186c(getter = "getDevicePubKey", id = 2)
    public final b0 f31564c;

    @Nullable
    @c.InterfaceC0186c(getter = "getCredProps", id = 3)
    public final C3535c f31565d;

    @Nullable
    @c.InterfaceC0186c(getter = "getPrf", id = 4)
    public final d0 f31566e;

    public static final class a {

        @Nullable
        public C3556y f31567a;

        @Nullable
        public C3535c f31568b;

        @NonNull
        public C3534b a() {
            return new C3534b(this.f31567a, null, this.f31568b, null);
        }

        @NonNull
        public a b(@Nullable C3535c c3535c) {
            this.f31568b = c3535c;
            return this;
        }

        @NonNull
        public a c(@Nullable C3556y c3556y) {
            this.f31567a = c3556y;
            return this;
        }
    }

    @c.b
    public C3534b(@Nullable @c.e(id = 1) C3556y c3556y, @Nullable @c.e(id = 2) b0 b0Var, @Nullable @c.e(id = 3) C3535c c3535c, @Nullable @c.e(id = 4) d0 d0Var) {
        this.f31563b = c3556y;
        this.f31564c = b0Var;
        this.f31565d = c3535c;
        this.f31566e = d0Var;
    }

    @NonNull
    public static C3534b b(@NonNull byte[] bArr) {
        return (C3534b) I0.d.a(bArr, CREATOR);
    }

    @NonNull
    public byte[] b0() {
        return I0.d.n(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C3534b)) {
            return false;
        }
        C3534b c3534b = (C3534b) obj;
        return C2601y.b(this.f31563b, c3534b.f31563b) && C2601y.b(this.f31564c, c3534b.f31564c) && C2601y.b(this.f31565d, c3534b.f31565d) && C2601y.b(this.f31566e, c3534b.f31566e);
    }

    public int hashCode() {
        return C2601y.c(this.f31563b, this.f31564c, this.f31565d, this.f31566e);
    }

    @Nullable
    public C3535c n() {
        return this.f31565d;
    }

    @Nullable
    public C3556y t() {
        return this.f31563b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 1, t(), i10, false);
        I0.b.S(parcel, 2, this.f31564c, i10, false);
        I0.b.S(parcel, 3, n(), i10, false);
        I0.b.S(parcel, 4, this.f31566e, i10, false);
        I0.b.b(parcel, a10);
    }
}
