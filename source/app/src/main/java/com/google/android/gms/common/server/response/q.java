package com.google.android.gms.common.server.response;

import G0.A;
import G0.F;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.gms.common.server.response.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@F
@c.a(creator = "FieldMappingDictionaryCreator")
public final class q extends I0.a {
    public static final Parcelable.Creator<q> CREATOR = new Q0.a();

    @c.h(id = 1)
    public final int f61411b;

    public final HashMap f61412c;

    @c.InterfaceC0186c(getter = "getRootClassName", id = 3)
    public final String f61413d;

    @c.b
    public q(@c.e(id = 1) int i10, @c.e(id = 2) ArrayList arrayList, @c.e(id = 3) String str) {
        this.f61411b = i10;
        HashMap hashMap = new HashMap();
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            o oVar = (o) arrayList.get(i11);
            String str2 = oVar.f61406c;
            HashMap hashMap2 = new HashMap();
            int size2 = ((ArrayList) A.r(oVar.f61407d)).size();
            for (int i12 = 0; i12 < size2; i12++) {
                p pVar = (p) oVar.f61407d.get(i12);
                hashMap2.put(pVar.f61409c, pVar.f61410d);
            }
            hashMap.put(str2, hashMap2);
        }
        this.f61412c = hashMap;
        this.f61413d = (String) A.r(str);
        b0();
    }

    public final void b0() {
        Iterator it = this.f61412c.o().iterator();
        while (it.hasNext()) {
            Map map = (Map) this.f61412c.get((String) it.next());
            Iterator it2 = map.o().iterator();
            while (it2.hasNext()) {
                ((a.C0954a) map.get((String) it2.next())).J0(this);
            }
        }
    }

    public final String n() {
        return this.f61413d;
    }

    public final void n0(Class cls, Map map) {
        this.f61412c.put((String) A.r(cls.getCanonicalName()), map);
    }

    @Nullable
    public final Map p(String str) {
        return (Map) this.f61412c.get(str);
    }

    public final void t() {
        for (String str : this.f61412c.o()) {
            Map map = (Map) this.f61412c.get(str);
            HashMap hashMap = new HashMap();
            for (String str2 : map.o()) {
                hashMap.put(str2, ((a.C0954a) map.get(str2)).C0());
            }
            this.f61412c.put(str, hashMap);
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        for (String str : this.f61412c.o()) {
            sb2.append(str);
            sb2.append(":\n");
            Map map = (Map) this.f61412c.get(str);
            for (String str2 : map.o()) {
                sb2.append(GlideException.a.f59088e);
                sb2.append(str2);
                sb2.append(": ");
                sb2.append(map.get(str2));
            }
        }
        return sb2.toString();
    }

    public final boolean u0(Class cls) {
        return this.f61412c.containsKey(A.r(cls.getCanonicalName()));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f61411b);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f61412c.o()) {
            arrayList.add(new o(str, (Map) this.f61412c.get(str)));
        }
        I0.b.d0(parcel, 2, arrayList, false);
        I0.b.Y(parcel, 3, this.f61413d, false);
        I0.b.b(parcel, a10);
    }

    public q(Class cls) {
        this.f61411b = 1;
        this.f61412c = new HashMap();
        this.f61413d = (String) A.r(cls.getCanonicalName());
    }
}
