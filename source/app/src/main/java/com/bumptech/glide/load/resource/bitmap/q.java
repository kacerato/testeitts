package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.p;
import com.bumptech.glide.load.resource.bitmap.x;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

public final class q {

    public static final String f59413f = "Downsampler";

    public static final C.g<C.b> f59414g = C.g.g("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", C.b.DEFAULT);

    public static final C.g<C.i> f59415h = C.g.g("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", C.i.SRGB);

    @Deprecated
    public static final C.g<p> f59416i = p.f59411h;

    public static final C.g<Boolean> f59417j;

    public static final C.g<Boolean> f59418k;

    public static final String f59419l = "image/vnd.wap.wbmp";

    public static final String f59420m = "image/x-ico";

    public static final Set<String> f59421n;

    public static final b f59422o;

    public static final Set<ImageHeaderParser.ImageType> f59423p;

    public static final Queue<BitmapFactory.Options> f59424q;

    public final F.e f59425a;

    public final DisplayMetrics f59426b;

    public final F.b f59427c;

    public final List<ImageHeaderParser> f59428d;

    public final w f59429e = w.a();

    public class a implements b {
        @Override
        public void a() {
        }

        @Override
        public void b(F.e eVar, Bitmap bitmap) {
        }
    }

    public interface b {
        void a();

        void b(F.e eVar, Bitmap bitmap) throws IOException;
    }

    static {
        Boolean bool = Boolean.FALSE;
        f59417j = C.g.g("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        f59418k = C.g.g("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        f59421n = Collections.unmodifiableSet(new HashSet(Arrays.asList(f59419l, f59420m)));
        f59422o = new a();
        f59423p = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        f59424q = Y.m.f(0);
    }

    public q(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, F.e eVar, F.b bVar) {
        this.f59428d = list;
        this.f59426b = (DisplayMetrics) Y.k.d(displayMetrics);
        this.f59425a = (F.e) Y.k.d(eVar);
        this.f59427c = (F.b) Y.k.d(bVar);
    }

    public static int a(double d10) {
        return x((d10 / (r1 / r0)) * x(l(d10) * d10));
    }

    public static void c(ImageHeaderParser.ImageType imageType, x xVar, b bVar, F.e eVar, p pVar, int i10, int i11, int i12, int i13, int i14, BitmapFactory.Options options) throws IOException {
        int i15;
        int i16;
        int floor;
        int floor2;
        if (i11 <= 0 || i12 <= 0) {
            if (Log.isLoggable(f59413f, 3)) {
                Log.d(f59413f, "Unable to determine dimensions for: " + ((Object) imageType) + " with target [" + i13 + "x" + i14 + "]");
                return;
            }
            return;
        }
        if (r(i10)) {
            i16 = i11;
            i15 = i12;
        } else {
            i15 = i11;
            i16 = i12;
        }
        float b10 = pVar.b(i15, i16, i13, i14);
        if (b10 <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + b10 + " from: " + ((Object) pVar) + ", source: [" + i11 + "x" + i12 + "], target: [" + i13 + "x" + i14 + "]");
        }
        p.g a10 = pVar.a(i15, i16, i13, i14);
        if (a10 == null) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        float f10 = i15;
        float f11 = i16;
        int x10 = i15 / x(b10 * f10);
        int x11 = i16 / x(b10 * f11);
        p.g gVar = p.g.MEMORY;
        int max = Math.max(1, Integer.highestOneBit(a10 == gVar ? Math.max(x10, x11) : Math.min(x10, x11)));
        if (a10 == gVar && max < 1.0f / b10) {
            max <<= 1;
        }
        options.inSampleSize = max;
        if (imageType == ImageHeaderParser.ImageType.JPEG) {
            float min = Math.min(max, 8);
            floor = (int) Math.ceil(f10 / min);
            floor2 = (int) Math.ceil(f11 / min);
            int i17 = max / 8;
            if (i17 > 0) {
                floor /= i17;
                floor2 /= i17;
            }
        } else if (imageType == ImageHeaderParser.ImageType.PNG || imageType == ImageHeaderParser.ImageType.PNG_A) {
            float f12 = max;
            floor = (int) Math.floor(f10 / f12);
            floor2 = (int) Math.floor(f11 / f12);
        } else if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
            float f13 = max;
            floor = Math.round(f10 / f13);
            floor2 = Math.round(f11 / f13);
        } else if (i15 % max == 0 && i16 % max == 0) {
            floor = i15 / max;
            floor2 = i16 / max;
        } else {
            int[] m10 = m(xVar, options, bVar, eVar);
            floor = m10[0];
            floor2 = m10[1];
        }
        double b11 = pVar.b(floor, floor2, i13, i14);
        options.inTargetDensity = a(b11);
        options.inDensity = l(b11);
        if (s(options)) {
            options.inScaled = true;
        } else {
            options.inTargetDensity = 0;
            options.inDensity = 0;
        }
        if (Log.isLoggable(f59413f, 2)) {
            Log.v(f59413f, "Calculate scaling, source: [" + i11 + "x" + i12 + "], degreesToRotate: " + i10 + ", target: [" + i13 + "x" + i14 + "], power of two scaled: [" + floor + "x" + floor2 + "], exact scale factor: " + b10 + ", power of 2 sample size: " + max + ", adjusted scale factor: " + b11 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        throw r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap i(x xVar, BitmapFactory.Options options, b bVar, F.e eVar) throws IOException {
        if (!options.inJustDecodeBounds) {
            bVar.a();
            xVar.a();
        }
        int i10 = options.outWidth;
        int i11 = options.outHeight;
        String str = options.outMimeType;
        F.i().lock();
        try {
            try {
                Bitmap c10 = xVar.c(options);
                F.i().unlock();
                return c10;
            } catch (IllegalArgumentException e10) {
                IOException u10 = u(e10, i10, i11, str, options);
                if (Log.isLoggable(f59413f, 3)) {
                    Log.d(f59413f, "Failed to decode with inBitmap, trying again without Bitmap re-use", u10);
                }
                Bitmap bitmap = options.inBitmap;
                if (bitmap == null) {
                    throw u10;
                }
                try {
                    eVar.d(bitmap);
                    options.inBitmap = null;
                    Bitmap i12 = i(xVar, options, bVar, eVar);
                    F.i().unlock();
                    return i12;
                } catch (IOException unused) {
                    throw u10;
                }
            }
        } catch (Throwable th2) {
            F.i().unlock();
            throw th2;
        }
    }

    @Nullable
    @TargetApi(19)
    public static String j(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + ((Object) bitmap.getConfig()) + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    public static synchronized BitmapFactory.Options k() {
        BitmapFactory.Options poll;
        synchronized (q.class) {
            Queue<BitmapFactory.Options> queue = f59424q;
            synchronized (queue) {
                poll = queue.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                w(poll);
            }
        }
        return poll;
    }

    public static int l(double d10) {
        if (d10 > 1.0d) {
            d10 = 1.0d / d10;
        }
        return (int) Math.round(d10 * 2.147483647E9d);
    }

    public static int[] m(x xVar, BitmapFactory.Options options, b bVar, F.e eVar) throws IOException {
        options.inJustDecodeBounds = true;
        i(xVar, options, bVar, eVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    public static String n(BitmapFactory.Options options) {
        return j(options.inBitmap);
    }

    public static boolean r(int i10) {
        return i10 == 90 || i10 == 270;
    }

    public static boolean s(BitmapFactory.Options options) {
        int i10;
        int i11 = options.inTargetDensity;
        return i11 > 0 && (i10 = options.inDensity) > 0 && i11 != i10;
    }

    public static void t(int i10, int i11, String str, BitmapFactory.Options options, Bitmap bitmap, int i12, int i13, long j10) {
        Log.v(f59413f, "Decoded " + j(bitmap) + " from [" + i10 + "x" + i11 + "] " + str + " with inBitmap " + n(options) + " for [" + i12 + "x" + i13 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + Y.g.a(j10));
    }

    public static IOException u(IllegalArgumentException illegalArgumentException, int i10, int i11, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i10 + ", outHeight: " + i11 + ", outMimeType: " + str + ", inBitmap: " + n(options), illegalArgumentException);
    }

    public static void v(BitmapFactory.Options options) {
        w(options);
        Queue<BitmapFactory.Options> queue = f59424q;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    public static void w(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.inPreferredColorSpace = null;
        options.outColorSpace = null;
        options.outConfig = null;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public static int x(double d10) {
        return (int) (d10 + 0.5d);
    }

    @TargetApi(26)
    public static void y(BitmapFactory.Options options, F.e eVar, int i10, int i11) {
        Bitmap.Config config = options.inPreferredConfig;
        if (config == Bitmap.Config.HARDWARE) {
            return;
        }
        Bitmap.Config config2 = options.outConfig;
        if (config2 != null) {
            config = config2;
        }
        options.inBitmap = eVar.g(i10, i11, config);
    }

    public final void b(x xVar, C.b bVar, boolean z10, boolean z11, BitmapFactory.Options options, int i10, int i11) {
        boolean z12;
        if (this.f59429e.e(i10, i11, options, z10, z11)) {
            return;
        }
        if (bVar == C.b.PREFER_ARGB_8888) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        try {
            z12 = xVar.d().hasAlpha();
        } catch (IOException e10) {
            if (Log.isLoggable(f59413f, 3)) {
                Log.d(f59413f, "Cannot determine whether the image has alpha or not from header, format " + ((Object) bVar), e10);
            }
            z12 = false;
        }
        Bitmap.Config config = z12 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        options.inPreferredConfig = config;
        if (config == Bitmap.Config.RGB_565) {
            options.inDither = true;
        }
    }

    @RequiresApi(21)
    public com.bumptech.glide.load.engine.t<Bitmap> d(ParcelFileDescriptor parcelFileDescriptor, int i10, int i11, C.h hVar) throws IOException {
        return e(new x.b(parcelFileDescriptor, this.f59428d, this.f59427c), i10, i11, hVar, f59422o);
    }

    public final com.bumptech.glide.load.engine.t<Bitmap> e(x xVar, int i10, int i11, C.h hVar, b bVar) throws IOException {
        byte[] bArr = (byte[]) this.f59427c.c(65536, byte[].class);
        BitmapFactory.Options k10 = k();
        k10.inTempStorage = bArr;
        C.b bVar2 = (C.b) hVar.a(f59414g);
        C.i iVar = (C.i) hVar.a(f59415h);
        p pVar = (p) hVar.a(p.f59411h);
        boolean booleanValue = ((Boolean) hVar.a(f59417j)).booleanValue();
        C.g<Boolean> gVar = f59418k;
        try {
            return C11707g.c(h(xVar, k10, pVar, bVar2, iVar, hVar.a(gVar) != null && ((Boolean) hVar.a(gVar)).booleanValue(), i10, i11, booleanValue, bVar), this.f59425a);
        } finally {
            v(k10);
            this.f59427c.put(bArr);
        }
    }

    public com.bumptech.glide.load.engine.t<Bitmap> f(InputStream inputStream, int i10, int i11, C.h hVar) throws IOException {
        return g(inputStream, i10, i11, hVar, f59422o);
    }

    public com.bumptech.glide.load.engine.t<Bitmap> g(InputStream inputStream, int i10, int i11, C.h hVar, b bVar) throws IOException {
        return e(new x.a(inputStream, this.f59428d, this.f59427c), i10, i11, hVar, bVar);
    }

    public final Bitmap h(x xVar, BitmapFactory.Options options, p pVar, C.b bVar, C.i iVar, boolean z10, int i10, int i11, boolean z11, b bVar2) throws IOException {
        int i12;
        int i13;
        String str;
        int i14;
        ColorSpace colorSpace;
        int round;
        int round2;
        long b10 = Y.g.b();
        int[] m10 = m(xVar, options, bVar2, this.f59425a);
        int i15 = m10[0];
        int i16 = m10[1];
        String str2 = options.outMimeType;
        boolean z12 = (i15 == -1 || i16 == -1) ? false : z10;
        int b11 = xVar.b();
        int j10 = F.j(b11);
        boolean m11 = F.m(b11);
        if (i10 == Integer.MIN_VALUE) {
            i12 = i11;
            i13 = r(j10) ? i16 : i15;
        } else {
            i12 = i11;
            i13 = i10;
        }
        int i17 = i12 == Integer.MIN_VALUE ? r(j10) ? i15 : i16 : i12;
        ImageHeaderParser.ImageType d10 = xVar.d();
        c(d10, xVar, bVar2, this.f59425a, pVar, j10, i15, i16, i13, i17, options);
        b(xVar, bVar, z12, m11, options, i13, i17);
        int i18 = Build.VERSION.SDK_INT;
        if (z(d10)) {
            if (i15 < 0 || i16 < 0 || !z11) {
                float f10 = s(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i19 = options.inSampleSize;
                float f11 = i19;
                int ceil = (int) Math.ceil(i15 / f11);
                int ceil2 = (int) Math.ceil(i16 / f11);
                round = Math.round(ceil * f10);
                round2 = Math.round(ceil2 * f10);
                str = f59413f;
                if (Log.isLoggable(str, 2)) {
                    Log.v(str, "Calculated target [" + round + "x" + round2 + "] for source [" + i15 + "x" + i16 + "], sampleSize: " + i19 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f10);
                }
            } else {
                str = f59413f;
                round = i13;
                round2 = i17;
            }
            if (round > 0 && round2 > 0) {
                y(options, this.f59425a, round, round2);
            }
        } else {
            str = f59413f;
        }
        if (i18 >= 28) {
            options.inPreferredColorSpace = ColorSpace.get((iVar == C.i.DISPLAY_P3 && (colorSpace = options.outColorSpace) != null && colorSpace.isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
        } else {
            options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
        }
        Bitmap i20 = i(xVar, options, bVar2, this.f59425a);
        bVar2.b(this.f59425a, i20);
        if (Log.isLoggable(str, 2)) {
            i14 = b11;
            t(i15, i16, str2, options, i20, i10, i11, b10);
        } else {
            i14 = b11;
        }
        if (i20 == null) {
            return null;
        }
        i20.setDensity(this.f59426b.densityDpi);
        Bitmap o10 = F.o(this.f59425a, i20, i14);
        if (i20.equals(o10)) {
            return o10;
        }
        this.f59425a.d(i20);
        return o10;
    }

    public boolean o(ParcelFileDescriptor parcelFileDescriptor) {
        return D.m.b();
    }

    public boolean p(InputStream inputStream) {
        return true;
    }

    public boolean q(ByteBuffer byteBuffer) {
        return true;
    }

    public final boolean z(ImageHeaderParser.ImageType imageType) {
        return true;
    }
}
