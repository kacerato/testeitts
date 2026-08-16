package G;

import G.d;
import android.content.Context;
import java.io.File;

public final class h extends d {

    public class a implements d.c {

        public final Context f7240a;

        public final String f7241b;

        public a(Context context, String str) {
            this.f7240a = context;
            this.f7241b = str;
        }

        @Override
        public File a() {
            File cacheDir = this.f7240a.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f7241b != null ? new File(cacheDir, this.f7241b) : cacheDir;
        }
    }

    public h(Context context) {
        this(context, "image_manager_disk_cache", 262144000L);
    }

    public h(Context context, long j10) {
        this(context, "image_manager_disk_cache", j10);
    }

    public h(Context context, String str, long j10) {
        super(new a(context, str), j10);
    }
}
