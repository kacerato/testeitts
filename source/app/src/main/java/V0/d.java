package V0;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

@C0.a
public class d {

    public static final d f26428b = new d();

    @Nullable
    public c f26429a = null;

    @NonNull
    @C0.a
    public static c a(@NonNull Context context) {
        return f26428b.b(context);
    }

    @NonNull
    @VisibleForTesting
    public final synchronized c b(@NonNull Context context) {
        try {
            if (this.f26429a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.f26429a = new c(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f26429a;
    }
}
