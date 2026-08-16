package com.bumptech.glide.load.resource.bitmap;

import C.g;
import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public class J<T> implements C.j<T, Bitmap> {

    public static final String f59362d = "VideoDecoder";

    public static final long f59363e = -1;

    @VisibleForTesting
    public static final int f59364f = 2;

    public static final C.g<Long> f59365g = C.g.b("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new a());

    public static final C.g<Integer> f59366h = C.g.b("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new b());

    public static final e f59367i = new e();

    public final f<T> f59368a;

    public final F.e f59369b;

    public final e f59370c;

    public class a implements g.b<Long> {

        public final ByteBuffer f59371a = ByteBuffer.allocate(8);

        @Override
        public void a(@NonNull byte[] bArr, @NonNull Long l10, @NonNull MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f59371a) {
                this.f59371a.position(0);
                messageDigest.update(this.f59371a.putLong(l10.longValue()).array());
            }
        }
    }

    public class b implements g.b<Integer> {

        public final ByteBuffer f59372a = ByteBuffer.allocate(4);

        @Override
        public void a(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f59372a) {
                this.f59372a.position(0);
                messageDigest.update(this.f59372a.putInt(num.intValue()).array());
            }
        }
    }

    public static final class c implements f<AssetFileDescriptor> {
        public c() {
        }

        @Override
        public void a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }

        public c(a aVar) {
            this();
        }
    }

    @RequiresApi(23)
    public static final class d implements f<ByteBuffer> {

        public class a extends MediaDataSource {

            public final ByteBuffer f59373b;

            public a(ByteBuffer byteBuffer) {
                this.f59373b = byteBuffer;
            }

            @Override
            public void close() {
            }

            @Override
            public long getSize() {
                return this.f59373b.limit();
            }

            @Override
            public int readAt(long j10, byte[] bArr, int i10, int i11) {
                if (j10 >= this.f59373b.limit()) {
                    return -1;
                }
                this.f59373b.position((int) j10);
                int min = Math.min(i11, this.f59373b.remaining());
                this.f59373b.get(bArr, i10, min);
                return min;
            }
        }

        @Override
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
            mediaMetadataRetriever.setDataSource(new a(byteBuffer));
        }
    }

    @VisibleForTesting
    public static class e {
        public MediaMetadataRetriever a() {
            return new MediaMetadataRetriever();
        }
    }

    @VisibleForTesting
    public interface f<T> {
        void a(MediaMetadataRetriever mediaMetadataRetriever, T t10);
    }

    public static final class g implements f<ParcelFileDescriptor> {
        @Override
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    public J(F.e eVar, f<T> fVar) {
        this(eVar, fVar, f59367i);
    }

    public static C.j<AssetFileDescriptor, Bitmap> c(F.e eVar) {
        return new J(eVar, new c(null));
    }

    @RequiresApi(api = 23)
    public static C.j<ByteBuffer, Bitmap> d(F.e eVar) {
        return new J(eVar, new d());
    }

    @Nullable
    public static Bitmap e(MediaMetadataRetriever mediaMetadataRetriever, long j10, int i10, int i11, int i12, p pVar) {
        Bitmap g10 = (Build.VERSION.SDK_INT < 27 || i11 == Integer.MIN_VALUE || i12 == Integer.MIN_VALUE || pVar == p.f59409f) ? null : g(mediaMetadataRetriever, j10, i10, i11, i12, pVar);
        return g10 == null ? f(mediaMetadataRetriever, j10, i10) : g10;
    }

    public static Bitmap f(MediaMetadataRetriever mediaMetadataRetriever, long j10, int i10) {
        return mediaMetadataRetriever.getFrameAtTime(j10, i10);
    }

    @TargetApi(27)
    public static Bitmap g(MediaMetadataRetriever mediaMetadataRetriever, long j10, int i10, int i11, int i12, p pVar) {
        Bitmap scaledFrameAtTime;
        try {
            int parseInt = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int parseInt2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int parseInt3 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (parseInt3 == 90 || parseInt3 == 270) {
                parseInt2 = parseInt;
                parseInt = parseInt2;
            }
            float b10 = pVar.b(parseInt, parseInt2, i11, i12);
            scaledFrameAtTime = mediaMetadataRetriever.getScaledFrameAtTime(j10, i10, Math.round(parseInt * b10), Math.round(b10 * parseInt2));
            return scaledFrameAtTime;
        } catch (Throwable th2) {
            if (!Log.isLoggable(f59362d, 3)) {
                return null;
            }
            Log.d(f59362d, "Exception trying to decode frame on oreo+", th2);
            return null;
        }
    }

    public static C.j<ParcelFileDescriptor, Bitmap> h(F.e eVar) {
        return new J(eVar, new g());
    }

    @Override
    public com.bumptech.glide.load.engine.t<Bitmap> a(@NonNull T t10, int i10, int i11, @NonNull C.h hVar) throws IOException {
        long longValue = ((Long) hVar.a(f59365g)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
        Integer num = (Integer) hVar.a(f59366h);
        if (num == null) {
            num = 2;
        }
        p pVar = (p) hVar.a(p.f59411h);
        if (pVar == null) {
            pVar = p.f59410g;
        }
        p pVar2 = pVar;
        MediaMetadataRetriever a10 = this.f59370c.a();
        try {
            try {
                this.f59368a.a(a10, t10);
                Bitmap e10 = e(a10, longValue, num.intValue(), i10, i11, pVar2);
                a10.release();
                return C11707g.c(e10, this.f59369b);
            } catch (RuntimeException e11) {
                throw new IOException(e11);
            }
        } catch (Throwable th2) {
            a10.release();
            throw th2;
        }
    }

    @Override
    public boolean b(@NonNull T t10, @NonNull C.h hVar) {
        return true;
    }

    @VisibleForTesting
    public J(F.e eVar, f<T> fVar, e eVar2) {
        this.f59369b = eVar;
        this.f59368a = fVar;
        this.f59370c = eVar2;
    }
}
