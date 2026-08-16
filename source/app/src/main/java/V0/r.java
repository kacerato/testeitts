package v0;

import com.google.android.gms.auth.api.accounttransfer.AccountTransferException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.BinderC11966o;

public final class r extends BinderC11966o {

    public final s f121077e;

    public r(s sVar) {
        this.f121077e = sVar;
    }

    @Override
    public final void R1() {
        this.f121077e.f121076d.c(null);
    }

    @Override
    public final void T(Status status) {
        this.f121077e.f121076d.b(new AccountTransferException(status));
    }
}
