package z0;

import android.os.Bundle;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import com.google.android.gms.common.api.AbstractC11908l;
import java.util.Objects;

public final class z implements LoaderManager.LoaderCallbacks {

    public final SignInHubActivity f130536a;

    public z(SignInHubActivity signInHubActivity, byte[] bArr) {
        Objects.requireNonNull(signInHubActivity);
        this.f130536a = signInHubActivity;
    }

    @Override
    public final Loader onCreateLoader(int i10, Bundle bundle) {
        return new C16222g(this.f130536a, AbstractC11908l.n());
    }

    @Override
    public final void onLoadFinished(Loader loader, Object obj) {
        SignInHubActivity signInHubActivity = this.f130536a;
        signInHubActivity.setResult(signInHubActivity.g(), signInHubActivity.h());
        signInHubActivity.finish();
    }

    @Override
    public final void onLoaderReset(Loader loader) {
    }
}
