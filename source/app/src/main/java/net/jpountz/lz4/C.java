package net.jpountz.lz4;

public enum C {
    ;

    private static final int MAX_INPUT_SIZE = 2113929216;

    public static class a {

        public int f97980a;

        public int f97981b;

        public int f97982c;

        public int a() {
            return this.f97980a + this.f97982c;
        }

        public void b(int i10) {
            this.f97980a += i10;
            this.f97981b += i10;
            this.f97982c -= i10;
        }
    }

    public static void a(a aVar, a aVar2) {
        aVar2.f97982c = aVar.f97982c;
        aVar2.f97980a = aVar.f97980a;
        aVar2.f97981b = aVar.f97981b;
    }

    public static int b(int i10) {
        return (i10 * (-1640531535)) >>> 20;
    }

    public static int e(int i10) {
        return (i10 * (-1640531535)) >>> 19;
    }

    public static int g(int i10) {
        return (i10 * (-1640531535)) >>> 17;
    }

    public static int h(int i10) {
        if (i10 >= 0) {
            if (i10 < MAX_INPUT_SIZE) {
                return i10 + (i10 / 255) + 16;
            }
            throw new IllegalArgumentException("length must be < 2113929216");
        }
        throw new IllegalArgumentException("length must be >= 0, got " + i10);
    }
}
