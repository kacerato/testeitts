package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public interface x {

    public static final class a implements x {

        public final D.k f59454a;

        public final F.b f59455b;

        public final List<ImageHeaderParser> f59456c;

        public a(InputStream inputStream, List<ImageHeaderParser> list, F.b bVar) {
            this.f59455b = (F.b) Y.k.d(bVar);
            this.f59456c = (List) Y.k.d(list);
            this.f59454a = new D.k(inputStream, bVar);
        }

        @Override
        public void a() {
            this.f59454a.b();
        }

        @Override
        public int b() throws IOException {
            return com.bumptech.glide.load.a.b(this.f59456c, this.f59454a.a(), this.f59455b);
        }

        @Override
        @Nullable
        public Bitmap c(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeStream(this.f59454a.a(), null, options);
        }

        @Override
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.a.e(this.f59456c, this.f59454a.a(), this.f59455b);
        }
    }

    @RequiresApi(21)
    public static final class b implements x {

        public final F.b f59457a;

        public final List<ImageHeaderParser> f59458b;

        public final D.m f59459c;

        public b(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, F.b bVar) {
            this.f59457a = (F.b) Y.k.d(bVar);
            this.f59458b = (List) Y.k.d(list);
            this.f59459c = new D.m(parcelFileDescriptor);
        }

        @Override
        public void a() {
        }

        @Override
        public int b() throws IOException {
            return com.bumptech.glide.load.a.a(this.f59458b, this.f59459c, this.f59457a);
        }

        @Override
        @Nullable
        public Bitmap c(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeFileDescriptor(this.f59459c.a().getFileDescriptor(), null, options);
        }

        @Override
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.a.d(this.f59458b, this.f59459c, this.f59457a);
        }
    }

    void a();

    int b() throws IOException;

    @Nullable
    Bitmap c(BitmapFactory.Options options) throws IOException;

    ImageHeaderParser.ImageType d() throws IOException;
}
