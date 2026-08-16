package wn;

public class r {
    public static int a(C16026d s10, int dir) {
        return (s10.f127688c >> (dir * 6)) & 63;
    }

    public static int b(int dir) {
        return new int[]{-1, 0, 1, 0}[dir & 3];
    }

    public static int c(int dir) {
        return new int[]{0, 1, 0, -1}[dir & 3];
    }

    public static void d(C16026d s10, int dir, int i10) {
        int i11 = dir * 6;
        s10.f127688c = ((i10 & 63) << i11) | (s10.f127688c & (~(63 << i11)));
    }

    public static int e(int v10, int min, int max) {
        return Math.max(Math.min(max, v10), min);
    }

    public static int f(int x10, int y10) {
        return new int[]{3, 0, -1, 2, 1}[((y10 + 1) << 1) + x10];
    }
}
