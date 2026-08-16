package android.graphics;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.TypedValue;
import java.io.FileDescriptor;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/BitmapFactory.class
 */
public class BitmapFactory {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/BitmapFactory$Options.class
 */
    public static class Options {
        public Bitmap inBitmap;
        public int inDensity;

        @Deprecated
        public boolean inDither;

        @Deprecated
        public boolean inInputShareable;
        public boolean inJustDecodeBounds;
        public boolean inMutable;

        @Deprecated
        public boolean inPreferQualityOverSpeed;
        public ColorSpace inPreferredColorSpace;
        public Bitmap.Config inPreferredConfig;
        public boolean inPremultiplied;

        @Deprecated
        public boolean inPurgeable;
        public int inSampleSize;
        public boolean inScaled;
        public int inScreenDensity;
        public int inTargetDensity;
        public byte[] inTempStorage = null;

        @Deprecated
        public boolean mCancel;
        public ColorSpace outColorSpace;
        public Bitmap.Config outConfig;
        public int outHeight;
        public String outMimeType;
        public int outWidth;

        public Options() {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public void requestCancelDecode() {
            throw new RuntimeException("Stub!");
        }
    }

    public BitmapFactory() {
        throw new RuntimeException("Stub!");
    }

    public static Bitmap decodeFile(String pathName, Options opts) {
        throw new RuntimeException("Stub!");
    }

    public static Bitmap decodeFile(String pathName) {
        throw new RuntimeException("Stub!");
    }

    public static Bitmap decodeResourceStream(Resources res, TypedValue value, InputStream is, Rect pad, Options opts) {
        throw new RuntimeException("Stub!");
    }

    public static Bitmap decodeResource(Resources res, int id2, Options opts) {
        throw new RuntimeException("Stub!");
    }

    public static Bitmap decodeResource(Resources res, int id2) {
        throw new RuntimeException("Stub!");
    }

    public static Bitmap decodeByteArray(byte[] data, int offset, int length, Options opts) {
        throw new RuntimeException("Stub!");
    }

    public static Bitmap decodeByteArray(byte[] data, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public static Bitmap decodeStream(InputStream is, Rect outPadding, Options opts) {
        throw new RuntimeException("Stub!");
    }

    public static Bitmap decodeStream(InputStream is) {
        throw new RuntimeException("Stub!");
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fd2, Rect outPadding, Options opts) {
        throw new RuntimeException("Stub!");
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fd2) {
        throw new RuntimeException("Stub!");
    }
}
