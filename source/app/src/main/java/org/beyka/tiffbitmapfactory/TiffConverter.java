package org.beyka.tiffbitmapfactory;

import java.io.File;
import org.beyka.tiffbitmapfactory.exceptions.CantOpenFileException;
import org.beyka.tiffbitmapfactory.exceptions.DecodeTiffException;
import org.beyka.tiffbitmapfactory.exceptions.NotEnoughtMemoryException;

public class TiffConverter {

    public static final class ConverterOptions {

        public int f100405d;

        public c f100408g;

        public float f100409h;

        public float f100410i;

        public String f100412k;

        public String f100413l;

        public long f100403b = 256000000;

        public boolean f100406e = false;

        public i f100411j = i.NONE;

        public b f100407f = b.NONE;

        public boolean f100404c = false;

        public volatile boolean f100402a = false;

        public void a() {
            this.f100402a = true;
        }
    }

    public static class a {

        public static final int[] f100414a;

        static {
            int[] iArr = new int[ImageFormat.values().length];
            f100414a = iArr;
            try {
                iArr[ImageFormat.JPEG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f100414a[ImageFormat.PNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f100414a[ImageFormat.BMP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f100414a[ImageFormat.TIFF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        System.loadLibrary("tiff");
        System.loadLibrary("tiffconverter");
    }

    public static boolean a(int i10, int i11, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        int i12 = a.f100414a[getImageTypeFd(i10).ordinal()];
        if (i12 == 1) {
            return convertJpgTiffFd(i10, i11, converterOptions, iProgressListener);
        }
        if (i12 == 2) {
            return convertPngTiffFd(i10, i11, converterOptions, iProgressListener);
        }
        if (i12 != 3) {
            return false;
        }
        return convertBmpTiffFd(i10, i11, converterOptions, iProgressListener);
    }

    public static boolean b(File file, File file2, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        return c(file.getAbsolutePath(), file2.getAbsolutePath(), converterOptions, iProgressListener);
    }

    public static boolean c(String str, String str2, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        int i10 = a.f100414a[getImageType(str).ordinal()];
        if (i10 == 1) {
            return convertJpgTiff(str, str2, converterOptions, iProgressListener);
        }
        if (i10 == 2) {
            return convertPngTiff(str, str2, converterOptions, iProgressListener);
        }
        if (i10 != 3) {
            return false;
        }
        return convertBmpTiff(str, str2, converterOptions, iProgressListener);
    }

    public static native void closeFd(int i10);

    public static native boolean convertBmpTiff(String str, String str2, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException;

    public static native boolean convertBmpTiffFd(int i10, int i11, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException;

    public static native boolean convertJpgTiff(String str, String str2, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException;

    public static native boolean convertJpgTiffFd(int i10, int i11, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException;

    public static native boolean convertPngTiff(String str, String str2, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException;

    public static native boolean convertPngTiffFd(int i10, int i11, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException;

    public static native boolean convertTiffBmp(String str, String str2, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException;

    public static native boolean convertTiffBmpFd(int i10, int i11, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException;

    public static native boolean convertTiffJpg(String str, String str2, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException;

    public static native boolean convertTiffJpgFd(int i10, int i11, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException;

    public static native boolean convertTiffPng(String str, String str2, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException;

    public static native boolean convertTiffPngFd(int i10, int i11, ConverterOptions converterOptions, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException;

    public static native ImageFormat getImageType(String str);

    public static native ImageFormat getImageTypeFd(int i10);
}
