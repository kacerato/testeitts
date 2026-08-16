package o2;

import android.content.Context;
import androidx.annotation.NonNull;

public class C14480c {
    @NonNull
    public static InterfaceC14479b a(@NonNull Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return new g(new l(context));
    }
}
