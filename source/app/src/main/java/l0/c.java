package L0;

import M0.B;
import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;

public final class c {
    @NonNull
    public static d a(@NonNull Activity activity) {
        return new B(activity);
    }

    @NonNull
    public static d b(@NonNull Context context) {
        return new B(context);
    }
}
