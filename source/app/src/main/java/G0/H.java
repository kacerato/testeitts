package G0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

@C0.a
@c.a(creator = "TelemetryDataCreator")
public class H extends I0.a {

    @NonNull
    public static final Parcelable.Creator<H> CREATOR = new O();

    @c.InterfaceC0186c(getter = "getTelemetryConfigVersion", id = 1)
    public final int f7294b;

    @c.InterfaceC0186c(getter = "getMethodInvocations", id = 2)
    @Nullable
    public List f7295c;

    @c.b
    public H(@c.e(id = 1) int i10, @Nullable @c.e(id = 2) List list) {
        this.f7294b = i10;
        this.f7295c = list;
    }

    public final int c() {
        return this.f7294b;
    }

    @androidx.annotation.Nullable
    public final List n() {
        return this.f7295c;
    }

    public final void p(@NonNull C2599x c2599x) {
        if (this.f7295c == null) {
            this.f7295c = new ArrayList();
        }
        this.f7295c.add(c2599x);
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f7294b);
        I0.b.d0(parcel, 2, this.f7295c, false);
        I0.b.b(parcel, a10);
    }
}
