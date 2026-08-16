package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.g({1})
@c.a(creator = "PublicKeyCredentialRpEntityCreator")
public class C3550s extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C3550s> CREATOR = new P();

    @NonNull
    @c.InterfaceC0186c(getter = "getId", id = 2)
    public final String f31650b;

    @NonNull
    @c.InterfaceC0186c(getter = "getName", id = 3)
    public final String f31651c;

    @Nullable
    @c.InterfaceC0186c(getter = "getIcon", id = 4)
    public final String f31652d;

    @c.b
    public C3550s(@NonNull @c.e(id = 2) String str, @NonNull @c.e(id = 3) String str2, @Nullable @c.e(id = 4) String str3) {
        this.f31650b = (String) G0.A.r(str);
        this.f31651c = (String) G0.A.r(str2);
        this.f31652d = str3;
    }

    @NonNull
    public String b0() {
        return this.f31651c;
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof C3550s)) {
            return false;
        }
        C3550s c3550s = (C3550s) obj;
        return C2601y.b(this.f31650b, c3550s.f31650b) && C2601y.b(this.f31651c, c3550s.f31651c) && C2601y.b(this.f31652d, c3550s.f31652d);
    }

    public int hashCode() {
        return C2601y.c(this.f31650b, this.f31651c, this.f31652d);
    }

    @Nullable
    public String n() {
        return this.f31652d;
    }

    @NonNull
    public String t() {
        return this.f31650b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 2, t(), false);
        I0.b.Y(parcel, 3, b0(), false);
        I0.b.Y(parcel, 4, n(), false);
        I0.b.b(parcel, a10);
    }
}
