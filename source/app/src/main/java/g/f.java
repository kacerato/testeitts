package G;

import G.a;
import G.d;
import android.content.Context;
import java.io.File;

@Deprecated
public final class f extends d {

    public class a implements d.c {

        public final Context f7236a;

        public final String f7237b;

        public a(Context context, String str) {
            this.f7236a = context;
            this.f7237b = str;
        }

        @Override
        public File a() {
            File externalCacheDir = this.f7236a.getExternalCacheDir();
            if (externalCacheDir == null) {
                return null;
            }
            return this.f7237b != null ? new File(externalCacheDir, this.f7237b) : externalCacheDir;
        }
    }

    public f(Context context) {
        this(context, "image_manager_disk_cache", a.InterfaceC0134a.f7214a);
    }

    public f(Context context, int i10) {
        this(context, "image_manager_disk_cache", i10);
    }

    public f(Context context, String str, int i10) {
        super(new a(context, str), i10);
    }
}
