package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class F {

    public static final String f59348a = "TransformationUtils";

    public static final int f59349b = 6;

    public static final int f59351d = 7;

    public static final Paint f59353f;

    public static final Set<String> f59354g;

    public static final Lock f59355h;

    public static final Paint f59350c = new Paint(6);

    public static final Paint f59352e = new Paint(7);

    public class a implements c {

        public final int f59356a;

        public a(int i10) {
            this.f59356a = i10;
        }

        @Override
        public void a(Canvas canvas, Paint paint, RectF rectF) {
            int i10 = this.f59356a;
            canvas.drawRoundRect(rectF, i10, i10, paint);
        }
    }

    public class b implements c {

        public final float f59357a;

        public final float f59358b;

        public final float f59359c;

        public final float f59360d;

        public b(float f10, float f11, float f12, float f13) {
            this.f59357a = f10;
            this.f59358b = f11;
            this.f59359c = f12;
            this.f59360d = f13;
        }

        @Override
        public void a(Canvas canvas, Paint paint, RectF rectF) {
            Path path = new Path();
            float f10 = this.f59357a;
            float f11 = this.f59358b;
            float f12 = this.f59359c;
            float f13 = this.f59360d;
            path.addRoundRect(rectF, new float[]{f10, f10, f11, f11, f12, f12, f13, f13}, Path.Direction.CW);
            canvas.drawPath(path, paint);
        }
    }

    public interface c {
        void a(Canvas canvas, Paint paint, RectF rectF);
    }

    public static final class d implements Lock {
        @Override
        public void lock() {
        }

        @Override
        public void lockInterruptibly() throws InterruptedException {
        }

        @Override
        @NonNull
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override
        public boolean tryLock() {
            return true;
        }

        @Override
        public void unlock() {
        }

        @Override
        public boolean tryLock(long j10, @NonNull TimeUnit timeUnit) throws InterruptedException {
            return true;
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        f59354g = hashSet;
        f59355h = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new d();
        Paint paint = new Paint(7);
        f59353f = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    public static void a(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, Matrix matrix) {
        Lock lock = f59355h;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f59350c);
            e(canvas);
            lock.unlock();
        } catch (Throwable th2) {
            f59355h.unlock();
            throw th2;
        }
    }

    public static Bitmap b(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11) {
        float width;
        float height;
        if (bitmap.getWidth() == i10 && bitmap.getHeight() == i11) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f10 = 0.0f;
        if (bitmap.getWidth() * i11 > bitmap.getHeight() * i10) {
            width = i11 / bitmap.getHeight();
            f10 = (i10 - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i10 / bitmap.getWidth();
            height = (i11 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (f10 + 0.5f), (int) (height + 0.5f));
        Bitmap f11 = eVar.f(i10, i11, k(bitmap));
        t(bitmap, f11);
        a(bitmap, f11, matrix);
        return f11;
    }

    public static Bitmap c(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11) {
        if (bitmap.getWidth() > i10 || bitmap.getHeight() > i11) {
            if (Log.isLoggable(f59348a, 2)) {
                Log.v(f59348a, "requested target size too big for input, fit centering instead");
            }
            return f(eVar, bitmap, i10, i11);
        }
        if (Log.isLoggable(f59348a, 2)) {
            Log.v(f59348a, "requested target size larger or equal to input, returning input");
        }
        return bitmap;
    }

    public static Bitmap d(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11) {
        int min = Math.min(i10, i11);
        float f10 = min;
        float f11 = f10 / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float max = Math.max(f10 / width, f10 / height);
        float f12 = width * max;
        float f13 = max * height;
        float f14 = (f10 - f12) / 2.0f;
        float f15 = (f10 - f13) / 2.0f;
        RectF rectF = new RectF(f14, f15, f12 + f14, f13 + f15);
        Bitmap g10 = g(eVar, bitmap);
        Bitmap f16 = eVar.f(min, min, h(bitmap));
        f16.setHasAlpha(true);
        Lock lock = f59355h;
        lock.lock();
        try {
            Canvas canvas = new Canvas(f16);
            canvas.drawCircle(f11, f11, f11, f59352e);
            canvas.drawBitmap(g10, (Rect) null, rectF, f59353f);
            e(canvas);
            lock.unlock();
            if (!g10.equals(bitmap)) {
                eVar.d(g10);
            }
            return f16;
        } catch (Throwable th2) {
            f59355h.unlock();
            throw th2;
        }
    }

    public static void e(Canvas canvas) {
        canvas.setBitmap(null);
    }

    public static Bitmap f(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11) {
        if (bitmap.getWidth() == i10 && bitmap.getHeight() == i11) {
            if (Log.isLoggable(f59348a, 2)) {
                Log.v(f59348a, "requested target size matches input, returning input");
            }
            return bitmap;
        }
        float min = Math.min(i10 / bitmap.getWidth(), i11 / bitmap.getHeight());
        int round = Math.round(bitmap.getWidth() * min);
        int round2 = Math.round(bitmap.getHeight() * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            if (Log.isLoggable(f59348a, 2)) {
                Log.v(f59348a, "adjusted target size matches input, returning input");
            }
            return bitmap;
        }
        Bitmap f10 = eVar.f((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), k(bitmap));
        t(bitmap, f10);
        if (Log.isLoggable(f59348a, 2)) {
            Log.v(f59348a, "request: " + i10 + "x" + i11);
            Log.v(f59348a, "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight());
            Log.v(f59348a, "toReuse: " + f10.getWidth() + "x" + f10.getHeight());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("minPct:   ");
            sb2.append(min);
            Log.v(f59348a, sb2.toString());
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        a(bitmap, f10, matrix);
        return f10;
    }

    public static Bitmap g(@NonNull F.e eVar, @NonNull Bitmap bitmap) {
        Bitmap.Config h10 = h(bitmap);
        if (h10.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap f10 = eVar.f(bitmap.getWidth(), bitmap.getHeight(), h10);
        new Canvas(f10).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return f10;
    }

    @NonNull
    public static Bitmap.Config h(@NonNull Bitmap bitmap) {
        Bitmap.Config config = Bitmap.Config.RGBA_F16;
        return config.equals(bitmap.getConfig()) ? config : Bitmap.Config.ARGB_8888;
    }

    public static Lock i() {
        return f59355h;
    }

    public static int j(int i10) {
        switch (i10) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    @NonNull
    public static Bitmap.Config k(@NonNull Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    @VisibleForTesting
    public static void l(int i10, Matrix matrix) {
        switch (i10) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return;
            case 3:
                matrix.setRotate(180.0f);
                return;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 6:
                matrix.setRotate(90.0f);
                return;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 8:
                matrix.setRotate(-90.0f);
                return;
            default:
                return;
        }
    }

    public static boolean m(int i10) {
        switch (i10) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public static Bitmap n(@NonNull Bitmap bitmap, int i10) {
        if (i10 == 0) {
            return bitmap;
        }
        try {
            Matrix matrix = new Matrix();
            matrix.setRotate(i10);
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (Exception e10) {
            if (!Log.isLoggable(f59348a, 6)) {
                return bitmap;
            }
            Log.e(f59348a, "Exception when trying to orient image", e10);
            return bitmap;
        }
    }

    public static Bitmap o(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10) {
        if (!m(i10)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        l(i10, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        Bitmap f10 = eVar.f(Math.round(rectF.width()), Math.round(rectF.height()), k(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        f10.setHasAlpha(bitmap.hasAlpha());
        a(bitmap, f10, matrix);
        return f10;
    }

    public static Bitmap p(@NonNull F.e eVar, @NonNull Bitmap bitmap, float f10, float f11, float f12, float f13) {
        return s(eVar, bitmap, new b(f10, f11, f12, f13));
    }

    public static Bitmap q(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10) {
        Y.k.a(i10 > 0, "roundingRadius must be greater than 0.");
        return s(eVar, bitmap, new a(i10));
    }

    @Deprecated
    public static Bitmap r(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11, int i12) {
        return q(eVar, bitmap, i12);
    }

    public static Bitmap s(@NonNull F.e eVar, @NonNull Bitmap bitmap, c cVar) {
        Bitmap.Config h10 = h(bitmap);
        Bitmap g10 = g(eVar, bitmap);
        Bitmap f10 = eVar.f(g10.getWidth(), g10.getHeight(), h10);
        f10.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(g10, tileMode, tileMode);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, f10.getWidth(), f10.getHeight());
        Lock lock = f59355h;
        lock.lock();
        try {
            Canvas canvas = new Canvas(f10);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            cVar.a(canvas, paint, rectF);
            e(canvas);
            lock.unlock();
            if (!g10.equals(bitmap)) {
                eVar.d(g10);
            }
            return f10;
        } catch (Throwable th2) {
            f59355h.unlock();
            throw th2;
        }
    }

    public static void t(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }
}
