package org.beyka.tiffbitmapfactory;

import android.graphics.Bitmap;
import android.util.Log;
import java.io.File;
import org.beyka.tiffbitmapfactory.exceptions.CantOpenFileException;
import org.beyka.tiffbitmapfactory.exceptions.DecodeTiffException;
import org.beyka.tiffbitmapfactory.exceptions.NotEnoughtMemoryException;

public class TiffBitmapFactory {

    public static final class Options {

        public int f100367A;

        public f f100368B;

        public d f100369C;

        public c f100385j;

        public int f100388m;

        public b f100391p;

        public g f100392q;

        public int f100393r;

        public int f100394s;

        public float f100395t;

        public float f100396u;

        public i f100397v;

        public int f100398w;

        public int f100399x;

        public int f100400y;

        public int f100401z;

        public a f100384i = a.ARGB_8888;

        public String f100370D = "";

        public String f100371E = "";

        public String f100372F = "";

        public String f100373G = "";

        public String f100374H = "";

        public String f100375I = "";

        public volatile boolean f100376a = false;

        public boolean f100378c = false;

        public boolean f100377b = false;

        public boolean f100379d = false;

        public boolean f100380e = false;

        public int f100381f = 1;

        public int f100382g = 0;

        public long f100383h = 256000000;

        public int f100386k = -1;

        public int f100387l = -1;

        public int f100389n = -1;

        public e f100390o = e.UNAVAILABLE;

        public void a() {
            this.f100376a = true;
        }
    }

    public enum a {
        ARGB_8888(2),
        RGB_565(4),
        ALPHA_8(8);

        final int ordinal;

        a(int i10) {
            this.ordinal = i10;
        }
    }

    static {
        System.loadLibrary("tiff");
        System.loadLibrary("tifffactory");
    }

    public static Bitmap a(File file) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        return c(file, new Options(), null);
    }

    public static Bitmap b(File file, Options options) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        return c(file, options, null);
    }

    public static Bitmap c(File file, Options options, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        long currentTimeMillis = System.currentTimeMillis();
        Log.i("THREAD", "Starting decode " + file.getAbsolutePath());
        Bitmap nativeDecodePath = nativeDecodePath(file.getAbsolutePath(), options, iProgressListener);
        Log.w("THREAD", "elapsed ms: " + (System.currentTimeMillis() - currentTimeMillis) + " for " + file.getAbsolutePath());
        return nativeDecodePath;
    }

    public static native void closeFd(int i10);

    public static Bitmap d(int i10) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        return f(i10, new Options(), null);
    }

    public static Bitmap e(int i10, Options options) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        return f(i10, options, null);
    }

    public static Bitmap f(int i10, Options options, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        long currentTimeMillis = System.currentTimeMillis();
        Log.i("THREAD", "Starting decode descriptor " + i10);
        Bitmap nativeDecodeFD = nativeDecodeFD(i10, options, iProgressListener);
        Log.w("THREAD", "elapsed ms: " + (System.currentTimeMillis() - currentTimeMillis) + " for descriptor " + i10);
        return nativeDecodeFD;
    }

    public static Bitmap g(String str) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        return i(str, new Options(), null);
    }

    public static Bitmap h(String str, Options options) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        return h(str, options);
    }

    public static Bitmap i(String str, Options options, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        long currentTimeMillis = System.currentTimeMillis();
        Log.i("THREAD", "Starting decode " + str);
        Bitmap nativeDecodePath = nativeDecodePath(str, options, iProgressListener);
        Log.w("THREAD", "elapsed ms: " + (System.currentTimeMillis() - currentTimeMillis) + " for " + str);
        return nativeDecodePath;
    }

    private static native Bitmap nativeDecodeFD(int i10, Options options, IProgressListener iProgressListener);

    private static native Bitmap nativeDecodePath(String str, Options options, IProgressListener iProgressListener);
}
