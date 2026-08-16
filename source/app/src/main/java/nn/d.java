package nn;

import java.util.ArrayList;
import wn.C16033k;

public class d {
    public c[] a(C16033k mesh) {
        ArrayList arrayList = new ArrayList();
        if (mesh != null) {
            float[] fArr = mesh.f127742j;
            float f10 = mesh.f127744l;
            float f11 = mesh.f127745m;
            int i10 = 0;
            int i11 = 0;
            while (i11 < mesh.f127738f) {
                int i12 = mesh.f127739g;
                int i13 = i11 * 2 * i12;
                int i14 = i10;
                while (i14 < i12) {
                    int[] iArr = mesh.f127734b;
                    int i15 = iArr[i13 + i14];
                    int i16 = wn.u.f127822j;
                    if (i15 == i16) {
                        break;
                    }
                    int i17 = iArr[i13 + i12 + i14];
                    if ((32768 & i17) != 0 && (i17 & 15) == 15 && i17 == i16) {
                        int i18 = i14 + 1;
                        if (i18 >= i12 || iArr[i13 + i18] == i16) {
                            i18 = i10;
                        }
                        int i19 = i15 * 3;
                        int i20 = iArr[i18 + i13] * 3;
                        c cVar = new c();
                        float[] fArr2 = cVar.f98337a;
                        float f12 = fArr[i10];
                        int[] iArr2 = mesh.f127733a;
                        fArr2[0] = f12 + (iArr2[i20] * f10);
                        fArr2[1] = fArr[1] + (iArr2[i20 + 1] * f11);
                        fArr2[2] = fArr[2] + (iArr2[i20 + 2] * f10);
                        float[] fArr3 = cVar.f98338b;
                        fArr3[0] = fArr[0] + (iArr2[i19] * f10);
                        fArr3[1] = fArr[1] + (iArr2[i19 + 1] * f11);
                        fArr3[2] = fArr[2] + (iArr2[i19 + 2] * f10);
                        arrayList.add(cVar);
                    }
                    i14++;
                    i10 = 0;
                }
                i11++;
                i10 = 0;
            }
        }
        return (c[]) arrayList.toArray(new c[arrayList.size()]);
    }
}
