package z0;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;

public final class C16233r {

    @Nullable
    public static C16233r f130531d;

    @VisibleForTesting
    public final C16218c f130532a;

    @Nullable
    @VisibleForTesting
    public GoogleSignInAccount f130533b;

    @Nullable
    @VisibleForTesting
    public GoogleSignInOptions f130534c;

    public C16233r(Context context) {
        C16218c b10 = C16218c.b(context);
        this.f130532a = b10;
        this.f130533b = b10.c();
        this.f130534c = b10.d();
    }

    public static synchronized C16233r a(@NonNull Context context) {
        C16233r f10;
        synchronized (C16233r.class) {
            f10 = f(context.getApplicationContext());
        }
        return f10;
    }

    public static synchronized C16233r f(Context context) {
        synchronized (C16233r.class) {
            C16233r c16233r = f130531d;
            if (c16233r != null) {
                return c16233r;
            }
            C16233r c16233r2 = new C16233r(context);
            f130531d = c16233r2;
            return c16233r2;
        }
    }

    public final synchronized void b() {
        this.f130532a.a();
        this.f130533b = null;
        this.f130534c = null;
    }

    public final synchronized void c(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        this.f130532a.f(googleSignInAccount, googleSignInOptions);
        this.f130533b = googleSignInAccount;
        this.f130534c = googleSignInOptions;
    }

    @Nullable
    public final synchronized GoogleSignInAccount d() {
        return this.f130533b;
    }

    @Nullable
    public final synchronized GoogleSignInOptions e() {
        return this.f130534c;
    }
}
