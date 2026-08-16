package z0;

import G0.A;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

@C0.a
public class C16218c {

    public static final Lock f130513c = new ReentrantLock();

    @Nullable
    @J2.a("sLk")
    public static C16218c f130514d;

    public final Lock f130515a = new ReentrantLock();

    @J2.a("mLk")
    public final SharedPreferences f130516b;

    @VisibleForTesting
    public C16218c(Context context) {
        this.f130516b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @NonNull
    @C0.a
    public static C16218c b(@NonNull Context context) {
        A.r(context);
        Lock lock = f130513c;
        lock.lock();
        try {
            if (f130514d == null) {
                f130514d = new C16218c(context.getApplicationContext());
            }
            C16218c c16218c = f130514d;
            lock.unlock();
            return c16218c;
        } catch (Throwable th2) {
            f130513c.unlock();
            throw th2;
        }
    }

    public static final String k(String str, String str2) {
        return str + b3.s.f32937c + str2;
    }

    @C0.a
    public void a() {
        this.f130515a.lock();
        try {
            this.f130516b.edit().clear().apply();
        } finally {
            this.f130515a.unlock();
        }
    }

    @Nullable
    @C0.a
    public GoogleSignInAccount c() {
        String g10;
        String g11 = g("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(g11) || (g10 = g(k("googleSignInAccount", g11))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.F0(g10);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    @C0.a
    public GoogleSignInOptions d() {
        String g10;
        String g11 = g("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(g11) || (g10 = g(k("googleSignInOptions", g11))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.z0(g10);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    @C0.a
    public String e() {
        return g("refreshToken");
    }

    @C0.a
    public void f(@NonNull GoogleSignInAccount googleSignInAccount, @NonNull GoogleSignInOptions googleSignInOptions) {
        A.r(googleSignInAccount);
        A.r(googleSignInOptions);
        j("defaultGoogleSignInAccount", googleSignInAccount.G0());
        A.r(googleSignInAccount);
        A.r(googleSignInOptions);
        String G02 = googleSignInAccount.G0();
        j(k("googleSignInAccount", G02), googleSignInAccount.H0());
        j(k("googleSignInOptions", G02), googleSignInOptions.D0());
    }

    @Nullable
    public final String g(@NonNull String str) {
        this.f130515a.lock();
        try {
            return this.f130516b.getString(str, null);
        } finally {
            this.f130515a.unlock();
        }
    }

    public final void h(@NonNull String str) {
        this.f130515a.lock();
        try {
            this.f130516b.edit().remove(str).apply();
        } finally {
            this.f130515a.unlock();
        }
    }

    public final void i() {
        String g10 = g("defaultGoogleSignInAccount");
        h("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(g10)) {
            return;
        }
        h(k("googleSignInAccount", g10));
        h(k("googleSignInOptions", g10));
    }

    public final void j(@NonNull String str, @NonNull String str2) {
        this.f130515a.lock();
        try {
            this.f130516b.edit().putString(str, str2).apply();
        } finally {
            this.f130515a.unlock();
        }
    }
}
