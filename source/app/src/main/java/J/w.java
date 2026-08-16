package J;

import J.n;
import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class w<Data> implements n<Uri, Data> {

    public static final Set<String> f10165b = Collections.unmodifiableSet(new HashSet(Arrays.asList(ContentResolver.SCHEME_FILE, ContentResolver.SCHEME_ANDROID_RESOURCE, "content")));

    public final c<Data> f10166a;

    public static final class a implements o<Uri, AssetFileDescriptor>, c<AssetFileDescriptor> {

        public final ContentResolver f10167a;

        public a(ContentResolver contentResolver) {
            this.f10167a = contentResolver;
        }

        @Override
        public n<Uri, AssetFileDescriptor> a(r rVar) {
            return new w(this);
        }

        @Override
        public D.d<AssetFileDescriptor> b(Uri uri) {
            return new D.a(this.f10167a, uri);
        }

        @Override
        public void c() {
        }
    }

    public static class b implements o<Uri, ParcelFileDescriptor>, c<ParcelFileDescriptor> {

        public final ContentResolver f10168a;

        public b(ContentResolver contentResolver) {
            this.f10168a = contentResolver;
        }

        @Override
        @NonNull
        public n<Uri, ParcelFileDescriptor> a(r rVar) {
            return new w(this);
        }

        @Override
        public D.d<ParcelFileDescriptor> b(Uri uri) {
            return new D.i(this.f10168a, uri);
        }

        @Override
        public void c() {
        }
    }

    public interface c<Data> {
        D.d<Data> b(Uri uri);
    }

    public static class d implements o<Uri, InputStream>, c<InputStream> {

        public final ContentResolver f10169a;

        public d(ContentResolver contentResolver) {
            this.f10169a = contentResolver;
        }

        @Override
        @NonNull
        public n<Uri, InputStream> a(r rVar) {
            return new w(this);
        }

        @Override
        public D.d<InputStream> b(Uri uri) {
            return new D.o(this.f10169a, uri);
        }

        @Override
        public void c() {
        }
    }

    public w(c<Data> cVar) {
        this.f10166a = cVar;
    }

    @Override
    public n.a<Data> b(@NonNull Uri uri, int i10, int i11, @NonNull C.h hVar) {
        return new n.a<>(new X.e(uri), this.f10166a.b(uri));
    }

    @Override
    public boolean a(@NonNull Uri uri) {
        return f10165b.contains(uri.getScheme());
    }
}
