package vn;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class d {

    public final b f121737a = new b();

    public c a(InputStream stream) throws IOException {
        ByteBuffer b10 = pn.b.b(stream);
        c cVar = new c();
        int i10 = b10.getInt();
        if (i10 != 1448040524) {
            if (pn.b.a(i10) != 1448040524) {
                throw new IOException("Invalid magic");
            }
            ByteOrder order = b10.order();
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            if (order == byteOrder) {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            }
            b10.order(byteOrder);
        }
        int i11 = b10.getInt();
        cVar.f121713a = i11;
        char c10 = 0;
        char c11 = 1;
        boolean z10 = (61440 & i11) == 0;
        boolean z11 = (i11 & c.f121708B) == 256;
        cVar.f121718f = b10.getFloat();
        cVar.f121719g = b10.getFloat();
        cVar.f121720h = b10.getFloat();
        cVar.f121721i = b10.getFloat();
        cVar.f121722j = b10.getFloat();
        cVar.f121723k = b10.getFloat();
        cVar.f121724l = b10.getFloat();
        float f10 = (int) b10.getFloat();
        cVar.f121725m = f10;
        if (z10) {
            cVar.f121726n = f10 * 6.0f;
            cVar.f121727o = 6;
            cVar.f121728p = true;
            cVar.f121729q = cVar.f121724l * 0.5f;
            cVar.f121730r = cVar.f121723k * 0.8f;
        } else {
            cVar.f121726n = b10.getFloat();
            cVar.f121727o = b10.getInt();
            cVar.f121728p = b10.get() != 0;
            cVar.f121729q = b10.getFloat();
            cVar.f121730r = b10.getFloat();
        }
        cVar.f121731s = b10.get() != 0;
        cVar.f121732t = b10.getInt();
        cVar.f121733u = b10.getInt();
        cVar.f121734v[0] = b10.getFloat();
        cVar.f121734v[1] = b10.getFloat();
        char c12 = 2;
        cVar.f121734v[2] = b10.getFloat();
        cVar.f121735w[0] = b10.getFloat();
        cVar.f121735w[1] = b10.getFloat();
        cVar.f121735w[2] = b10.getFloat();
        int i12 = 3;
        cVar.f121735w[3] = b10.getFloat();
        cVar.f121735w[4] = b10.getFloat();
        cVar.f121735w[5] = b10.getFloat();
        if (z10) {
            float[] fArr = cVar.f121735w;
            float f11 = fArr[0];
            float f12 = fArr[3];
            float f13 = f11 - (f12 * 0.5f);
            fArr[0] = f13;
            float f14 = fArr[1];
            float f15 = fArr[4];
            float f16 = f14 - (f15 * 0.5f);
            fArr[1] = f16;
            float f17 = fArr[2];
            float f18 = fArr[5];
            float f19 = f17 - (0.5f * f18);
            fArr[2] = f19;
            fArr[3] = f12 + f13;
            fArr[4] = f15 + f16;
            fArr[5] = f18 + f19;
        }
        int i13 = b10.getInt();
        int i14 = 0;
        while (i14 < i13) {
            int i15 = b10.getInt();
            int i16 = b10.getInt();
            int i17 = b10.getInt();
            int i18 = b10.getInt();
            int i19 = b10.getInt();
            float[] fArr2 = new float[i12];
            fArr2[c10] = b10.getFloat();
            fArr2[c11] = b10.getFloat();
            fArr2[c12] = b10.getFloat();
            float[] fArr3 = new float[i12];
            fArr3[c10] = b10.getFloat();
            fArr3[c11] = b10.getFloat();
            fArr3[c12] = b10.getFloat();
            if (z10) {
                float f20 = fArr2[c10];
                float[] fArr4 = cVar.f121735w;
                fArr2[c10] = f20 + fArr4[c10];
                fArr2[c11] = fArr2[c11] + fArr4[c11];
                fArr2[c12] = fArr2[c12] + fArr4[c12];
                fArr3[c10] = fArr3[c10] + fArr4[c10];
                fArr3[c11] = fArr3[c11] + fArr4[c11];
                fArr3[c12] = fArr3[c12] + fArr4[c12];
            }
            float f21 = b10.getFloat();
            float f22 = b10.getFloat();
            int i20 = b10.getInt();
            int position = b10.position();
            byte[] bArr = new byte[i20];
            b10.get(bArr);
            if (z11) {
                bArr = this.f121737a.b(bArr);
            }
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.order(b10.order());
            cVar.a(new f(i15, i16, i17, i18, fArr2, fArr3, f21, f22, i19, wrap));
            b10.position(position + i20);
            i14++;
            c10 = 0;
            c11 = 1;
            c12 = 2;
            i12 = 3;
        }
        return cVar;
    }
}
