package M0;

import B0.C2320e;
import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

@C0.a
@c.a(creator = "ApiFeatureRequestCreator")
public class C2812a extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C2812a> CREATOR = new f();

    public static final Comparator f14456f = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            C2320e c2320e = (C2320e) obj;
            C2320e c2320e2 = (C2320e) obj2;
            Parcelable.Creator<C2812a> creator = C2812a.CREATOR;
            return !c2320e.n().equals(c2320e2.n()) ? c2320e.n().compareTo(c2320e2.n()) : (c2320e.t() > c2320e2.t() ? 1 : (c2320e.t() == c2320e2.t() ? 0 : -1));
        }
    };

    @c.InterfaceC0186c(getter = "getApiFeatures", id = 1)
    public final List f14457b;

    @c.InterfaceC0186c(getter = "getIsUrgent", id = 2)
    public final boolean f14458c;

    @Nullable
    @c.InterfaceC0186c(getter = "getFeatureRequestSessionId", id = 3)
    public final String f14459d;

    @Nullable
    @c.InterfaceC0186c(getter = "getCallingPackage", id = 4)
    public final String f14460e;

    @c.b
    public C2812a(@NonNull @c.e(id = 1) List list, @c.e(id = 2) boolean z10, @Nullable @c.e(id = 3) String str, @Nullable @c.e(id = 4) String str2) {
        G0.A.r(list);
        this.f14457b = list;
        this.f14458c = z10;
        this.f14459d = str;
        this.f14460e = str2;
    }

    @NonNull
    @C0.a
    public static C2812a b(@NonNull L0.f fVar) {
        return p(fVar.a(), true);
    }

    public static C2812a p(List list, boolean z10) {
        TreeSet treeSet = new TreeSet(f14456f);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Collections.addAll(treeSet, ((com.google.android.gms.common.api.n) it.next()).a());
        }
        return new C2812a(new ArrayList(treeSet), z10, null, null);
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof C2812a)) {
            return false;
        }
        C2812a c2812a = (C2812a) obj;
        return this.f14458c == c2812a.f14458c && C2601y.b(this.f14457b, c2812a.f14457b) && C2601y.b(this.f14459d, c2812a.f14459d) && C2601y.b(this.f14460e, c2812a.f14460e);
    }

    public final int hashCode() {
        return C2601y.c(Boolean.valueOf(this.f14458c), this.f14457b, this.f14459d, this.f14460e);
    }

    @NonNull
    @C0.a
    public List<C2320e> n() {
        return this.f14457b;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.d0(parcel, 1, n(), false);
        I0.b.g(parcel, 2, this.f14458c);
        I0.b.Y(parcel, 3, this.f14459d, false);
        I0.b.Y(parcel, 4, this.f14460e, false);
        I0.b.b(parcel, a10);
    }
}
