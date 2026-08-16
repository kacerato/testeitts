package wb;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class C15984f {
    public static ByteBuffer a(Bitmap src, int dw, int dh2) {
        int i10 = dw;
        int width = src.getWidth();
        int height = src.getHeight();
        int[] iArr = new int[width * height];
        src.getPixels(iArr, 0, width, 0, 0, width, height);
        ByteBuffer order = ByteBuffer.allocateDirect(i10 * dh2 * 4).order(ByteOrder.nativeOrder());
        order.rewind();
        double d10 = width / i10;
        double d11 = height / dh2;
        int i11 = 0;
        while (i11 < dh2) {
            int min = Math.min((int) (i11 * d11), height - 1);
            int i12 = 0;
            while (i12 < i10) {
                int i13 = iArr[(min * width) + Math.min((int) (i12 * d10), width - 1)];
                order.put((byte) ((i13 >> 16) & 255));
                order.put((byte) ((i13 >> 8) & 255));
                order.put((byte) (i13 & 255));
                order.put((byte) ((i13 >> 24) & 255));
                i12++;
                i10 = dw;
            }
            i11++;
            i10 = dw;
        }
        order.flip();
        return order;
    }

    public static ByteBuffer b(Bitmap src) {
        int width = src.getWidth();
        int height = src.getHeight();
        ByteBuffer order = ByteBuffer.allocateDirect(width * height * 4).order(ByteOrder.nativeOrder());
        int[] iArr = new int[width];
        for (int i10 = 0; i10 < height; i10++) {
            src.getPixels(iArr, 0, width, 0, i10, width, 1);
            for (int i11 = 0; i11 < width; i11++) {
                int i12 = iArr[i11];
                order.put((byte) ((i12 >> 16) & 255));
                order.put((byte) ((i12 >> 8) & 255));
                order.put((byte) (i12 & 255));
                order.put((byte) ((i12 >> 24) & 255));
            }
        }
        order.flip();
        return order;
    }
}
