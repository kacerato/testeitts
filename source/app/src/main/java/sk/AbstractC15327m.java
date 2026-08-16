package sk;

public abstract class AbstractC15327m {
    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        AbstractC15323i.D(iArr, iArr2, iArr3);
        AbstractC15323i.C(iArr, 8, iArr2, 8, iArr3, 16);
        int h10 = AbstractC15323i.h(iArr3, 8, iArr3, 16);
        int e10 = h10 + AbstractC15323i.e(iArr3, 24, iArr3, 16, AbstractC15323i.e(iArr3, 0, iArr3, 8, 0) + h10);
        int[] m10 = AbstractC15323i.m();
        int[] m11 = AbstractC15323i.m();
        boolean z10 = AbstractC15323i.q(iArr, 8, iArr, 0, m10, 0) != AbstractC15323i.q(iArr2, 8, iArr2, 0, m11, 0);
        int[] o10 = AbstractC15323i.o();
        AbstractC15323i.D(m10, m11, o10);
        AbstractC15329o.p(32, e10 + (z10 ? AbstractC15329o.l(16, o10, 0, iArr3, 8) : AbstractC15329o.d1(16, o10, 0, iArr3, 8)), iArr3, 24);
    }

    public static void b(int[] iArr, int[] iArr2) {
        AbstractC15323i.Q(iArr, iArr2);
        AbstractC15323i.P(iArr, 8, iArr2, 16);
        int h10 = AbstractC15323i.h(iArr2, 8, iArr2, 16);
        int e10 = h10 + AbstractC15323i.e(iArr2, 24, iArr2, 16, AbstractC15323i.e(iArr2, 0, iArr2, 8, 0) + h10);
        int[] m10 = AbstractC15323i.m();
        AbstractC15323i.q(iArr, 8, iArr, 0, m10, 0);
        int[] o10 = AbstractC15323i.o();
        AbstractC15323i.Q(m10, o10);
        AbstractC15329o.p(32, e10 + AbstractC15329o.d1(16, o10, 0, iArr2, 8), iArr2, 24);
    }
}
