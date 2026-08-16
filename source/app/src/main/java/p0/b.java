package P0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.a;

@c.a(creator = "ConverterWrapperCreator")
public final class b extends I0.a {
    public static final Parcelable.Creator<b> CREATOR = new c();

    @c.h(id = 1)
    public final int f20622b;

    @c.InterfaceC0186c(getter = "getStringToIntConverter", id = 2)
    public final a f20623c;

    @c.b
    public b(@c.e(id = 1) int i10, @c.e(id = 2) a aVar) {
        this.f20622b = i10;
        this.f20623c = aVar;
    }

    public static b b(a.b bVar) {
        if (bVar instanceof a) {
            return new b((a) bVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    public final a.b n() {
        a aVar = this.f20623c;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f20622b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.S(parcel, 2, this.f20623c, i10, false);
        I0.b.b(parcel, a10);
    }

    public b(a aVar) {
        this.f20622b = 1;
        this.f20623c = aVar;
    }
}
