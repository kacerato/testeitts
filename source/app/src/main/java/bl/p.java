package bl;

public class p {
    public static int[] a(int i10, int i11) {
        int i12;
        int i13 = (i10 + 127) >> 7;
        if (i11 == 261888) {
            i12 = (((i13 * 1025) + 2097152) >> 22) & 15;
        } else {
            if (i11 != 95232) {
                throw new RuntimeException("Wrong Gamma2!");
            }
            int i14 = ((i13 * 11275) + 8388608) >> 24;
            i12 = i14 ^ (((43 - i14) >> 31) & i14);
        }
        int i15 = i10 - ((i12 * 2) * i11);
        return new int[]{i15 - (((4190208 - i15) >> 31) & C3900a.f33443x), i12};
    }

    public static int b(int i10, int i11, C3900a c3900a) {
        int i12;
        int j10 = c3900a.j();
        if (i10 <= j10 || i10 > (i12 = C3900a.f33443x - j10)) {
            return 0;
        }
        return (i10 == i12 && i11 == 0) ? 0 : 1;
    }

    public static int[] c(int i10) {
        int i11 = (i10 + 4095) >> 13;
        return new int[]{i11, i10 - (i11 << 13)};
    }

    public static int d(int i10, int i11, int i12) {
        int[] a10 = a(i10, i12);
        int i13 = a10[0];
        int i14 = a10[1];
        if (i11 == 0) {
            return i14;
        }
        if (i12 == 261888) {
            return (i13 > 0 ? i14 + 1 : i14 - 1) & 15;
        }
        if (i12 != 95232) {
            throw new RuntimeException("Wrong Gamma2!");
        }
        if (i13 > 0) {
            if (i14 == 43) {
                return 0;
            }
            return i14 + 1;
        }
        if (i14 == 0) {
            return 43;
        }
        return i14 - 1;
    }
}
