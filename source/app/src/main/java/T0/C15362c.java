package t0;

import G0.C2603z;
import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.internal.auth.C11958m;
import v1.AbstractC15790k;

public class C15362c extends AbstractC11907k<C11894a.d.C0950d> {

    public final InterfaceC15361b f109697k;

    public C15362c(@NonNull Activity activity) {
        super(activity, C15360a.f109693a, C11894a.d.f61053n4, AbstractC11907k.a.f61274c);
        this.f109697k = new C11958m();
    }

    @NonNull
    public AbstractC15790k<Account> g0(@NonNull String str) {
        return C2603z.b(this.f109697k.b(H(), str), new C15369j(this));
    }

    @NonNull
    public AbstractC15790k<Void> h0(@NonNull Account account) {
        return C2603z.c(this.f109697k.d(H(), account));
    }

    @NonNull
    public AbstractC15790k<Void> i0(boolean z10) {
        return C2603z.c(this.f109697k.c(H(), z10));
    }

    public C15362c(@NonNull Context context) {
        super(context, C15360a.f109693a, C11894a.d.f61053n4, AbstractC11907k.a.f61274c);
        this.f109697k = new C11958m();
    }
}
