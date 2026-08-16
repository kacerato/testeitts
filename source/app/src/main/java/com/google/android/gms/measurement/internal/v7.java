package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.C12030b7;
import com.google.android.gms.internal.measurement.C12169r3;
import com.google.android.gms.internal.measurement.C12178s3;
import com.google.android.gms.internal.measurement.C12187t3;
import com.google.android.gms.internal.measurement.C12196u3;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public final class v7 {

    public String f63648a;

    public boolean f63649b;

    public C12178s3 f63650c;

    public BitSet f63651d;

    public BitSet f63652e;

    public Map f63653f;

    public Map f63654g;

    public final C12278e f63655h;

    public v7(C12278e c12278e, String str, C12178s3 c12178s3, BitSet bitSet, BitSet bitSet2, Map map, Map map2, byte[] bArr) {
        Objects.requireNonNull(c12278e);
        this.f63655h = c12278e;
        this.f63648a = str;
        this.f63651d = bitSet;
        this.f63652e = bitSet2;
        this.f63653f = map;
        this.f63654g = new ArrayMap();
        for (Integer num : map2.o()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.f63654g.put(num, arrayList);
        }
        this.f63649b = false;
        this.f63650c = c12178s3;
    }

    public final void a(@NonNull AbstractC12262c abstractC12262c) {
        int a10 = abstractC12262c.a();
        if (abstractC12262c.f63052c != null) {
            this.f63652e.set(a10, true);
        }
        Boolean bool = abstractC12262c.f63053d;
        if (bool != null) {
            this.f63651d.set(a10, bool.booleanValue());
        }
        if (abstractC12262c.f63054e != null) {
            Map map = this.f63653f;
            Integer valueOf = Integer.valueOf(a10);
            Long l10 = (Long) map.get(valueOf);
            long longValue = abstractC12262c.f63054e.longValue() / 1000;
            if (l10 == null || longValue > l10.longValue()) {
                this.f63653f.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (abstractC12262c.f63055f != null) {
            Map map2 = this.f63654g;
            Integer valueOf2 = Integer.valueOf(a10);
            List list = (List) map2.get(valueOf2);
            if (list == null) {
                list = new ArrayList();
                this.f63654g.put(valueOf2, list);
            }
            if (abstractC12262c.b()) {
                list.clear();
            }
            C12030b7.a();
            C12370p3 c12370p3 = this.f63655h.f62917a;
            C12342m w10 = c12370p3.w();
            String str = this.f63648a;
            C12273d2 c12273d2 = C12281e2.f63149G0;
            if (w10.H(str, c12273d2) && abstractC12262c.c()) {
                list.clear();
            }
            C12030b7.a();
            if (!c12370p3.w().H(this.f63648a, c12273d2)) {
                list.add(Long.valueOf(abstractC12262c.f63055f.longValue() / 1000));
                return;
            }
            Long valueOf3 = Long.valueOf(abstractC12262c.f63055f.longValue() / 1000);
            if (list.contains(valueOf3)) {
                return;
            }
            list.add(valueOf3);
        }
    }

    @NonNull
    public final com.google.android.gms.internal.measurement.P2 b(int i10) {
        ArrayList arrayList;
        List list;
        com.google.android.gms.internal.measurement.O2 L10 = com.google.android.gms.internal.measurement.P2.L();
        L10.t(i10);
        L10.w(this.f63649b);
        C12178s3 c12178s3 = this.f63650c;
        if (c12178s3 != null) {
            L10.v(c12178s3);
        }
        C12169r3 M10 = C12178s3.M();
        M10.v(h7.Q(this.f63651d));
        M10.t(h7.Q(this.f63652e));
        Map map = this.f63653f;
        if (map == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(map.size());
            for (Integer num : this.f63653f.o()) {
                int intValue = num.intValue();
                Long l10 = (Long) this.f63653f.get(num);
                if (l10 != null) {
                    com.google.android.gms.internal.measurement.Y2 I10 = com.google.android.gms.internal.measurement.Z2.I();
                    I10.t(intValue);
                    I10.u(l10.longValue());
                    arrayList2.add((com.google.android.gms.internal.measurement.Z2) I10.q());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            M10.x(arrayList);
        }
        Map map2 = this.f63654g;
        if (map2 == null) {
            list = Collections.emptyList();
        } else {
            ArrayList arrayList3 = new ArrayList(map2.size());
            for (Integer num2 : this.f63654g.o()) {
                C12187t3 J10 = C12196u3.J();
                J10.t(num2.intValue());
                List list2 = (List) this.f63654g.get(num2);
                if (list2 != null) {
                    Collections.sort(list2);
                    J10.u(list2);
                }
                arrayList3.add((C12196u3) J10.q());
            }
            list = arrayList3;
        }
        M10.z(list);
        L10.u(M10);
        return (com.google.android.gms.internal.measurement.P2) L10.q();
    }

    public final BitSet c() {
        return this.f63651d;
    }

    public v7(C12278e c12278e, String str, byte[] bArr) {
        Objects.requireNonNull(c12278e);
        this.f63655h = c12278e;
        this.f63648a = str;
        this.f63649b = true;
        this.f63651d = new BitSet();
        this.f63652e = new BitSet();
        this.f63653f = new ArrayMap();
        this.f63654g = new ArrayMap();
    }
}
