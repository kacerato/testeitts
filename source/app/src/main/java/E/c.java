package E;

import D.d;
import D.g;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.h;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class c implements D.d<InputStream> {

    public static final String f5303e = "MediaStoreThumbFetcher";

    public final Uri f5304b;

    public final e f5305c;

    public InputStream f5306d;

    public static class a implements d {

        public static final String[] f5307b = {"_data"};

        public static final String f5308c = "kind = 1 AND image_id = ?";

        public final ContentResolver f5309a;

        public a(ContentResolver contentResolver) {
            this.f5309a = contentResolver;
        }

        @Override
        public Cursor a(Uri uri) {
            return this.f5309a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f5307b, f5308c, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    public static class b implements d {

        public static final String[] f5310b = {"_data"};

        public static final String f5311c = "kind = 1 AND video_id = ?";

        public final ContentResolver f5312a;

        public b(ContentResolver contentResolver) {
            this.f5312a = contentResolver;
        }

        @Override
        public Cursor a(Uri uri) {
            return this.f5312a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f5310b, f5311c, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    @VisibleForTesting
    public c(Uri uri, e eVar) {
        this.f5304b = uri;
        this.f5305c = eVar;
    }

    public static c c(Context context, Uri uri, d dVar) {
        return new c(uri, new e(com.bumptech.glide.b.d(context).m().g(), dVar, com.bumptech.glide.b.d(context).f(), context.getContentResolver()));
    }

    public static c d(Context context, Uri uri) {
        return c(context, uri, new a(context.getContentResolver()));
    }

    public static c f(Context context, Uri uri) {
        return c(context, uri, new b(context.getContentResolver()));
    }

    @Override
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override
    @NonNull
    public C.a b() {
        return C.a.LOCAL;
    }

    @Override
    public void cancel() {
    }

    @Override
    public void cleanup() {
        InputStream inputStream = this.f5306d;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override
    public void e(@NonNull h hVar, @NonNull d.a<? super InputStream> aVar) {
        try {
            InputStream g10 = g();
            this.f5306d = g10;
            aVar.c(g10);
        } catch (FileNotFoundException e10) {
            if (Log.isLoggable(f5303e, 3)) {
                Log.d(f5303e, "Failed to find thumbnail file", e10);
            }
            aVar.d(e10);
        }
    }

    public final InputStream g() throws FileNotFoundException {
        InputStream d10 = this.f5305c.d(this.f5304b);
        int a10 = d10 != null ? this.f5305c.a(this.f5304b) : -1;
        return a10 != -1 ? new g(d10, a10) : d10;
    }
}
