package z9;

public final class C16274a {

    public static final class b {

        public final int f130769a;

        public final int f130770b;

        public final int f130771c;

        public String toString() {
            return "sideChunks=" + this.f130769a + ", chunkResolution=" + this.f130770b + ", maxChunks=" + this.f130771c;
        }

        public b(int sideChunks, int chunkResolution) {
            this.f130769a = sideChunks;
            this.f130770b = chunkResolution;
            this.f130771c = sideChunks * sideChunks;
        }
    }

    public static int a(int v10, int min, int max) {
        return Math.max(min, Math.min(max, v10));
    }

    public static b b(int resolution, int bestChunkResolution) {
        if (resolution < 1) {
            throw new IllegalArgumentException("resolution deve ser >= 1");
        }
        if (bestChunkResolution < 1) {
            bestChunkResolution = 1;
        }
        int round = Math.round(resolution / bestChunkResolution);
        int i10 = round >= 1 ? round : 1;
        if (i10 > resolution) {
            i10 = resolution;
        }
        int c10 = c(resolution, i10);
        return new b(c10, resolution / c10);
    }

    public static int c(int n10, int target) {
        if (target < 1) {
            target = 1;
        }
        if (target > n10) {
            target = n10;
        }
        int abs = Math.abs(1 - target);
        int floor = (int) Math.floor(Math.sqrt(n10));
        int i10 = abs;
        int i11 = 1;
        for (int i12 = 1; i12 <= floor; i12++) {
            if (n10 % i12 == 0) {
                int i13 = n10 / i12;
                int abs2 = Math.abs(i12 - target);
                if (abs2 < i10 || (abs2 == i10 && i12 > i11)) {
                    i11 = i12;
                    i10 = abs2;
                }
                int abs3 = Math.abs(i13 - target);
                if (abs3 < i10 || (abs3 == i10 && i13 > i11)) {
                    i11 = i13;
                    i10 = abs3;
                }
            }
        }
        return i11;
    }
}
