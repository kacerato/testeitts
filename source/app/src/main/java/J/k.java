package J;

import D.d;
import J.n;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileNotFoundException;

public final class k implements n<Uri, File> {

    public final Context f10115a;

    public static final class a implements o<Uri, File> {

        public final Context f10116a;

        public a(Context context) {
            this.f10116a = context;
        }

        @Override
        @NonNull
        public n<Uri, File> a(r rVar) {
            return new k(this.f10116a);
        }

        @Override
        public void c() {
        }
    }

    public static class b implements D.d<File> {

        public static final String[] f10117d = {"_data"};

        public final Context f10118b;

        public final Uri f10119c;

        public b(Context context, Uri uri) {
            this.f10118b = context;
            this.f10119c = uri;
        }

        @Override
        @NonNull
        public Class<File> a() {
            return File.class;
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
        }

        @Override
        public void e(@NonNull com.bumptech.glide.h hVar, @NonNull d.a<? super File> aVar) {
            Cursor query = this.f10118b.getContentResolver().query(this.f10119c, f10117d, null, null, null);
            if (query != null) {
                try {
                    r0 = query.moveToFirst() ? query.getString(query.getColumnIndexOrThrow("_data")) : null;
                } finally {
                    query.close();
                }
            }
            if (!TextUtils.isEmpty(r0)) {
                aVar.c(new File(r0));
                return;
            }
            aVar.d(new FileNotFoundException("Failed to find file path for: " + ((Object) this.f10119c)));
        }
    }

    public k(Context context) {
        this.f10115a = context;
    }

    @Override
    public n.a<File> b(@NonNull Uri uri, int i10, int i11, @NonNull C.h hVar) {
        return new n.a<>(new X.e(uri), new b(this.f10115a, uri));
    }

    @Override
    public boolean a(@NonNull Uri uri) {
        return E.b.b(uri);
    }
}
