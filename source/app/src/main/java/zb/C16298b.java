package zb;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.lang.reflect.Array;

public class C16298b {

    public static final int f130977d = 3;

    public double[][] f130978a;

    public double f130979b = 1.0d;

    public double f130980c = 1.0d;

    public C16298b(int size) {
        this.f130978a = (double[][]) Array.newInstance(Double.TYPE, size, size);
    }

    public static Bitmap b(Bitmap src, C16298b matrix) {
        Bitmap bitmap;
        int i10;
        int width = src.getWidth();
        int height = src.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, src.getConfig());
        char c10 = 1;
        int i11 = 3;
        int i12 = 0;
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, 3, 3);
        int i13 = 0;
        while (i13 < height - 2) {
            int i14 = i12;
            while (i14 < width - 2) {
                for (int i15 = i12; i15 < i11; i15++) {
                    for (int i16 = i12; i16 < i11; i16++) {
                        iArr[i15][i16] = src.getPixel(i14 + i15, i13 + i16);
                    }
                }
                int alpha = Color.alpha(iArr[c10][c10]);
                int i17 = i12;
                int i18 = i17;
                int i19 = i18;
                int i20 = i19;
                while (i17 < i11) {
                    int i21 = i12;
                    while (i21 < i11) {
                        i18 = (int) (i18 + (Color.red(iArr[i17][i21]) * matrix.f130978a[i17][i21]));
                        i19 = (int) (i19 + (Color.green(iArr[i17][i21]) * matrix.f130978a[i17][i21]));
                        i20 = (int) (i20 + (Color.blue(iArr[i17][i21]) * matrix.f130978a[i17][i21]));
                        i21++;
                        width = width;
                        height = height;
                        i11 = 3;
                    }
                    i17++;
                    i11 = 3;
                    i12 = 0;
                }
                int i22 = width;
                int i23 = height;
                double d10 = matrix.f130979b;
                double d11 = matrix.f130980c;
                int i24 = (int) ((i18 / d10) + d11);
                if (i24 < 0) {
                    bitmap = createBitmap;
                    i24 = 0;
                } else {
                    if (i24 > 255) {
                        i24 = 255;
                    }
                    bitmap = createBitmap;
                }
                int i25 = (int) ((i19 / d10) + d11);
                if (i25 < 0) {
                    i25 = 0;
                    i10 = 255;
                } else {
                    i10 = 255;
                    if (i25 > 255) {
                        i25 = 255;
                    }
                }
                int i26 = (int) ((i20 / d10) + d11);
                if (i26 < 0) {
                    i10 = 0;
                } else if (i26 <= i10) {
                    i10 = i26;
                }
                i14++;
                bitmap.setPixel(i14, i13 + 1, Color.argb(alpha, i24, i25, i10));
                createBitmap = bitmap;
                width = i22;
                height = i23;
                c10 = 1;
                i11 = 3;
                i12 = 0;
            }
            i13++;
            c10 = 1;
            i11 = 3;
            i12 = 0;
        }
        Bitmap bitmap2 = createBitmap;
        src.recycle();
        return bitmap2;
    }

    public void a(double[][] config) {
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                this.f130978a[i10][i11] = config[i10][i11];
            }
        }
    }

    public void c(double value) {
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                this.f130978a[i10][i11] = value;
            }
        }
    }
}
