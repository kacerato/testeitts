package G;

import G.d;
import android.content.Context;
import androidx.annotation.Nullable;
import java.io.File;

public final class g extends d {

    public class a implements d.c {

        public final Context f7238a;

        public final String f7239b;

        public a(Context context, String str) {
            this.f7238a = context;
            this.f7239b = str;
        }

        @Override
        public File a() {
            File externalCacheDir;
            File b10 = b();
            return ((b10 == null || !b10.exists()) && (externalCacheDir = this.f7238a.getExternalCacheDir()) != null && externalCacheDir.canWrite()) ? this.f7239b != null ? new File(externalCacheDir, this.f7239b) : externalCacheDir : b10;
        }

        @Nullable
        public final File b() {
            File cacheDir = this.f7238a.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f7239b != null ? new File(cacheDir, this.f7239b) : cacheDir;
        }
    }

    public g(Context context) {
        this(context, "image_manager_disk_cache", 262144000L);
    }

    public g(Context context, long j10) {
        this(context, "image_manager_disk_cache", j10);
    }

    public g(Context context, String str, long j10) {
        super(new a(context, str), j10);
    }
}
