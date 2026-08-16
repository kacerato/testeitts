package Q9;

import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.openjdk.tools.doclint.DocLint;

public final class c {

    public static final String f22000a = "FilaguiVB";

    public static final int f22001b = 20;

    public static final int f22002c = 0;

    public static final int f22003d = 8;

    public static final int f22004e = 16;

    public static void a(ByteBuffer vb2) {
        b(vb2, 0, 16);
    }

    public static void b(ByteBuffer vb2, int startVert, int maxVerts) {
        if (vb2 == null) {
            Log.d(f22000a, "vertexBuffer = null");
            return;
        }
        ByteBuffer order = vb2.duplicate().order(ByteOrder.nativeOrder());
        int remaining = order.remaining() / 20;
        if (remaining <= 0) {
            Log.d(f22000a, "vertexBuffer vazio (remaining=" + order.remaining() + ")");
            return;
        }
        int max = Math.max(0, startVert);
        int min = Math.min(remaining, Math.max(1, maxVerts) + max);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("=== VB dump: totalVerts=");
        sb2.append(remaining);
        sb2.append(" (stride=");
        sb2.append(20);
        sb2.append("B), range=[");
        sb2.append(max);
        sb2.append(DocLint.SEPARATOR);
        sb2.append(min - 1);
        sb2.append("] ===");
        Log.d(f22000a, sb2.toString());
        while (max < min) {
            int i10 = max * 20;
            float f10 = order.getFloat(i10);
            float f11 = order.getFloat(i10 + 4);
            float f12 = order.getFloat(i10 + 8);
            float f13 = order.getFloat(i10 + 12);
            int i11 = order.get(i10 + 16) & 255;
            int i12 = order.get(i10 + 17) & 255;
            int i13 = order.get(i10 + 18) & 255;
            int i14 = order.get(i10 + 19) & 255;
            String.format("%02X %02X %02X %02X", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14));
            String.format("R=%02X G=%02X B=%02X A=%02X", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14));
            String.format("A=%02X B=%02X G=%02X R=%02X", Integer.valueOf(i14), Integer.valueOf(i13), Integer.valueOf(i12), Integer.valueOf(i11));
            Log.d(f22000a, String.format("v[%04d]: pos(%.2f, %.2f) posBL(%.2f, %.2f)  uv(%.4f, %.4f) %s", Integer.valueOf(max), Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(f12), Float.valueOf(f13), String.format("(%.3f, %.3f, %.3f, %.3f)", Float.valueOf(i11 / 255.0f), Float.valueOf(i12 / 255.0f), Float.valueOf(i13 / 255.0f), Float.valueOf(i14 / 255.0f))));
            max++;
        }
        Log.d(f22000a, "=== fim do dump ===");
    }
}
