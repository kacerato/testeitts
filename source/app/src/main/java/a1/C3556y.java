package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j1.C13790n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@c.a(creator = "UvmEntriesCreator")
public class C3556y extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C3556y> CREATOR = new W();

    @Nullable
    @c.InterfaceC0186c(getter = "getUvmEntryList", id = 1)
    public final List f31670b;

    public static final class a {

        public final List f31671a = new ArrayList();

        @NonNull
        public a a(@NonNull List<C3557z> list) {
            C13790n.c(this.f31671a.size() + list.size() <= 3);
            this.f31671a.addAll(list);
            return this;
        }

        @NonNull
        public a b(@Nullable C3557z c3557z) {
            if (this.f31671a.size() >= 3) {
                throw new IllegalStateException();
            }
            this.f31671a.add(c3557z);
            return this;
        }

        @NonNull
        public C3556y c() {
            return new C3556y(this.f31671a);
        }
    }

    @c.b
    public C3556y(@Nullable @c.e(id = 1) List list) {
        this.f31670b = list;
    }

    public boolean equals(@NonNull Object obj) {
        List list;
        if (!(obj instanceof C3556y)) {
            return false;
        }
        C3556y c3556y = (C3556y) obj;
        List list2 = this.f31670b;
        return (list2 == null && c3556y.f31670b == null) || (list2 != null && (list = c3556y.f31670b) != null && list2.containsAll(list) && c3556y.f31670b.containsAll(this.f31670b));
    }

    public int hashCode() {
        return C2601y.c(new HashSet(this.f31670b));
    }

    @Nullable
    public List<C3557z> n() {
        return this.f31670b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.d0(parcel, 1, n(), false);
        I0.b.b(parcel, a10);
    }
}
