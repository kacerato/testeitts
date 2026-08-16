package J;

import J.n;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.InputStream;

public class u<Data> implements n<String, Data> {

    public final n<Uri, Data> f10161a;

    public static final class a implements o<String, AssetFileDescriptor> {
        @Override
        public n<String, AssetFileDescriptor> a(@NonNull r rVar) {
            return new u(rVar.d(Uri.class, AssetFileDescriptor.class));
        }

        @Override
        public void c() {
        }
    }

    public static class b implements o<String, ParcelFileDescriptor> {
        @Override
        @NonNull
        public n<String, ParcelFileDescriptor> a(@NonNull r rVar) {
            return new u(rVar.d(Uri.class, ParcelFileDescriptor.class));
        }

        @Override
        public void c() {
        }
    }

    public static class c implements o<String, InputStream> {
        @Override
        @NonNull
        public n<String, InputStream> a(@NonNull r rVar) {
            return new u(rVar.d(Uri.class, InputStream.class));
        }

        @Override
        public void c() {
        }
    }

    public u(n<Uri, Data> nVar) {
        this.f10161a = nVar;
    }

    @Nullable
    public static Uri e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.charAt(0) == '/') {
            return f(str);
        }
        Uri parse = Uri.parse(str);
        return parse.getScheme() == null ? f(str) : parse;
    }

    public static Uri f(String str) {
        return Uri.fromFile(new File(str));
    }

    @Override
    public n.a<Data> b(@NonNull String str, int i10, int i11, @NonNull C.h hVar) {
        Uri e10 = e(str);
        if (e10 == null || !this.f10161a.a(e10)) {
            return null;
        }
        return this.f10161a.b(e10, i10, i11, hVar);
    }

    @Override
    public boolean a(@NonNull String str) {
        return true;
    }
}
