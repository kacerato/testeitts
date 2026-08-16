package on;

import java.util.List;
import jn.C13900q;
import jn.G;

public class i {
    public void a(int nodeOffset, e graphData, List<int[]> connections) {
        for (int i10 = 0; i10 < connections.size(); i10++) {
            int[] iArr = connections.get(i10);
            C13900q c10 = graphData.c(i10);
            G b10 = graphData.b(i10);
            for (int i11 : iArr) {
                int i12 = i11 - nodeOffset;
                C13900q c11 = graphData.c(i12);
                if (c11 != c10) {
                    b(c10, b10, c11);
                } else {
                    c(c10, b10, c11, graphData.b(i12));
                }
            }
        }
    }

    public final void b(C13900q tile, G node, C13900q neighbourTile) {
        float[] fArr = neighbourTile.f94282a.f94316s;
        float f10 = fArr[0];
        float[] fArr2 = tile.f94282a.f94316s;
        float f11 = fArr2[0];
        if (f10 > f11) {
            node.f94178c[mn.c.a(node, tile, f10, 0)] = 32768;
            return;
        }
        if (f10 < f11) {
            node.f94178c[mn.c.a(node, tile, f11, 0)] = 32772;
            return;
        }
        float f12 = fArr[2];
        float f13 = fArr2[2];
        if (f12 > f13) {
            node.f94178c[mn.c.a(node, tile, f12, 2)] = 32770;
        } else {
            node.f94178c[mn.c.a(node, tile, f13, 2)] = 32774;
        }
    }

    public final void c(C13900q tile, G node, C13900q neighbourTile, G neighbour) {
        int b10 = mn.c.b(node, neighbour, tile, neighbourTile);
        if (b10 < 0) {
            throw new IllegalArgumentException();
        }
        node.f94178c[b10] = neighbour.f94176a + 1;
    }
}
