package com.google.android.gms.common.server.response;

import G0.F;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.a;
import java.util.ArrayList;
import java.util.Map;

@F
@c.a(creator = "FieldMappingDictionaryEntryCreator")
public final class o extends I0.a {
    public static final Parcelable.Creator<o> CREATOR = new Q0.b();

    @c.h(id = 1)
    public final int f61405b;

    @c.InterfaceC0186c(id = 2)
    public final String f61406c;

    @Nullable
    @c.InterfaceC0186c(id = 3)
    public final ArrayList f61407d;

    @c.b
    public o(@c.e(id = 1) int i10, @c.e(id = 2) String str, @c.e(id = 3) ArrayList arrayList) {
        this.f61405b = i10;
        this.f61406c = str;
        this.f61407d = arrayList;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f61405b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.Y(parcel, 2, this.f61406c, false);
        I0.b.d0(parcel, 3, this.f61407d, false);
        I0.b.b(parcel, a10);
    }

    public o(String str, Map map) {
        ArrayList arrayList;
        this.f61405b = 1;
        this.f61406c = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (String str2 : map.o()) {
                arrayList.add(new p(str2, (a.C0954a) map.get(str2)));
            }
        }
        this.f61407d = arrayList;
    }
}
