package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.List;

@c.a(creator = "RevokeAccessRequestCreator")
public class RevokeAccessRequest extends I0.a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<RevokeAccessRequest> CREATOR = new G();

    @c.InterfaceC0186c(getter = "getScopes", id = 1)
    public final e1.K f60864b;

    @c.InterfaceC0186c(getter = "getAccount", id = 2)
    public final Account f60865c;

    @Nullable
    @c.InterfaceC0186c(getter = "getSessionId", id = 3)
    public final String f60866d;

    public static abstract class a {
        @NonNull
        public abstract RevokeAccessRequest a();

        @NonNull
        public abstract a b(@NonNull Account account);

        @NonNull
        public abstract a c(@NonNull List<Scope> list);

        @NonNull
        public abstract a d(@Nullable String str);
    }

    @c.b
    public RevokeAccessRequest(@NonNull @c.e(id = 1) List list, @NonNull @c.e(id = 2) Account account, @Nullable @c.e(id = 3) String str) {
        this.f60864b = e1.K.k(list);
        this.f60865c = account;
        this.f60866d = str;
    }

    @NonNull
    public static a n() {
        return new u();
    }

    @Nullable
    public final String b0() {
        return this.f60866d;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof RevokeAccessRequest) {
            RevokeAccessRequest revokeAccessRequest = (RevokeAccessRequest) obj;
            e1.K k10 = this.f60864b;
            int size = k10.size();
            e1.K k11 = revokeAccessRequest.f60864b;
            if (size == k11.size() && k10.containsAll(k11) && C2601y.b(this.f60865c, revokeAccessRequest.f60865c) && C2601y.b(this.f60866d, revokeAccessRequest.f60866d)) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    public Account h() {
        return this.f60865c;
    }

    public int hashCode() {
        return C2601y.c(this.f60864b, this.f60865c, this.f60866d);
    }

    @NonNull
    public final a n0() {
        return new u(this);
    }

    @NonNull
    public List<Scope> t() {
        return this.f60864b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.d0(parcel, 1, t(), false);
        I0.b.S(parcel, 2, h(), i10, false);
        I0.b.Y(parcel, 3, this.f60866d, false);
        I0.b.b(parcel, a10);
    }
}
