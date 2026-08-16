package v0;

import I0.c;
import android.app.SearchManager;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.server.response.a;
import com.google.android.gms.internal.auth.AbstractC11919c0;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@c.a(creator = "AccountTransferProgressCreator")
public final class x extends AbstractC11919c0 {
    public static final Parcelable.Creator<x> CREATOR = new y();

    public static final ArrayMap f121087h;

    @c.h(id = 1)
    public final int f121088b;

    @c.InterfaceC0186c(getter = "getRegisteredAccountTypes", id = 2)
    public List f121089c;

    @c.InterfaceC0186c(getter = "getInProgressAccountTypes", id = 3)
    public List f121090d;

    @c.InterfaceC0186c(getter = "getSuccessAccountTypes", id = 4)
    public List f121091e;

    @c.InterfaceC0186c(getter = "getFailedAccountTypes", id = 5)
    public List f121092f;

    @c.InterfaceC0186c(getter = "getEscrowedAccountTypes", id = 6)
    public List f121093g;

    static {
        ArrayMap arrayMap = new ArrayMap();
        f121087h = arrayMap;
        arrayMap.put("registered", a.C0954a.y0("registered", 2));
        arrayMap.put(SearchManager.CURSOR_EXTRA_KEY_IN_PROGRESS, a.C0954a.y0(SearchManager.CURSOR_EXTRA_KEY_IN_PROGRESS, 3));
        arrayMap.put(FirebaseAnalytics.d.f67668H, a.C0954a.y0(FirebaseAnalytics.d.f67668H, 4));
        arrayMap.put("failed", a.C0954a.y0("failed", 5));
        arrayMap.put("escrowed", a.C0954a.y0("escrowed", 6));
    }

    public x() {
        this.f121088b = 1;
    }

    @Override
    public final Map d() {
        return f121087h;
    }

    @Override
    public final Object e(a.C0954a c0954a) {
        switch (c0954a.z0()) {
            case 1:
                return Integer.valueOf(this.f121088b);
            case 2:
                return this.f121089c;
            case 3:
                return this.f121090d;
            case 4:
                return this.f121091e;
            case 5:
                return this.f121092f;
            case 6:
                return this.f121093g;
            default:
                throw new IllegalStateException("Unknown SafeParcelable id=" + c0954a.z0());
        }
    }

    @Override
    public final boolean g(a.C0954a c0954a) {
        return true;
    }

    @Override
    public final void t(a.C0954a c0954a, String str, ArrayList arrayList) {
        int z02 = c0954a.z0();
        if (z02 == 2) {
            this.f121089c = arrayList;
            return;
        }
        if (z02 == 3) {
            this.f121090d = arrayList;
            return;
        }
        if (z02 == 4) {
            this.f121091e = arrayList;
        } else if (z02 == 5) {
            this.f121092f = arrayList;
        } else {
            if (z02 != 6) {
                throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string list.", Integer.valueOf(z02)));
            }
            this.f121093g = arrayList;
        }
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f121088b);
        I0.b.a0(parcel, 2, this.f121089c, false);
        I0.b.a0(parcel, 3, this.f121090d, false);
        I0.b.a0(parcel, 4, this.f121091e, false);
        I0.b.a0(parcel, 5, this.f121092f, false);
        I0.b.a0(parcel, 6, this.f121093g, false);
        I0.b.b(parcel, a10);
    }

    @c.b
    public x(@c.e(id = 1) int i10, @Nullable @c.e(id = 2) List list, @Nullable @c.e(id = 3) List list2, @Nullable @c.e(id = 4) List list3, @Nullable @c.e(id = 5) List list4, @Nullable @c.e(id = 6) List list5) {
        this.f121088b = i10;
        this.f121089c = list;
        this.f121090d = list2;
        this.f121091e = list3;
        this.f121092f = list4;
        this.f121093g = list5;
    }
}
