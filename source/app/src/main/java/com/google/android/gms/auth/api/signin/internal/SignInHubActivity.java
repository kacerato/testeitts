package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import y0.InterfaceC16130a;
import y0.e;
import z0.C16233r;
import z0.z;

@KeepName
public class SignInHubActivity extends FragmentActivity {

    public static boolean f61023g = false;

    public boolean f61024b = false;

    public SignInConfiguration f61025c;

    public boolean f61026d;

    public int f61027e;

    public Intent f61028f;

    @Override
    public final boolean dispatchPopulateAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        return true;
    }

    public final int g() {
        return this.f61027e;
    }

    public final Intent h() {
        return this.f61028f;
    }

    public final void i(String str) {
        Intent intent = new Intent(str);
        if (str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
            intent.setPackage("com.google.android.gms");
        } else {
            intent.setPackage(getPackageName());
        }
        intent.putExtra("config", this.f61025c);
        try {
            startActivityForResult(intent, 40962);
        } catch (ActivityNotFoundException unused) {
            this.f61024b = true;
            Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
            k(17);
        }
    }

    public final void j() {
        getSupportLoaderManager().initLoader(0, null, new z(this, null));
        f61023g = false;
    }

    public final void k(int i10) {
        Status status = new Status(i10);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f61023g = false;
    }

    @Override
    public final void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        if (this.f61024b) {
            return;
        }
        setResult(0);
        if (i10 != 40962) {
            return;
        }
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra(InterfaceC16130a.f129885a);
            if (signInAccount != null && signInAccount.n() != null) {
                GoogleSignInAccount n10 = signInAccount.n();
                if (n10 == null) {
                    Log.e("AuthSignInClient", "Google account is null");
                    k(e.f129892t);
                    return;
                }
                C16233r.a(this).c(this.f61025c.n(), n10);
                intent.removeExtra(InterfaceC16130a.f129885a);
                intent.putExtra("googleSignInAccount", n10);
                this.f61026d = true;
                this.f61027e = i11;
                this.f61028f = intent;
                j();
                return;
            }
            if (intent.hasExtra("errorCode")) {
                int intExtra = intent.getIntExtra("errorCode", 8);
                if (intExtra == 13) {
                    intExtra = e.f129893u;
                }
                k(intExtra);
                return;
            }
        }
        k(8);
    }

    @Override
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        if (action == null) {
            Log.e("AuthSignInClient", "Null action");
            k(e.f129892t);
            return;
        }
        if (action.equals("com.google.android.gms.auth.NO_IMPL")) {
            Log.e("AuthSignInClient", "Action not implemented");
            k(e.f129892t);
            return;
        }
        if (!action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !action.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            Log.e("AuthSignInClient", "Unknown action: ".concat(String.valueOf(intent.getAction())));
            finish();
            return;
        }
        Bundle bundleExtra = intent.getBundleExtra("config");
        if (bundleExtra == null) {
            Log.e("AuthSignInClient", "Activity started with no configuration.");
            setResult(0);
            finish();
            return;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) bundleExtra.getParcelable("config");
        if (signInConfiguration == null) {
            Log.e("AuthSignInClient", "Activity started with invalid configuration.");
            setResult(0);
            finish();
            return;
        }
        this.f61025c = signInConfiguration;
        if (bundle == null) {
            if (f61023g) {
                setResult(0);
                k(e.f129894v);
                return;
            } else {
                f61023g = true;
                i(action);
                return;
            }
        }
        boolean z10 = bundle.getBoolean("signingInGoogleApiClients");
        this.f61026d = z10;
        if (z10) {
            this.f61027e = bundle.getInt("signInResultCode");
            Intent intent2 = (Intent) bundle.getParcelable("signInResultData");
            if (intent2 != null) {
                this.f61028f = intent2;
                j();
            } else {
                Log.e("AuthSignInClient", "Sign in result data cannot be null");
                setResult(0);
                finish();
            }
        }
    }

    @Override
    public final void onDestroy() {
        super.onDestroy();
        f61023g = false;
    }

    @Override
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f61026d);
        if (this.f61026d) {
            bundle.putInt("signInResultCode", this.f61027e);
            bundle.putParcelable("signInResultData", this.f61028f);
        }
    }
}
