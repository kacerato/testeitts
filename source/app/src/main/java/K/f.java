package K;

import D.d;
import J.n;
import J.o;
import J.r;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

@RequiresApi(29)
public final class f<DataT> implements n<Uri, DataT> {

    public final Context f10676a;

    public final n<File, DataT> f10677b;

    public final n<Uri, DataT> f10678c;

    public final Class<DataT> f10679d;

    public static abstract class a<DataT> implements o<Uri, DataT> {

        public final Context f10680a;

        public final Class<DataT> f10681b;

        public a(Context context, Class<DataT> cls) {
            this.f10680a = context;
            this.f10681b = cls;
        }

        @Override
        @NonNull
        public final n<Uri, DataT> a(@NonNull r rVar) {
            return new f(this.f10680a, rVar.d(File.class, this.f10681b), rVar.d(Uri.class, this.f10681b), this.f10681b);
        }

        @Override
        public final void c() {
        }
    }

    @RequiresApi(29)
    public static final class b extends a<ParcelFileDescriptor> {
        public b(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    @RequiresApi(29)
    public static final class c extends a<InputStream> {
        public c(Context context) {
            super(context, InputStream.class);
        }
    }

    public static final class d<DataT> implements D.d<DataT> {

        public static final String[] f10682l = {"_data"};

        public final Context f10683b;

        public final n<File, DataT> f10684c;

        public final n<Uri, DataT> f10685d;

        public final Uri f10686e;

        public final int f10687f;

        public final int f10688g;

        public final C.h f10689h;

        public final Class<DataT> f10690i;

        public volatile boolean f10691j;

        @Nullable
        public volatile D.d<DataT> f10692k;

        public d(Context context, n<File, DataT> nVar, n<Uri, DataT> nVar2, Uri uri, int i10, int i11, C.h hVar, Class<DataT> cls) {
            this.f10683b = context.getApplicationContext();
            this.f10684c = nVar;
            this.f10685d = nVar2;
            this.f10686e = uri;
            this.f10687f = i10;
            this.f10688g = i11;
            this.f10689h = hVar;
            this.f10690i = cls;
        }

        @Override
        @NonNull
        public Class<DataT> a() {
            return this.f10690i;
        }

        @Override
        @NonNull
        public C.a b() {
            return C.a.LOCAL;
        }

        @Nullable
        public final n.a<DataT> c() throws FileNotFoundException {
            boolean isExternalStorageLegacy;
            isExternalStorageLegacy = Environment.isExternalStorageLegacy();
            if (isExternalStorageLegacy) {
                return this.f10684c.b(g(this.f10686e), this.f10687f, this.f10688g, this.f10689h);
            }
            return this.f10685d.b(f() ? MediaStore.setRequireOriginal(this.f10686e) : this.f10686e, this.f10687f, this.f10688g, this.f10689h);
        }

        @Override
        public void cancel() {
            this.f10691j = true;
            D.d<DataT> dVar = this.f10692k;
            if (dVar != null) {
                dVar.cancel();
            }
        }

        @Override
        public void cleanup() {
            D.d<DataT> dVar = this.f10692k;
            if (dVar != null) {
                dVar.cleanup();
            }
        }

        @Nullable
        public final D.d<DataT> d() throws FileNotFoundException {
            n.a<DataT> c10 = c();
            if (c10 != null) {
                return c10.f10129c;
            }
            return null;
        }

        @Override
        public void e(@NonNull com.bumptech.glide.h hVar, @NonNull d.a<? super DataT> aVar) {
            try {
                D.d<DataT> d10 = d();
                if (d10 == null) {
                    aVar.d(new IllegalArgumentException("Failed to build fetcher for: " + ((Object) this.f10686e)));
                    return;
                }
                this.f10692k = d10;
                if (this.f10691j) {
                    cancel();
                } else {
                    d10.e(hVar, aVar);
                }
            } catch (FileNotFoundException e10) {
                aVar.d(e10);
            }
        }

        public final boolean f() {
            return this.f10683b.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0;
        }

        @NonNull
        public final File g(Uri uri) throws FileNotFoundException {
            AutoCloseable autoCloseable = null;
            try {
                Cursor query = this.f10683b.getContentResolver().query(uri, f10682l, null, null, null);
                if (query == null || !query.moveToFirst()) {
                    throw new FileNotFoundException("Failed to media store entry for: " + ((Object) uri));
                }
                String string = query.getString(query.getColumnIndexOrThrow("_data"));
                if (!TextUtils.isEmpty(string)) {
                    File file = new File(string);
                    query.close();
                    return file;
                }
                throw new FileNotFoundException("File path was empty in media store for: " + ((Object) uri));
            } catch (Throwable th2) {
                if (0 != 0) {
                    autoCloseable.close();
                }
                throw th2;
            }
        }
    }

    public f(Context context, n<File, DataT> nVar, n<Uri, DataT> nVar2, Class<DataT> cls) {
        this.f10676a = context.getApplicationContext();
        this.f10677b = nVar;
        this.f10678c = nVar2;
        this.f10679d = cls;
    }

    @Override
    public n.a<DataT> b(@NonNull Uri uri, int i10, int i11, @NonNull C.h hVar) {
        return new n.a<>(new X.e(uri), new d(this.f10676a, this.f10677b, this.f10678c, uri, i10, i11, hVar, this.f10679d));
    }

    @Override
    public boolean a(@NonNull Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && E.b.b(uri);
    }
}
