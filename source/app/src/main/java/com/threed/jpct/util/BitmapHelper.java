package com.threed.jpct.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import java.io.InputStream;

public class BitmapHelper {
    private static int callCount;

    private static void cleanUp() {
        int i10 = callCount + 1;
        callCount = i10;
        if (i10 >= 5) {
            System.gc();
            System.runFinalization();
            System.gc();
            callCount = 0;
        }
    }

    public static Bitmap convert(Drawable drawable) {
        cleanUp();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        drawable.draw(canvas);
        return createBitmap;
    }

    public static Bitmap loadImage(InputStream inputStream) throws Exception {
        cleanUp();
        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
        inputStream.close();
        return decodeStream;
    }

    public static Bitmap rescale(Bitmap bitmap, int i10, int i11) {
        Matrix matrix = new Matrix();
        matrix.postScale(i10 / bitmap.getWidth(), i11 / bitmap.getHeight());
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }
}
