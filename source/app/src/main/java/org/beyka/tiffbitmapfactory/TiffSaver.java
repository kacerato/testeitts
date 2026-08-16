package org.beyka.tiffbitmapfactory;

import android.graphics.Bitmap;
import java.io.File;
import org.beyka.tiffbitmapfactory.exceptions.CantOpenFileException;
import org.beyka.tiffbitmapfactory.exceptions.NotEnoughtMemoryException;

public class TiffSaver {

    public static final class SaveOptions {

        public long f100415a = 256000000;

        public boolean f100416b = false;

        public b f100417c = b.NONE;

        public e f100418d = e.TOP_LEFT;

        public float f100419e = 0.0f;

        public float f100420f = 0.0f;

        public i f100421g = i.NONE;

        public String f100422h;

        public String f100423i;

        public String f100424j;
    }

    static {
        System.loadLibrary("tiff");
        System.loadLibrary("tiffsaver");
    }

    public static boolean a(int i10, Bitmap bitmap) throws CantOpenFileException, NotEnoughtMemoryException {
        return b(i10, bitmap, new SaveOptions());
    }

    public static boolean b(int i10, Bitmap bitmap, SaveOptions saveOptions) throws CantOpenFileException, NotEnoughtMemoryException {
        return save(null, i10, bitmap, saveOptions, true);
    }

    public static boolean c(File file, Bitmap bitmap) throws CantOpenFileException, NotEnoughtMemoryException {
        return f(file.getAbsolutePath(), bitmap, new SaveOptions());
    }

    public static native void closeFd(int i10);

    public static boolean d(File file, Bitmap bitmap, SaveOptions saveOptions) throws CantOpenFileException {
        return f(file.getAbsolutePath(), bitmap, saveOptions);
    }

    public static boolean e(String str, int i10, Bitmap bitmap) throws CantOpenFileException {
        return f(str, bitmap, new SaveOptions());
    }

    public static boolean f(String str, Bitmap bitmap, SaveOptions saveOptions) throws CantOpenFileException {
        return save(str, -1, bitmap, saveOptions, true);
    }

    public static boolean g(int i10, Bitmap bitmap) throws CantOpenFileException, NotEnoughtMemoryException {
        return h(i10, bitmap, new SaveOptions());
    }

    public static boolean h(int i10, Bitmap bitmap, SaveOptions saveOptions) throws CantOpenFileException, NotEnoughtMemoryException {
        return save(null, i10, bitmap, saveOptions, false);
    }

    public static boolean i(File file, Bitmap bitmap) throws CantOpenFileException, NotEnoughtMemoryException {
        return l(file.getAbsolutePath(), bitmap, new SaveOptions());
    }

    public static boolean j(File file, Bitmap bitmap, SaveOptions saveOptions) throws CantOpenFileException {
        return l(file.getAbsolutePath(), bitmap, saveOptions);
    }

    public static boolean k(String str, Bitmap bitmap) throws CantOpenFileException {
        return l(str, bitmap, new SaveOptions());
    }

    public static boolean l(String str, Bitmap bitmap, SaveOptions saveOptions) throws CantOpenFileException {
        return save(str, -1, bitmap, saveOptions, false);
    }

    private static native synchronized boolean save(String str, int i10, Bitmap bitmap, SaveOptions saveOptions, boolean z10);
}
