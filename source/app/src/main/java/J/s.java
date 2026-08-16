package J;

import J.n;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.InputStream;

public class s<Data> implements n<Integer, Data> {

    public static final String f10152c = "ResourceLoader";

    public final n<Uri, Data> f10153a;

    public final Resources f10154b;

    public static final class a implements o<Integer, AssetFileDescriptor> {

        public final Resources f10155a;

        public a(Resources resources) {
            this.f10155a = resources;
        }

        @Override
        public n<Integer, AssetFileDescriptor> a(r rVar) {
            return new s(this.f10155a, rVar.d(Uri.class, AssetFileDescriptor.class));
        }

        @Override
        public void c() {
        }
    }

    public static class b implements o<Integer, ParcelFileDescriptor> {

        public final Resources f10156a;

        public b(Resources resources) {
            this.f10156a = resources;
        }

        @Override
        @NonNull
        public n<Integer, ParcelFileDescriptor> a(r rVar) {
            return new s(this.f10156a, rVar.d(Uri.class, ParcelFileDescriptor.class));
        }

        @Override
        public void c() {
        }
    }

    public static class c implements o<Integer, InputStream> {

        public final Resources f10157a;

        public c(Resources resources) {
            this.f10157a = resources;
        }

        @Override
        @NonNull
        public n<Integer, InputStream> a(r rVar) {
            return new s(this.f10157a, rVar.d(Uri.class, InputStream.class));
        }

        @Override
        public void c() {
        }
    }

    public static class d implements o<Integer, Uri> {

        public final Resources f10158a;

        public d(Resources resources) {
            this.f10158a = resources;
        }

        @Override
        @NonNull
        public n<Integer, Uri> a(r rVar) {
            return new s(this.f10158a, v.c());
        }

        @Override
        public void c() {
        }
    }

    public s(Resources resources, n<Uri, Data> nVar) {
        this.f10154b = resources;
        this.f10153a = nVar;
    }

    @Override
    public n.a<Data> b(@NonNull Integer num, int i10, int i11, @NonNull C.h hVar) {
        Uri d10 = d(num);
        if (d10 == null) {
            return null;
        }
        return this.f10153a.b(d10, i10, i11, hVar);
    }

    @Nullable
    public final Uri d(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.f10154b.getResourcePackageName(num.intValue()) + '/' + this.f10154b.getResourceTypeName(num.intValue()) + '/' + this.f10154b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e10) {
            if (!Log.isLoggable(f10152c, 5)) {
                return null;
            }
            Log.w(f10152c, "Received invalid resource id: " + ((Object) num), e10);
            return null;
        }
    }

    @Override
    public boolean a(@NonNull Integer num) {
        return true;
    }
}
