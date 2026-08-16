package Ul;

import Bi.InterfaceC2379k;

public class e implements InterfaceC2379k {

    public final int[] f26316b;

    public int[] f26317c;

    public e() {
        int[] iArr = {6, 12, 17, 22, 33};
        this.f26316b = iArr;
        this.f26317c = iArr;
    }

    public final void a() {
        int[] iArr;
        int i10;
        int[] iArr2 = this.f26317c;
        if (iArr2 == null) {
            throw new IllegalArgumentException("no layers defined.");
        }
        if (iArr2.length <= 1) {
            throw new IllegalArgumentException("Rainbow needs at least 1 layer, such that v1 < v2.");
        }
        int i11 = 0;
        do {
            iArr = this.f26317c;
            if (i11 >= iArr.length - 1) {
                return;
            }
            i10 = iArr[i11];
            i11++;
        } while (i10 < iArr[i11]);
        throw new IllegalArgumentException("v[i] has to be smaller than v[i+1]");
    }

    public int b() {
        int[] iArr = this.f26317c;
        return iArr[iArr.length - 1] - iArr[0];
    }

    public int c() {
        return this.f26317c.length - 1;
    }

    public int[] d() {
        return this.f26317c;
    }

    public e(int[] iArr) {
        this.f26316b = new int[]{6, 12, 17, 22, 33};
        this.f26317c = iArr;
        a();
    }
}
