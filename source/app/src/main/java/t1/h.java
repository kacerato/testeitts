package t1;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.u;
import java.util.List;

@c.a(creator = "RecordConsentByConsentResultResponseCreator")
public final class h extends I0.a implements u {
    public static final Parcelable.Creator<h> CREATOR = new i();

    @c.InterfaceC0186c(getter = "getGrantedScopes", id = 1)
    public final List f109706b;

    @Nullable
    @c.InterfaceC0186c(getter = "getToken", id = 2)
    public final String f109707c;

    @c.b
    public h(@c.e(id = 1) List list, @Nullable @c.e(id = 2) String str) {
        this.f109706b = list;
        this.f109707c = str;
    }

    @Override
    public final Status getStatus() {
        return this.f109707c != null ? Status.f61039g : Status.f61043k;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        List list = this.f109706b;
        int a10 = I0.b.a(parcel);
        I0.b.a0(parcel, 1, list, false);
        I0.b.Y(parcel, 2, this.f109707c, false);
        I0.b.b(parcel, a10);
    }
}
