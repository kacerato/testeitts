package J;

import J.n;
import android.content.ContentResolver;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import java.io.InputStream;

public class a<Data> implements n<Uri, Data> {

    public static final String f10067c = "android_asset";

    public static final String f10068d = "file:///android_asset/";

    public static final int f10069e = 22;

    public final AssetManager f10070a;

    public final InterfaceC0242a<Data> f10071b;

    public interface InterfaceC0242a<Data> {
        D.d<Data> b(AssetManager assetManager, String str);
    }

    public static class b implements o<Uri, ParcelFileDescriptor>, InterfaceC0242a<ParcelFileDescriptor> {

        public final AssetManager f10072a;

        public b(AssetManager assetManager) {
            this.f10072a = assetManager;
        }

        @Override
        @NonNull
        public n<Uri, ParcelFileDescriptor> a(r rVar) {
            return new a(this.f10072a, this);
        }

        @Override
        public D.d<ParcelFileDescriptor> b(AssetManager assetManager, String str) {
            return new D.h(assetManager, str);
        }

        @Override
        public void c() {
        }
    }

    public static class c implements o<Uri, InputStream>, InterfaceC0242a<InputStream> {

        public final AssetManager f10073a;

        public c(AssetManager assetManager) {
            this.f10073a = assetManager;
        }

        @Override
        @NonNull
        public n<Uri, InputStream> a(r rVar) {
            return new a(this.f10073a, this);
        }

        @Override
        public D.d<InputStream> b(AssetManager assetManager, String str) {
            return new D.n(assetManager, str);
        }

        @Override
        public void c() {
        }
    }

    public a(AssetManager assetManager, InterfaceC0242a<Data> interfaceC0242a) {
        this.f10070a = assetManager;
        this.f10071b = interfaceC0242a;
    }

    @Override
    public n.a<Data> b(@NonNull Uri uri, int i10, int i11, @NonNull C.h hVar) {
        return new n.a<>(new X.e(uri), this.f10071b.b(this.f10070a, uri.toString().substring(f10069e)));
    }

    @Override
    public boolean a(@NonNull Uri uri) {
        return ContentResolver.SCHEME_FILE.equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && f10067c.equals(uri.getPathSegments().get(0));
    }
}
