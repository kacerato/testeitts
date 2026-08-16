package com.google.android.gms.common.api;

import B0.C2318c;
import D0.C2436c;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.api.C11894a;
import java.util.ArrayList;
import org.apache.commons.math3.geometry.VectorFormat;

public class AvailabilityException extends Exception {
    private final ArrayMap zaa;

    public AvailabilityException(@NonNull ArrayMap arrayMap) {
        this.zaa = arrayMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public C2318c getConnectionResult(@NonNull AbstractC11907k<? extends C11894a.d> abstractC11907k) {
        ArrayMap arrayMap = this.zaa;
        C2436c<? extends C11894a.d> G10 = abstractC11907k.G();
        G0.A.b(arrayMap.get(G10) != 0, "The given API (" + G10.b() + ") was not part of the availability request.");
        return (C2318c) G0.A.r((C2318c) this.zaa.get(G10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @NonNull
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z10 = true;
        for (C2436c c2436c : this.zaa.o()) {
            C2318c c2318c = (C2318c) G0.A.r((C2318c) this.zaa.get(c2436c));
            z10 &= !c2318c.u0();
            arrayList.add(c2436c.b() + ": " + String.valueOf(c2318c));
        }
        StringBuilder sb2 = new StringBuilder();
        if (z10) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join(VectorFormat.DEFAULT_SEPARATOR, arrayList));
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public C2318c getConnectionResult(@NonNull InterfaceC11909m<? extends C11894a.d> interfaceC11909m) {
        ArrayMap arrayMap = this.zaa;
        C2436c<? extends C11894a.d> G10 = interfaceC11909m.G();
        G0.A.b(arrayMap.get(G10) != 0, "The given API (" + G10.b() + ") was not part of the availability request.");
        return (C2318c) G0.A.r((C2318c) this.zaa.get(G10));
    }
}
