package v0;

import com.google.android.gms.auth.api.accounttransfer.AccountTransferException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.BinderC11966o;
import v1.C15791l;

public class o extends BinderC11966o {

    public final q f121075e;

    public o(q qVar) {
        this.f121075e = qVar;
    }

    @Override
    public final void T(Status status) {
        C15791l c15791l = this.f121075e.f121076d;
        int i10 = C15760b.f121056n;
        c15791l.b(new AccountTransferException(status));
    }
}
