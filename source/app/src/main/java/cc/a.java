package Cc;

import java.lang.reflect.Array;

public class a {

    public boolean[][] f2502a;

    public a(int numLayers) {
        this.f2502a = (boolean[][]) Array.newInstance(Boolean.TYPE, numLayers, numLayers);
        for (int i10 = 0; i10 < numLayers; i10++) {
            for (int i11 = 0; i11 < numLayers; i11++) {
                this.f2502a[i10][i11] = true;
            }
        }
    }

    public int a(int layer) {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            boolean[][] zArr = this.f2502a;
            if (i10 >= zArr.length) {
                return i11;
            }
            if (zArr[layer][i10]) {
                i11 |= 1 << i10;
            }
            i10++;
        }
    }

    public void b(int numLayers) {
        boolean[][] zArr = this.f2502a;
        if (zArr == null || zArr.length != numLayers) {
            this.f2502a = (boolean[][]) Array.newInstance(Boolean.TYPE, numLayers, numLayers);
        }
        for (int i10 = 0; i10 < numLayers; i10++) {
            for (int i11 = 0; i11 < numLayers; i11++) {
                this.f2502a[i10][i11] = true;
            }
        }
    }

    public void c(int layerA, int layerB, boolean enabled) {
        boolean[][] zArr = this.f2502a;
        zArr[layerA][layerB] = enabled;
        zArr[layerB][layerA] = enabled;
    }

    public int d() {
        return this.f2502a.length;
    }
}
