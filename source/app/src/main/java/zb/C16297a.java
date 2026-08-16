package zb;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.media.ExifInterface;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Random;

@Deprecated
public class C16297a {

    public interface InterfaceC2262a {
        int a(int x10, int y10, int w10, int h10, int color);
    }

    public static Bitmap a(Bitmap src, int type, float percent) {
        float f10 = percent / 100.0f;
        int width = src.getWidth();
        int height = src.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, src.getConfig());
        for (int i10 = 0; i10 < width; i10++) {
            for (int i11 = 0; i11 < height; i11++) {
                int pixel = src.getPixel(i10, i11);
                int alpha = Color.alpha(pixel);
                int red = Color.red(pixel);
                int green = Color.green(pixel);
                int blue = Color.blue(pixel);
                if (type == 1) {
                    red = (int) (red * (1.0f + f10));
                    if (red > 255) {
                        red = 255;
                    }
                } else if (type == 2) {
                    green = (int) (green * (1.0f + f10));
                    if (green > 255) {
                        green = 255;
                    }
                } else if (type == 3 && (blue = (int) (blue * (1.0f + f10))) > 255) {
                    blue = 255;
                }
                createBitmap.setPixel(i10, i11, Color.argb(alpha, red, green, blue));
            }
        }
        src.recycle();
        return createBitmap;
    }

    public static Bitmap b(Bitmap src, int value) {
        int width = src.getWidth();
        int height = src.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, src.getConfig());
        for (int i10 = 0; i10 < width; i10++) {
            for (int i11 = 0; i11 < height; i11++) {
                int pixel = src.getPixel(i10, i11);
                int alpha = Color.alpha(pixel);
                int red = Color.red(pixel);
                int green = Color.green(pixel);
                int blue = Color.blue(pixel);
                int i12 = red + value;
                int i13 = 255;
                if (i12 > 255) {
                    i12 = 255;
                } else if (i12 < 0) {
                    i12 = 0;
                }
                int i14 = green + value;
                if (i14 > 255) {
                    i14 = 255;
                } else if (i14 < 0) {
                    i14 = 0;
                }
                int i15 = blue + value;
                if (i15 <= 255) {
                    i13 = i15 < 0 ? 0 : i15;
                }
                createBitmap.setPixel(i10, i11, Color.argb(alpha, i12, i14, i13));
            }
        }
        src.recycle();
        return createBitmap;
    }

    public static Bitmap c(Bitmap src, int bitOffset) {
        int width = src.getWidth();
        int height = src.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, src.getConfig());
        for (int i10 = 0; i10 < width; i10++) {
            for (int i11 = 0; i11 < height; i11++) {
                int pixel = src.getPixel(i10, i11);
                int alpha = Color.alpha(pixel);
                int red = Color.red(pixel);
                int green = Color.green(pixel);
                int blue = Color.blue(pixel);
                int i12 = bitOffset / 2;
                int i13 = red + i12;
                int i14 = (i13 - (i13 % bitOffset)) - 1;
                if (i14 < 0) {
                    i14 = 0;
                }
                int i15 = green + i12;
                int i16 = (i15 - (i15 % bitOffset)) - 1;
                if (i16 < 0) {
                    i16 = 0;
                }
                int i17 = blue + i12;
                int i18 = (i17 - (i17 % bitOffset)) - 1;
                if (i18 < 0) {
                    i18 = 0;
                }
                createBitmap.setPixel(i10, i11, Color.argb(alpha, i14, i16, i18));
            }
        }
        src.recycle();
        return createBitmap;
    }

    public static Bitmap d(Bitmap src, double red, double green, double blue) {
        double d10 = red / 100.0d;
        double d11 = green / 100.0d;
        double d12 = blue / 100.0d;
        int width = src.getWidth();
        int height = src.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, src.getConfig());
        int i10 = 0;
        while (i10 < width) {
            int i11 = 0;
            while (i11 < height) {
                int i12 = i10;
                createBitmap.setPixel(i12, i11, Color.argb(Color.alpha(src.getPixel(i10, i11)), (int) (Color.red(r13) * d10), (int) (Color.green(r13) * d11), (int) (Color.blue(r13) * d12)));
                i11++;
                d11 = d11;
                i10 = i12;
                d10 = d10;
            }
            i10++;
        }
        src.recycle();
        return createBitmap;
    }

    public static Bitmap e(Bitmap src, double value) {
        Bitmap bitmap = src;
        int width = src.getWidth();
        int height = src.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, src.getConfig());
        Canvas canvas = new Canvas();
        canvas.setBitmap(createBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, new Paint(-16777216));
        double pow = Math.pow((value + 100.0d) / 100.0d, 2.0d);
        int i10 = 0;
        while (i10 < width) {
            int i11 = 0;
            while (i11 < height) {
                int alpha = Color.alpha(bitmap.getPixel(i10, i11));
                int red = (int) (((((Color.red(r9) / 255.0d) - 0.5d) * pow) + 0.5d) * 255.0d);
                int i12 = 255;
                if (red < 0) {
                    red = 0;
                } else if (red > 255) {
                    red = 255;
                }
                int i13 = width;
                int green = (int) (((((Color.green(r9) / 255.0d) - 0.5d) * pow) + 0.5d) * 255.0d);
                if (green < 0) {
                    green = 0;
                } else if (green > 255) {
                    green = 255;
                }
                int i14 = height;
                int blue = (int) (((((Color.blue(r9) / 255.0d) - 0.5d) * pow) + 0.5d) * 255.0d);
                if (blue < 0) {
                    i12 = 0;
                } else if (blue <= 255) {
                    i12 = blue;
                }
                createBitmap.setPixel(i10, i11, Color.argb(alpha, red, green, i12));
                i11++;
                bitmap = src;
                height = i14;
                width = i13;
            }
            i10++;
            bitmap = src;
        }
        src.recycle();
        return createBitmap;
    }

    public static Bitmap f(Bitmap bitmap, InterfaceC2262a listener) {
        Bitmap copy = bitmap.copy(bitmap.getConfig(), true);
        int width = copy.getWidth();
        int height = copy.getHeight();
        for (int i10 = 0; i10 < height; i10++) {
            for (int i11 = 0; i11 < width; i11++) {
                copy.setPixel(i11, i10, listener.a(i11, i10, width, height, copy.getPixel(i11, i10)));
            }
        }
        bitmap.recycle();
        return copy;
    }

    public static Bitmap g(Bitmap src) {
        C16298b c16298b = new C16298b(3);
        c16298b.a(new double[][]{new double[]{-1.0d, 0.0d, -1.0d}, new double[]{0.0d, 4.0d, 0.0d}, new double[]{-1.0d, 0.0d, -1.0d}});
        c16298b.f130979b = 1.0d;
        c16298b.f130980c = 127.0d;
        return C16298b.b(src, c16298b);
    }

    public static Bitmap h(Bitmap bitmap, boolean horizontal, boolean vertical) {
        Matrix matrix = new Matrix();
        matrix.preScale(horizontal ? -1.0f : 1.0f, vertical ? -1.0f : 1.0f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static Bitmap i(Bitmap src, double red, double green, double blue) {
        double d10 = (red + 2.0d) / 10.0d;
        double d11 = (green + 2.0d) / 10.0d;
        double d12 = (blue + 2.0d) / 10.0d;
        Bitmap createBitmap = Bitmap.createBitmap(src.getWidth(), src.getHeight(), src.getConfig());
        int width = src.getWidth();
        int height = src.getHeight();
        int[] iArr = new int[256];
        int[] iArr2 = new int[256];
        int[] iArr3 = new int[256];
        int i10 = 0;
        for (int i11 = 256; i10 < i11; i11 = 256) {
            int[] iArr4 = iArr;
            double d13 = i10 / 255.0d;
            int i12 = i10;
            iArr4[i12] = Math.min(255, (int) ((Math.pow(d13, 1.0d / d10) * 255.0d) + 0.5d));
            iArr2[i12] = Math.min(255, (int) ((Math.pow(d13, 1.0d / d11) * 255.0d) + 0.5d));
            iArr3[i12] = Math.min(255, (int) ((Math.pow(d13, 1.0d / d12) * 255.0d) + 0.5d));
            i10 = i12 + 1;
            iArr = iArr4;
            d10 = d10;
        }
        int[] iArr5 = iArr;
        for (int i13 = 0; i13 < width; i13++) {
            for (int i14 = 0; i14 < height; i14++) {
                int pixel = src.getPixel(i13, i14);
                createBitmap.setPixel(i13, i14, Color.argb(Color.alpha(pixel), iArr5[Color.red(pixel)], iArr2[Color.green(pixel)], iArr3[Color.blue(pixel)]));
            }
        }
        src.recycle();
        return createBitmap;
    }

    public static Bitmap j(Bitmap src) {
        C16298b c16298b = new C16298b(3);
        c16298b.a(new double[][]{new double[]{1.0d, 2.0d, 1.0d}, new double[]{2.0d, 4.0d, 2.0d}, new double[]{1.0d, 2.0d, 1.0d}});
        c16298b.f130979b = 16.0d;
        c16298b.f130980c = 0.0d;
        return C16298b.b(src, c16298b);
    }

    public static Bitmap k(Bitmap src) {
        ColorMatrix colorMatrix = new ColorMatrix(new float[]{0.213f, 0.715f, 0.072f, 0.0f, 0.0f, 0.213f, 0.715f, 0.072f, 0.0f, 0.0f, 0.213f, 0.715f, 0.072f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
        Bitmap createBitmap = Bitmap.createBitmap(src.getWidth(), src.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(src, 0.0f, 0.0f, paint);
        src.recycle();
        return createBitmap;
    }

    public static Bitmap l(Bitmap bitmap, float hue) {
        Bitmap copy = bitmap.copy(bitmap.getConfig(), true);
        int width = copy.getWidth();
        int height = copy.getHeight();
        float[] fArr = new float[3];
        for (int i10 = 0; i10 < height; i10++) {
            for (int i11 = 0; i11 < width; i11++) {
                int pixel = copy.getPixel(i11, i10);
                Color.colorToHSV(pixel, fArr);
                fArr[0] = hue;
                copy.setPixel(i11, i10, Color.HSVToColor(Color.alpha(pixel), fArr));
            }
        }
        bitmap.recycle();
        return copy;
    }

    public static Bitmap m(Bitmap src) {
        Bitmap createBitmap = Bitmap.createBitmap(src.getWidth(), src.getHeight(), src.getConfig());
        int height = src.getHeight();
        int width = src.getWidth();
        for (int i10 = 0; i10 < height; i10++) {
            for (int i11 = 0; i11 < width; i11++) {
                int pixel = src.getPixel(i11, i10);
                createBitmap.setPixel(i11, i10, Color.argb(Color.alpha(pixel), 255 - Color.red(pixel), 255 - Color.green(pixel), 255 - Color.blue(pixel)));
            }
        }
        src.recycle();
        return createBitmap;
    }

    public static Bitmap n(Bitmap bitmap, String image_url) throws IOException {
        int attributeInt = new ExifInterface(image_url).getAttributeInt("Orientation", 1);
        return attributeInt != 2 ? attributeInt != 3 ? attributeInt != 4 ? attributeInt != 6 ? attributeInt != 8 ? bitmap : p(bitmap, 270.0f) : p(bitmap, 90.0f) : h(bitmap, false, true) : p(bitmap, 180.0f) : h(bitmap, true, false);
    }

    public static Bitmap o(Bitmap source) {
        int width = source.getWidth();
        int height = source.getHeight();
        int[] iArr = new int[width * height];
        source.getPixels(iArr, 0, width, 0, 0, width, height);
        Random random = new Random();
        for (int i10 = 0; i10 < height; i10++) {
            for (int i11 = 0; i11 < width; i11++) {
                int i12 = (i10 * width) + i11;
                iArr[i12] = Color.rgb(random.nextInt(255), random.nextInt(255), random.nextInt(255)) | iArr[i12];
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, source.getConfig());
        createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        source.recycle();
        return createBitmap;
    }

    public static Bitmap p(Bitmap bitmap, float degrees) {
        Matrix matrix = new Matrix();
        matrix.postRotate(degrees);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static Bitmap q(Bitmap src, int value) {
        Bitmap createBitmap = Bitmap.createBitmap(src.getWidth(), src.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation((float) (value / 100.0d));
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(src, 0.0f, 0.0f, paint);
        src.recycle();
        return createBitmap;
    }

    public static Bitmap r(Bitmap src) {
        int width = src.getWidth();
        int height = src.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, src.getConfig());
        for (int i10 = 0; i10 < width; i10++) {
            for (int i11 = 0; i11 < height; i11++) {
                int alpha = Color.alpha(src.getPixel(i10, i11));
                int red = (int) ((Color.red(r6) * 0.3d) + (Color.green(r6) * 0.59d) + (Color.blue(r6) * 0.11d));
                int i12 = red + 110;
                int i13 = 255;
                if (i12 > 255) {
                    i12 = 255;
                }
                int i14 = red + 65;
                if (i14 > 255) {
                    i14 = 255;
                }
                int i15 = red + 20;
                if (i15 <= 255) {
                    i13 = i15;
                }
                createBitmap.setPixel(i10, i11, Color.argb(alpha, i12, i14, i13));
            }
        }
        src.recycle();
        return createBitmap;
    }

    public static Bitmap s(Bitmap src) {
        C16298b c16298b = new C16298b(3);
        c16298b.a(new double[][]{new double[]{0.0d, -2.0d, 0.0d}, new double[]{-2.0d, 11.0d, -2.0d}, new double[]{0.0d, -2.0d, 0.0d}});
        c16298b.f130979b = 3.0d;
        return C16298b.b(src, c16298b);
    }

    public static Bitmap t(Bitmap src) {
        int width = src.getWidth();
        int height = src.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, src.getConfig());
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, 3, 3);
        for (int i10 = 0; i10 < height - 2; i10++) {
            int i11 = 0;
            while (i11 < width - 2) {
                for (int i12 = 0; i12 < 3; i12++) {
                    for (int i13 = 0; i13 < 3; i13++) {
                        iArr[i12][i13] = src.getPixel(i11 + i12, i10 + i13);
                    }
                }
                int alpha = Color.alpha(iArr[1][1]);
                int red = ((((Color.red(iArr[1][1]) * 6) - Color.red(iArr[0][0])) - Color.red(iArr[0][2])) - Color.red(iArr[2][0])) - Color.red(iArr[2][2]);
                int green = ((((Color.green(iArr[1][1]) * 6) - Color.green(iArr[0][0])) - Color.green(iArr[0][2])) - Color.green(iArr[2][0])) - Color.green(iArr[2][2]);
                int blue = ((((6 * Color.blue(iArr[1][1])) - Color.blue(iArr[0][0])) - Color.blue(iArr[0][2])) - Color.blue(iArr[2][0])) - Color.blue(iArr[2][2]);
                int i14 = red + 130;
                int i15 = 255;
                if (i14 < 0) {
                    i14 = 0;
                } else if (i14 > 255) {
                    i14 = 255;
                }
                int i16 = green + 130;
                if (i16 < 0) {
                    i16 = 0;
                } else if (i16 > 255) {
                    i16 = 255;
                }
                int i17 = blue + 130;
                if (i17 < 0) {
                    i15 = 0;
                } else if (i17 <= 255) {
                    i15 = i17;
                }
                i11++;
                createBitmap.setPixel(i11, i10 + 1, Color.argb(alpha, i14, i16, i15));
            }
        }
        src.recycle();
        return createBitmap;
    }

    public static Bitmap u(Bitmap src, int color) {
        Bitmap createBitmap = Bitmap.createBitmap(src.getWidth(), src.getHeight(), src.getConfig());
        Paint paint = new Paint(-65536);
        paint.setColorFilter(new LightingColorFilter(color, 1));
        Canvas canvas = new Canvas();
        canvas.setBitmap(createBitmap);
        canvas.drawBitmap(src, 0.0f, 0.0f, paint);
        src.recycle();
        return createBitmap;
    }

    public static Bitmap v(Bitmap image) {
        RadialGradient radialGradient = new RadialGradient(r0 / 2, image.getHeight() / 2, (float) (image.getWidth() / 1.2d), new int[]{0, 1426063360, -16777216}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
        Canvas canvas = new Canvas(image);
        canvas.drawARGB(1, 0, 0, 0);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(-16777216);
        paint.setShader(radialGradient);
        Rect rect = new Rect(0, 0, image.getWidth(), image.getHeight());
        canvas.drawRect(new RectF(rect), paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(image, rect, rect, paint);
        return image;
    }
}
