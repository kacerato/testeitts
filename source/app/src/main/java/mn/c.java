package mn;

import jn.C13900q;
import jn.G;

public class c {
    public static int a(G node, C13900q tile, float value, int comp) {
        float f10 = Float.MAX_VALUE;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = node.f94180e;
            if (i10 >= i12) {
                return i11;
            }
            int i13 = i10 + 1;
            float[] fArr = tile.f94283b;
            int[] iArr = node.f94177b;
            float f11 = fArr[(iArr[i10] * 3) + comp] - value;
            float f12 = fArr[(iArr[i13 % i12] * 3) + comp] - value;
            float f13 = (f11 * f11) + (f12 * f12);
            if (f13 < f10) {
                i11 = i10;
                f10 = f13;
            }
            i10 = i13;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x008a, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int b(G node, G neighbour, C13900q tile, C13900q neighbourTile) {
        int i10;
        int i11;
        int i12 = 0;
        loop0: while (true) {
            int i13 = node.f94180e;
            if (i12 < i13) {
                i11 = i12 + 1;
                int i14 = i11 % i13;
                int i15 = 0;
                while (true) {
                    int i16 = neighbour.f94180e;
                    if (i15 < i16) {
                        int i17 = i15 + 1;
                        int[] iArr = node.f94177b;
                        int i18 = iArr[i12];
                        int[] iArr2 = neighbour.f94177b;
                        int i19 = iArr2[i17 % i16];
                        if ((i18 != i19 || iArr[i14] != iArr2[i15]) && (i18 != iArr2[i15] || iArr[i14] != i19)) {
                            i15 = i17;
                        }
                    }
                }
            } else {
                int i20 = 0;
                loop2: while (true) {
                    int i21 = node.f94180e;
                    if (i20 >= i21) {
                        return -1;
                    }
                    i10 = i20 + 1;
                    int i22 = i10 % i21;
                    int i23 = 0;
                    while (true) {
                        int i24 = neighbour.f94180e;
                        if (i23 < i24) {
                            int i25 = i23 + 1;
                            int i26 = i25 % i24;
                            if ((!c(tile.f94283b, node.f94177b[i20], neighbourTile.f94283b, neighbour.f94177b[i26]) || !c(tile.f94283b, node.f94177b[i22], neighbourTile.f94283b, neighbour.f94177b[i23])) && (!c(tile.f94283b, node.f94177b[i20], neighbourTile.f94283b, neighbour.f94177b[i23]) || !c(tile.f94283b, node.f94177b[i22], neighbourTile.f94283b, neighbour.f94177b[i26]))) {
                                i23 = i25;
                            }
                        }
                    }
                    i20 = i10;
                }
            }
            i12 = i11;
        }
        return i12;
    }

    public static boolean c(float[] verts, int v10, float[] verts2, int v22) {
        for (int i10 = 0; i10 < 3; i10++) {
            if (verts[(v10 * 3) + i10] != verts2[(3 * v22) + 1]) {
                return false;
            }
        }
        return true;
    }
}
