package i1;

import android.app.Application;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
import q0.C15034a;

public final class B {

    public final Application f91168a;

    public B(Application application) {
        this.f91168a = application;
    }

    @Nullable
    public final C13538a a() {
        try {
            C15034a.C1962a a10 = C15034a.a(this.f91168a);
            return new C13538a(a10.a(), a10.b());
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e10) {
            Log.d("UserMessagingPlatform", "Failed to get ad id.", e10);
            return null;
        }
    }
}
