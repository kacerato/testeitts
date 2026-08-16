package Ad;

import Ad.b;
import android.content.Context;
import java.util.ArrayList;

public abstract class c<T extends b> extends ArrayList<T> {

    public final Context f352b;

    public c(Context context) {
        this.f352b = context;
    }

    public Context a() {
        return this.f352b;
    }
}
