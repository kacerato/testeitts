package D0;

import android.app.Activity;
import android.content.ContextWrapper;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;

@C0.a
public class C2444g {

    public final Object f4650a;

    public C2444g(@NonNull Activity activity) {
        G0.A.s(activity, "Activity must not be null");
        this.f4650a = activity;
    }

    @NonNull
    public final Activity a() {
        return (Activity) this.f4650a;
    }

    @NonNull
    public final FragmentActivity b() {
        return (FragmentActivity) this.f4650a;
    }

    public final boolean c() {
        return this.f4650a instanceof Activity;
    }

    public final boolean d() {
        return this.f4650a instanceof FragmentActivity;
    }

    @C0.a
    @Deprecated
    public C2444g(@NonNull ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }
}
