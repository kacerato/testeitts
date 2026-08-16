package com.bumptech.glide.load;

import D.m;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

public final class a {

    public static final int f59078a = 5242880;

    public class C0920a implements g {

        public final InputStream f59079a;

        public C0920a(InputStream inputStream) {
            this.f59079a = inputStream;
        }

        @Override
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.b(this.f59079a);
            } finally {
                this.f59079a.reset();
            }
        }
    }

    public class b implements g {

        public final ByteBuffer f59080a;

        public b(ByteBuffer byteBuffer) {
            this.f59080a = byteBuffer;
        }

        @Override
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            return imageHeaderParser.c(this.f59080a);
        }
    }

    public class c implements g {

        public final m f59081a;

        public final F.b f59082b;

        public c(m mVar, F.b bVar) {
            this.f59081a = mVar;
            this.f59082b = bVar;
        }

        @Override
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            RecyclableBufferedInputStream recyclableBufferedInputStream = null;
            try {
                RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(this.f59081a.a().getFileDescriptor()), this.f59082b);
                try {
                    ImageHeaderParser.ImageType b10 = imageHeaderParser.b(recyclableBufferedInputStream2);
                    try {
                        recyclableBufferedInputStream2.close();
                    } catch (IOException unused) {
                    }
                    this.f59081a.a();
                    return b10;
                } catch (Throwable th2) {
                    th = th2;
                    recyclableBufferedInputStream = recyclableBufferedInputStream2;
                    if (recyclableBufferedInputStream != null) {
                        try {
                            recyclableBufferedInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.f59081a.a();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public class d implements f {

        public final InputStream f59083a;

        public final F.b f59084b;

        public d(InputStream inputStream, F.b bVar) {
            this.f59083a = inputStream;
            this.f59084b = bVar;
        }

        @Override
        public int a(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.a(this.f59083a, this.f59084b);
            } finally {
                this.f59083a.reset();
            }
        }
    }

    public class e implements f {

        public final m f59085a;

        public final F.b f59086b;

        public e(m mVar, F.b bVar) {
            this.f59085a = mVar;
            this.f59086b = bVar;
        }

        @Override
        public int a(ImageHeaderParser imageHeaderParser) throws IOException {
            RecyclableBufferedInputStream recyclableBufferedInputStream = null;
            try {
                RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(this.f59085a.a().getFileDescriptor()), this.f59086b);
                try {
                    int a10 = imageHeaderParser.a(recyclableBufferedInputStream2, this.f59086b);
                    try {
                        recyclableBufferedInputStream2.close();
                    } catch (IOException unused) {
                    }
                    this.f59085a.a();
                    return a10;
                } catch (Throwable th2) {
                    th = th2;
                    recyclableBufferedInputStream = recyclableBufferedInputStream2;
                    if (recyclableBufferedInputStream != null) {
                        try {
                            recyclableBufferedInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.f59085a.a();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public interface f {
        int a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    public interface g {
        ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    @RequiresApi(21)
    public static int a(@NonNull List<ImageHeaderParser> list, @NonNull m mVar, @NonNull F.b bVar) throws IOException {
        return c(list, new e(mVar, bVar));
    }

    public static int b(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull F.b bVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, bVar);
        }
        inputStream.mark(5242880);
        return c(list, new d(inputStream, bVar));
    }

    public static int c(@NonNull List<ImageHeaderParser> list, f fVar) throws IOException {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            int a10 = fVar.a(list.get(i10));
            if (a10 != -1) {
                return a10;
            }
        }
        return -1;
    }

    @NonNull
    @RequiresApi(21)
    public static ImageHeaderParser.ImageType d(@NonNull List<ImageHeaderParser> list, @NonNull m mVar, @NonNull F.b bVar) throws IOException {
        return g(list, new c(mVar, bVar));
    }

    @NonNull
    public static ImageHeaderParser.ImageType e(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull F.b bVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, bVar);
        }
        inputStream.mark(5242880);
        return g(list, new C0920a(inputStream));
    }

    @NonNull
    public static ImageHeaderParser.ImageType f(@NonNull List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer) throws IOException {
        return byteBuffer == null ? ImageHeaderParser.ImageType.UNKNOWN : g(list, new b(byteBuffer));
    }

    @NonNull
    public static ImageHeaderParser.ImageType g(@NonNull List<ImageHeaderParser> list, g gVar) throws IOException {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            ImageHeaderParser.ImageType a10 = gVar.a(list.get(i10));
            if (a10 != ImageHeaderParser.ImageType.UNKNOWN) {
                return a10;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
