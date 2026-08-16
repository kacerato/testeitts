package G0;

import I0.c;
import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;

@c.a(creator = "ResolveAccountRequestCreator")
public final class C2575k0 extends I0.a {
    public static final Parcelable.Creator<C2575k0> CREATOR = new C2577l0();

    @c.h(id = 1)
    public final int f7437b;

    @c.InterfaceC0186c(getter = "getAccount", id = 2)
    public final Account f7438c;

    @c.InterfaceC0186c(getter = "getSessionId", id = 3)
    public final int f7439d;

    @Nullable
    @c.InterfaceC0186c(getter = "getSignInAccountHint", id = 4)
    public final GoogleSignInAccount f7440e;

    @c.b
    public C2575k0(@c.e(id = 1) int i10, @c.e(id = 2) Account account, @c.e(id = 3) int i11, @Nullable @c.e(id = 4) GoogleSignInAccount googleSignInAccount) {
        this.f7437b = i10;
        this.f7438c = account;
        this.f7439d = i11;
        this.f7440e = googleSignInAccount;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7437b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.S(parcel, 2, this.f7438c, i10, false);
        I0.b.F(parcel, 3, this.f7439d);
        I0.b.S(parcel, 4, this.f7440e, i10, false);
        I0.b.b(parcel, a10);
    }

    public C2575k0(Account account, int i10, @Nullable GoogleSignInAccount googleSignInAccount) {
        this(2, account, i10, googleSignInAccount);
    }
}
