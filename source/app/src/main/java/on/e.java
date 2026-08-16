package on;

import jn.C13900q;
import jn.G;

public class e {

    public final int f99710a;

    public final int f99711b;

    public final C13900q[] f99712c;

    public e(int tileXCount, int tileZCount, C13900q[] tiles) {
        this.f99710a = tileXCount;
        this.f99711b = tileZCount;
        this.f99712c = tiles;
    }

    public int a() {
        int i10 = 0;
        for (C13900q c13900q : this.f99712c) {
            i10 += c13900q.f94282a.f94304g;
        }
        return i10;
    }

    public G b(int node) {
        int i10 = 0;
        for (C13900q c13900q : this.f99712c) {
            int i11 = node - i10;
            if (i11 >= 0 && i11 < c13900q.f94282a.f94304g) {
                return c13900q.f94284c[i11];
            }
            i10 += c13900q.f94282a.f94304g;
        }
        return null;
    }

    public C13900q c(int node) {
        int i10 = 0;
        for (C13900q c13900q : this.f99712c) {
            int i11 = node - i10;
            if (i11 >= 0 && i11 < c13900q.f94282a.f94304g) {
                return c13900q;
            }
            i10 += c13900q.f94282a.f94304g;
        }
        return null;
    }
}
