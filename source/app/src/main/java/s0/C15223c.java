package s0;

import G0.A;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.List;

@c.a(creator = "AccountChangeEventsResponseCreator")
public class C15223c extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C15223c> CREATOR = new i();

    @c.h(id = 1)
    public final int f109117b;

    @c.InterfaceC0186c(id = 2)
    public final List f109118c;

    @c.b
    public C15223c(@c.e(id = 1) int i10, @c.e(id = 2) List list) {
        this.f109117b = i10;
        this.f109118c = (List) A.r(list);
    }

    @NonNull
    public List<C15221a> n() {
        return this.f109118c;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f109117b);
        I0.b.d0(parcel, 2, this.f109118c, false);
        I0.b.b(parcel, a10);
    }

    public C15223c(@NonNull List<C15221a> list) {
        this.f109117b = 1;
        this.f109118c = (List) A.r(list);
    }
}
