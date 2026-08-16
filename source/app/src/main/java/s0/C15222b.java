package s0;

import I0.c;
import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;

@c.a(creator = "AccountChangeEventsRequestCreator")
public class C15222b extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C15222b> CREATOR = new h();

    @c.h(id = 1)
    public final int f109113b;

    @c.InterfaceC0186c(id = 2)
    public int f109114c;

    @c.InterfaceC0186c(id = 3)
    @Deprecated
    public String f109115d;

    @c.InterfaceC0186c(id = 4)
    public Account f109116e;

    public C15222b() {
        this.f109113b = 1;
    }

    @NonNull
    public C15222b b0(@NonNull Account account) {
        this.f109116e = account;
        return this;
    }

    @NonNull
    public Account h() {
        return this.f109116e;
    }

    @NonNull
    @Deprecated
    public String n() {
        return this.f109115d;
    }

    @NonNull
    @Deprecated
    public C15222b n0(@NonNull String str) {
        this.f109115d = str;
        return this;
    }

    public int t() {
        return this.f109114c;
    }

    @NonNull
    public C15222b u0(int i10) {
        this.f109114c = i10;
        return this;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f109113b);
        I0.b.F(parcel, 2, this.f109114c);
        I0.b.Y(parcel, 3, this.f109115d, false);
        I0.b.S(parcel, 4, this.f109116e, i10, false);
        I0.b.b(parcel, a10);
    }

    @c.b
    public C15222b(@c.e(id = 1) int i10, @c.e(id = 2) int i11, @c.e(id = 3) String str, @c.e(id = 4) Account account) {
        this.f109113b = i10;
        this.f109114c = i11;
        this.f109115d = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.f109116e = account;
        } else {
            this.f109116e = new Account(str, "com.google");
        }
    }
}
