package G0;

import B0.r;
import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;

@C0.a
public class G {

    public final Resources f7290a;

    public final String f7291b;

    public G(@NonNull Context context) {
        A.r(context);
        Resources resources = context.getResources();
        this.f7290a = resources;
        this.f7291b = resources.getResourcePackageName(r.b.f1276a);
    }

    @Nullable
    @C0.a
    public String a(@NonNull String str) {
        int identifier = this.f7290a.getIdentifier(str, TypedValues.Custom.S_STRING, this.f7291b);
        if (identifier == 0) {
            return null;
        }
        return this.f7290a.getString(identifier);
    }
}
