package s0;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.internal.auth.AbstractBinderC11932f1;
import com.google.android.gms.internal.auth.EnumC11915b0;
import java.io.IOException;

public final class p implements q {

    public final String f109151a;

    public final Context f109152b;

    public p(String str, Context context) {
        this.f109151a = str;
        this.f109152b = context;
    }

    @Override
    public final Object a(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle n02 = AbstractBinderC11932f1.k(iBinder).n0(this.f109151a);
        r.m(n02);
        String string = n02.getString("Error");
        Intent intent = (Intent) n02.getParcelable("userRecoveryIntent");
        PendingIntent pendingIntent = (PendingIntent) n02.getParcelable("userRecoveryPendingIntent");
        if (EnumC11915b0.SUCCESS.equals(EnumC11915b0.a(string))) {
            return Boolean.TRUE;
        }
        r.x(this.f109152b, "requestGoogleAccountsAccess", string, intent, pendingIntent);
        throw new GoogleAuthException("Invalid state. Shouldn't happen");
    }
}
