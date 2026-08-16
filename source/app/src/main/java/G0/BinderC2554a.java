package G0;

import G0.r;
import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class BinderC2554a extends r.a {
    @Nullable
    @C0.a
    public static Account t(@NonNull r rVar) {
        Account account = null;
        if (rVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    account = rVar.O1();
                } catch (RemoteException unused) {
                    Log.w("AccountAccessor", "Remote account accessor probably died");
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }

    @Override
    @NonNull
    public final Account O1() {
        throw null;
    }

    public final boolean equals(@Nullable Object obj) {
        throw null;
    }
}
