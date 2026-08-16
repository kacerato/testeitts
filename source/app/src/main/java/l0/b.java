package L0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@c.a(creator = "ModuleAvailabilityResponseCreator")
public class b extends I0.a {

    @NonNull
    public static final Parcelable.Creator<b> CREATOR = new j();

    @c.InterfaceC0186c(getter = "areModulesAvailable", id = 1)
    public final boolean f11497b;

    @c.InterfaceC0186c(getter = "getAvailabilityStatus", id = 2)
    public final int f11498c;

    @Retention(RetentionPolicy.CLASS)
    public @interface a {

        public static final int f11499u = 0;

        public static final int f11500v = 1;

        public static final int f11501w = 2;
    }

    @c.b
    @C0.a
    public b(@c.e(id = 1) boolean z10, @c.e(id = 2) int i10) {
        this.f11497b = z10;
        this.f11498c = i10;
    }

    public boolean n() {
        return this.f11497b;
    }

    @a
    public int t() {
        return this.f11498c;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.g(parcel, 1, n());
        I0.b.F(parcel, 2, t());
        I0.b.b(parcel, a10);
    }
}
