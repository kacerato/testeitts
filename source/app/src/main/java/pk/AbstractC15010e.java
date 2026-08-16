package pk;

import sk.AbstractC15326l;
import sk.AbstractC15329o;

public abstract class AbstractC15010e {

    public static final int f104119a = 14;

    public static final int f104120b = 57;

    public static final long f104121c = 67108863;

    public static final long f104122d = 268435455;

    public static final long f104123e = 4294967295L;

    public static final int f104124f = 447;

    public static final int[] f104125g = {-1420278541, 595116690, -1916432555, 560775794, -1361693040, -1001465015, 2093622249, -1, -1, -1, -1, -1, -1, 1073741823};

    public static final int[] f104126h = {463601321, -1045562440, 1239460018, -1189350089, -412821483, 1160071467, -1564970643, 1256291574, -1170454588, -240530412, 2118977290, -1845154869, -1618855054, -1019204973, 1437344377, -1849925303, 1189267370, 280387897, -680846520, -500732508, -1100672524, -1, -1, -1, -1, -1, -1, ok.d.f99088b};

    public static final int f104127i = 78101261;

    public static final int f104128j = 141809365;

    public static final int f104129k = 175155932;

    public static final int f104130l = 64542499;

    public static final int f104131m = 158326419;

    public static final int f104132n = 191173276;

    public static final int f104133o = 104575268;

    public static final int f104134p = 137584065;

    public static final int f104135q = 43969588;

    public static final int f104136r = 30366549;

    public static final int f104137s = 163752818;

    public static final int f104138t = 258169998;

    public static final int f104139u = 96434764;

    public static final int f104140v = 227822194;

    public static final int f104141w = 149865618;

    public static final int f104142x = 550336261;

    public static boolean a(byte[] bArr, int[] iArr) {
        if (bArr[56] != 0) {
            return false;
        }
        b(bArr, iArr);
        return !AbstractC15329o.a0(14, iArr, f104125g);
    }

    public static void b(byte[] bArr, int[] iArr) {
        AbstractC15006a.d(bArr, 0, iArr, 0, 14);
    }

    public static void c(int i10, byte[] bArr) {
        AbstractC15012g.a(f104125g, i10, bArr);
    }

    public static void d(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[22];
        AbstractC15329o.l0(iArr2, 0, 8, iArr, 0, 14, iArr4, 0);
        if (iArr2[7] < 0) {
            AbstractC15329o.l(14, f104125g, 0, iArr4, 8);
            AbstractC15329o.d1(14, iArr, 0, iArr4, 8);
        }
        byte[] bArr = new byte[88];
        AbstractC15006a.g(iArr4, 0, 22, bArr, 0);
        b(e(bArr), iArr3);
    }

    public static byte[] e(byte[] bArr) {
        long b10 = AbstractC15006a.b(bArr, 60) << 4;
        long j10 = b10 & 4294967295L;
        long c10 = AbstractC15006a.c(bArr, 70);
        long j11 = c10 & 4294967295L;
        long c11 = AbstractC15006a.c(bArr, 84);
        long j12 = (c11 & 4294967295L) >>> 28;
        long b11 = ((AbstractC15006a.b(bArr, 32) << 4) & 4294967295L) + (j12 * 43969588);
        long c12 = (AbstractC15006a.c(bArr, 35) & 4294967295L) + (j12 * 30366549);
        long b12 = ((AbstractC15006a.b(bArr, 39) << 4) & 4294967295L) + (j12 * 163752818);
        long c13 = (AbstractC15006a.c(bArr, 42) & 4294967295L) + (j12 * 258169998);
        long b13 = ((AbstractC15006a.b(bArr, 46) << 4) & 4294967295L) + (j12 * 96434764);
        long c14 = (AbstractC15006a.c(bArr, 49) & 4294967295L) + (j12 * 227822194);
        long b14 = ((AbstractC15006a.b(bArr, 53) << 4) & 4294967295L) + (j12 * 149865618);
        long c15 = (AbstractC15006a.c(bArr, 56) & 4294967295L) + (j12 * 550336261);
        long b15 = ((AbstractC15006a.b(bArr, 74) << 4) & 4294967295L) + (j11 >>> 28);
        long j13 = c10 & 268435455;
        long c16 = (AbstractC15006a.c(bArr, 77) & 4294967295L) + (b15 >>> 28);
        long b16 = ((AbstractC15006a.b(bArr, 81) << 4) & 4294967295L) + (c16 >>> 28);
        long j14 = c16 & 268435455;
        long j15 = (c11 & 268435455) + (b16 >>> 28);
        long j16 = b16 & 268435455;
        long c17 = (AbstractC15006a.c(bArr, 28) & 4294967295L) + (j15 * 43969588);
        long j17 = b11 + (j15 * 30366549);
        long j18 = c12 + (j15 * 163752818);
        long j19 = b12 + (j15 * 258169998);
        long j20 = c13 + (j15 * 96434764);
        long j21 = b13 + (j15 * 227822194);
        long j22 = c14 + (j15 * 149865618);
        long j23 = b14 + (j15 * 550336261);
        long j24 = j22 + (j16 * 550336261);
        long c18 = (AbstractC15006a.c(bArr, 63) & 4294967295L) + (j10 >>> 28);
        long b17 = ((AbstractC15006a.b(bArr, 67) << 4) & 4294967295L) + (c18 >>> 28);
        long j25 = j13 + (b17 >>> 28);
        long j26 = b17 & 268435455;
        long j27 = (b15 & 268435455) + (j25 >>> 28);
        long j28 = j25 & 268435455;
        long j29 = j23 + (j24 >>> 28);
        long j30 = c15 + (j29 >>> 28);
        long j31 = (b10 & 268435455) + (j30 >>> 28);
        long j32 = (c18 & 268435455) + (j31 >>> 28);
        long j33 = j31 & 268435455;
        long j34 = ((j30 & 268435455) * 4) + ((j29 & 268435455) >>> 26) + 1;
        long c19 = (AbstractC15006a.c(bArr, 0) & 4294967295L) + (78101261 * j34);
        long b18 = ((AbstractC15006a.b(bArr, 4) << 4) & 4294967295L) + (43969588 * j33) + (141809365 * j34) + (c19 >>> 28);
        long c20 = (AbstractC15006a.c(bArr, 7) & 4294967295L) + (j32 * 43969588) + (30366549 * j33) + (175155932 * j34) + (b18 >>> 28);
        long b19 = ((AbstractC15006a.b(bArr, 11) << 4) & 4294967295L) + (j26 * 43969588) + (j32 * 30366549) + (163752818 * j33) + (64542499 * j34) + (c20 >>> 28);
        long c21 = (AbstractC15006a.c(bArr, 14) & 4294967295L) + (j28 * 43969588) + (j26 * 30366549) + (j32 * 163752818) + (258169998 * j33) + (158326419 * j34) + (b19 >>> 28);
        long j35 = b19 & 268435455;
        long b20 = ((AbstractC15006a.b(bArr, 18) << 4) & 4294967295L) + (j27 * 43969588) + (j28 * 30366549) + (j26 * 163752818) + (j32 * 258169998) + (96434764 * j33) + (191173276 * j34) + (c21 >>> 28);
        long j36 = c21 & 268435455;
        long c22 = (AbstractC15006a.c(bArr, 21) & 4294967295L) + (j14 * 43969588) + (j27 * 30366549) + (j28 * 163752818) + (j26 * 258169998) + (j32 * 96434764) + (227822194 * j33) + (104575268 * j34) + (b20 >>> 28);
        long j37 = b20 & 268435455;
        long b21 = ((AbstractC15006a.b(bArr, 25) << 4) & 4294967295L) + (j16 * 43969588) + (j14 * 30366549) + (j27 * 163752818) + (j28 * 258169998) + (j26 * 96434764) + (j32 * 227822194) + (149865618 * j33) + (j34 * 137584065) + (c22 >>> 28);
        long j38 = c22 & 268435455;
        long j39 = c17 + (j16 * 30366549) + (j14 * 163752818) + (j27 * 258169998) + (j28 * 96434764) + (j26 * 227822194) + (j32 * 149865618) + (j33 * 550336261) + (b21 >>> 28);
        long j40 = j17 + (j16 * 163752818) + (j14 * 258169998) + (j27 * 96434764) + (j28 * 227822194) + (j26 * 149865618) + (j32 * 550336261) + (j39 >>> 28);
        long j41 = j39 & 268435455;
        long j42 = j18 + (j16 * 258169998) + (j14 * 96434764) + (j27 * 227822194) + (j28 * 149865618) + (j26 * 550336261) + (j40 >>> 28);
        long j43 = j19 + (j16 * 96434764) + (j14 * 227822194) + (j27 * 149865618) + (j28 * 550336261) + (j42 >>> 28);
        long j44 = j20 + (j16 * 227822194) + (j14 * 149865618) + (j27 * 550336261) + (j43 >>> 28);
        long j45 = j21 + (j16 * 149865618) + (j14 * 550336261) + (j44 >>> 28);
        long j46 = (j24 & 268435455) + (j45 >>> 28);
        long j47 = (j29 & f104121c) + (j46 >>> 28);
        long j48 = j46 & 268435455;
        long j49 = (j47 >>> 26) - 1;
        long j50 = (c19 & 268435455) - (j49 & 78101261);
        long j51 = ((b18 & 268435455) - (j49 & 141809365)) + (j50 >> 28);
        long j52 = ((c20 & 268435455) - (j49 & 175155932)) + (j51 >> 28);
        long j53 = (j35 - (j49 & 64542499)) + (j52 >> 28);
        long j54 = (j36 - (j49 & 158326419)) + (j53 >> 28);
        long j55 = (j37 - (j49 & 191173276)) + (j54 >> 28);
        long j56 = j54 & 268435455;
        long j57 = (j38 - (j49 & 104575268)) + (j55 >> 28);
        long j58 = j55 & 268435455;
        long j59 = ((b21 & 268435455) - (j49 & 137584065)) + (j57 >> 28);
        long j60 = j41 + (j59 >> 28);
        long j61 = (j40 & 268435455) + (j60 >> 28);
        long j62 = (j42 & 268435455) + (j61 >> 28);
        long j63 = (j43 & 268435455) + (j62 >> 28);
        long j64 = (j44 & 268435455) + (j63 >> 28);
        long j65 = (j45 & 268435455) + (j64 >> 28);
        long j66 = j48 + (j65 >> 28);
        long j67 = (j47 & f104121c) + (j66 >> 28);
        byte[] bArr2 = new byte[57];
        AbstractC15006a.h((j50 & 268435455) | ((j51 & 268435455) << 28), bArr2, 0);
        AbstractC15006a.h((j52 & 268435455) | ((j53 & 268435455) << 28), bArr2, 7);
        AbstractC15006a.h(j56 | (j58 << 28), bArr2, 14);
        AbstractC15006a.h((j57 & 268435455) | ((j59 & 268435455) << 28), bArr2, 21);
        AbstractC15006a.h((j60 & 268435455) | ((j61 & 268435455) << 28), bArr2, 28);
        AbstractC15006a.h(((j63 & 268435455) << 28) | (j62 & 268435455), bArr2, 35);
        AbstractC15006a.h((j64 & 268435455) | ((j65 & 268435455) << 28), bArr2, 42);
        AbstractC15006a.h((j66 & 268435455) | (j67 << 28), bArr2, 49);
        return bArr2;
    }

    public static byte[] f(byte[] bArr) {
        long c10 = AbstractC15006a.c(bArr, 84);
        long j10 = c10 & 4294967295L;
        long c11 = AbstractC15006a.c(bArr, 91);
        long j11 = c11 & 4294967295L;
        long c12 = AbstractC15006a.c(bArr, 98);
        long j12 = c12 & 4294967295L;
        long c13 = AbstractC15006a.c(bArr, 105);
        long j13 = c13 & 4294967295L;
        long a10 = AbstractC15006a.a(bArr, 112) & 4294967295L;
        long b10 = ((AbstractC15006a.b(bArr, 109) << 4) & 4294967295L) + (j13 >>> 28);
        long j14 = c13 & 268435455;
        long b11 = ((AbstractC15006a.b(bArr, 74) << 4) & 4294967295L) + (a10 * 227822194) + (b10 * 149865618);
        long c14 = (AbstractC15006a.c(bArr, 77) & 4294967295L) + (a10 * 149865618) + (b10 * 550336261);
        long c15 = (AbstractC15006a.c(bArr, 49) & 4294967295L) + (j14 * 43969588);
        long b12 = ((AbstractC15006a.b(bArr, 53) << 4) & 4294967295L) + (b10 * 43969588) + (j14 * 30366549);
        long c16 = (AbstractC15006a.c(bArr, 56) & 4294967295L) + (a10 * 43969588) + (b10 * 30366549) + (j14 * 163752818);
        long b13 = ((AbstractC15006a.b(bArr, 60) << 4) & 4294967295L) + (a10 * 30366549) + (b10 * 163752818) + (j14 * 258169998);
        long c17 = (AbstractC15006a.c(bArr, 63) & 4294967295L) + (a10 * 163752818) + (b10 * 258169998) + (j14 * 96434764);
        long b14 = ((AbstractC15006a.b(bArr, 67) << 4) & 4294967295L) + (a10 * 258169998) + (b10 * 96434764) + (j14 * 227822194);
        long c18 = (AbstractC15006a.c(bArr, 70) & 4294967295L) + (a10 * 96434764) + (b10 * 227822194) + (j14 * 149865618);
        long b15 = ((AbstractC15006a.b(bArr, 102) << 4) & 4294967295L) + (j12 >>> 28);
        long j15 = c12 & 268435455;
        long b16 = ((AbstractC15006a.b(bArr, 46) << 4) & 4294967295L) + (b15 * 43969588);
        long j16 = b14 + (b15 * 149865618);
        long j17 = c18 + (b15 * 550336261);
        long c19 = (AbstractC15006a.c(bArr, 42) & 4294967295L) + (j15 * 43969588);
        long j18 = c15 + (b15 * 30366549) + (j15 * 163752818);
        long j19 = b12 + (b15 * 163752818) + (j15 * 258169998);
        long j20 = c16 + (b15 * 258169998) + (j15 * 96434764);
        long j21 = b13 + (b15 * 96434764) + (j15 * 227822194);
        long j22 = c17 + (b15 * 227822194) + (j15 * 149865618);
        long b17 = ((AbstractC15006a.b(bArr, 95) << 4) & 4294967295L) + (j11 >>> 28);
        long j23 = c11 & 268435455;
        long b18 = ((AbstractC15006a.b(bArr, 39) << 4) & 4294967295L) + (b17 * 43969588);
        long j24 = j22 + (b17 * 550336261);
        long c20 = (AbstractC15006a.c(bArr, 35) & 4294967295L) + (j23 * 43969588);
        long j25 = c19 + (b17 * 30366549) + (j23 * 163752818);
        long j26 = b16 + (j15 * 30366549) + (b17 * 163752818) + (j23 * 258169998);
        long j27 = j18 + (b17 * 258169998) + (j23 * 96434764);
        long j28 = j19 + (b17 * 96434764) + (j23 * 227822194);
        long j29 = j20 + (b17 * 227822194) + (j23 * 149865618);
        long j30 = j21 + (b17 * 149865618) + (j23 * 550336261);
        long b19 = ((AbstractC15006a.b(bArr, 88) << 4) & 4294967295L) + (j10 >>> 28);
        long j31 = b11 + (j14 * 550336261) + (j17 >>> 28);
        long j32 = c14 + (j31 >>> 28);
        long b20 = ((AbstractC15006a.b(bArr, 81) << 4) & 4294967295L) + (a10 * 550336261) + (j32 >>> 28);
        long j33 = j32 & 268435455;
        long j34 = (c10 & 268435455) + (b20 >>> 28);
        long j35 = b20 & 268435455;
        long b21 = ((AbstractC15006a.b(bArr, 25) << 4) & 4294967295L) + (j35 * 43969588);
        long c21 = (AbstractC15006a.c(bArr, 28) & 4294967295L) + (j34 * 43969588) + (j35 * 30366549);
        long b22 = ((AbstractC15006a.b(bArr, 32) << 4) & 4294967295L) + (b19 * 43969588) + (j34 * 30366549) + (j35 * 163752818);
        long j36 = c20 + (b19 * 30366549) + (j34 * 163752818) + (j35 * 258169998);
        long j37 = b18 + (j23 * 30366549) + (b19 * 163752818) + (j34 * 258169998) + (j35 * 96434764);
        long j38 = j25 + (b19 * 258169998) + (j34 * 96434764) + (j35 * 227822194);
        long j39 = j26 + (b19 * 96434764) + (j34 * 227822194) + (j35 * 149865618);
        long j40 = j27 + (b19 * 227822194) + (j34 * 149865618) + (j35 * 550336261);
        long c22 = (AbstractC15006a.c(bArr, 21) & 4294967295L) + (j33 * 43969588);
        long j41 = j24 + (j30 >>> 28);
        long j42 = j16 + (j15 * 550336261) + (j41 >>> 28);
        long j43 = (j17 & 268435455) + (j42 >>> 28);
        long j44 = j42 & 268435455;
        long j45 = (j31 & 268435455) + (j43 >>> 28);
        long j46 = j43 & 268435455;
        long c23 = (AbstractC15006a.c(bArr, 14) & 4294967295L) + (j46 * 43969588);
        long b23 = ((AbstractC15006a.b(bArr, 18) << 4) & 4294967295L) + (j45 * 43969588) + (j46 * 30366549);
        long j47 = c22 + (j45 * 30366549) + (j46 * 163752818);
        long j48 = b21 + (j33 * 30366549) + (j45 * 163752818) + (j46 * 258169998);
        long j49 = c21 + (j33 * 163752818) + (j45 * 258169998) + (j46 * 96434764);
        long j50 = b22 + (j33 * 258169998) + (j45 * 96434764) + (j46 * 227822194);
        long j51 = j36 + (j33 * 96434764) + (j45 * 227822194) + (j46 * 149865618);
        long j52 = j37 + (j33 * 227822194) + (j45 * 149865618) + (j46 * 550336261);
        long j53 = j28 + (b19 * 149865618) + (j34 * 550336261) + (j40 >>> 28);
        long j54 = j29 + (b19 * 550336261) + (j53 >>> 28);
        long j55 = (j30 & 268435455) + (j54 >>> 28);
        long j56 = (j41 & 268435455) + (j55 >>> 28);
        long j57 = j55 & 268435455;
        long j58 = j49 + (j44 * 227822194) + (j56 * 149865618);
        long j59 = j50 + (j44 * 149865618) + (j56 * 550336261);
        long j60 = ((j54 & 268435455) * 4) + ((j53 & 268435455) >>> 26) + 1;
        long c24 = (AbstractC15006a.c(bArr, 0) & 4294967295L) + (78101261 * j60);
        long c25 = (AbstractC15006a.c(bArr, 7) & 4294967295L) + (j56 * 43969588) + (30366549 * j57) + (175155932 * j60);
        long b24 = ((AbstractC15006a.b(bArr, 11) << 4) & 4294967295L) + (j44 * 43969588) + (j56 * 30366549) + (163752818 * j57) + (64542499 * j60);
        long j61 = c23 + (j44 * 30366549) + (j56 * 163752818) + (258169998 * j57) + (158326419 * j60);
        long j62 = b23 + (j44 * 163752818) + (j56 * 258169998) + (96434764 * j57) + (191173276 * j60);
        long j63 = j47 + (j44 * 258169998) + (j56 * 96434764) + (227822194 * j57) + (104575268 * j60);
        long j64 = j48 + (j44 * 96434764) + (j56 * 227822194) + (149865618 * j57) + (j60 * 137584065);
        long b25 = ((AbstractC15006a.b(bArr, 4) << 4) & 4294967295L) + (43969588 * j57) + (141809365 * j60) + (c24 >>> 28);
        long j65 = c25 + (b25 >>> 28);
        long j66 = b24 + (j65 >>> 28);
        long j67 = j61 + (j66 >>> 28);
        long j68 = j62 + (j67 >>> 28);
        long j69 = j67 & 268435455;
        long j70 = j63 + (j68 >>> 28);
        long j71 = j68 & 268435455;
        long j72 = j64 + (j70 >>> 28);
        long j73 = j58 + (j57 * 550336261) + (j72 >>> 28);
        long j74 = j59 + (j73 >>> 28);
        long j75 = j73 & 268435455;
        long j76 = j51 + (j44 * 550336261) + (j74 >>> 28);
        long j77 = j52 + (j76 >>> 28);
        long j78 = j38 + (j33 * 149865618) + (j45 * 550336261) + (j77 >>> 28);
        long j79 = j77 & 268435455;
        long j80 = j39 + (j33 * 550336261) + (j78 >>> 28);
        long j81 = (j40 & 268435455) + (j80 >>> 28);
        long j82 = (j53 & f104121c) + (j81 >>> 28);
        long j83 = (j82 >>> 26) - 1;
        long j84 = (c24 & 268435455) - (j83 & 78101261);
        long j85 = ((b25 & 268435455) - (j83 & 141809365)) + (j84 >> 28);
        long j86 = ((j65 & 268435455) - (j83 & 175155932)) + (j85 >> 28);
        long j87 = ((j66 & 268435455) - (j83 & 64542499)) + (j86 >> 28);
        long j88 = j86 & 268435455;
        long j89 = (j69 - (j83 & 158326419)) + (j87 >> 28);
        long j90 = (j71 - (j83 & 191173276)) + (j89 >> 28);
        long j91 = ((j70 & 268435455) - (j83 & 104575268)) + (j90 >> 28);
        long j92 = ((j72 & 268435455) - (j83 & 137584065)) + (j91 >> 28);
        long j93 = j75 + (j92 >> 28);
        long j94 = (j74 & 268435455) + (j93 >> 28);
        long j95 = (j76 & 268435455) + (j94 >> 28);
        long j96 = j79 + (j95 >> 28);
        long j97 = (j78 & 268435455) + (j96 >> 28);
        long j98 = (j80 & 268435455) + (j97 >> 28);
        long j99 = (j81 & 268435455) + (j98 >> 28);
        long j100 = (j82 & f104121c) + (j99 >> 28);
        byte[] bArr2 = new byte[57];
        AbstractC15006a.h(((j85 & 268435455) << 28) | (j84 & 268435455), bArr2, 0);
        AbstractC15006a.h(((j87 & 268435455) << 28) | j88, bArr2, 7);
        AbstractC15006a.h((j89 & 268435455) | ((j90 & 268435455) << 28), bArr2, 14);
        AbstractC15006a.h((j91 & 268435455) | ((j92 & 268435455) << 28), bArr2, 21);
        AbstractC15006a.h((j93 & 268435455) | ((j94 & 268435455) << 28), bArr2, 28);
        AbstractC15006a.h((j95 & 268435455) | ((j96 & 268435455) << 28), bArr2, 35);
        AbstractC15006a.h((j97 & 268435455) | ((j98 & 268435455) << 28), bArr2, 42);
        AbstractC15006a.h((j100 << 28) | (j99 & 268435455), bArr2, 49);
        return bArr2;
    }

    public static boolean g(int[] iArr, int[] iArr2, int[] iArr3) {
        int i10;
        int i11;
        int[] iArr4;
        int[] iArr5 = new int[28];
        System.arraycopy(f104126h, 0, iArr5, 0, 28);
        int[] iArr6 = new int[28];
        AbstractC15326l.j(iArr, iArr6);
        iArr6[0] = iArr6[0] + 1;
        int[] iArr7 = new int[28];
        int[] iArr8 = f104125g;
        AbstractC15326l.i(iArr8, iArr, iArr7);
        int[] iArr9 = new int[28];
        int[] iArr10 = new int[8];
        System.arraycopy(iArr8, 0, iArr10, 0, 8);
        int[] iArr11 = new int[8];
        System.arraycopy(iArr, 0, iArr11, 0, 8);
        int[] iArr12 = new int[8];
        iArr12[0] = 1;
        int[] iArr13 = new int[8];
        int[] iArr14 = iArr10;
        int[] iArr15 = iArr11;
        int i12 = 27;
        int i13 = 1788;
        int d10 = AbstractC15011f.d(27, iArr6);
        while (d10 > 447) {
            int i14 = i13 - 1;
            if (i14 < 0) {
                return false;
            }
            int c10 = AbstractC15011f.c(i12, iArr7) - d10;
            int i15 = c10 & (~(c10 >> 31));
            if (iArr7[i12] < 0) {
                i10 = d10;
                AbstractC15011f.a(i12, i15, iArr5, iArr6, iArr7, iArr9);
                int[] iArr16 = iArr15;
                AbstractC15011f.b(7, i15, iArr14, iArr13, iArr16, iArr12);
                iArr4 = iArr16;
                i11 = i12;
            } else {
                i10 = d10;
                AbstractC15011f.f(i12, i15, iArr5, iArr6, iArr7, iArr9);
                i11 = i12;
                iArr4 = iArr15;
                AbstractC15011f.g(7, i15, iArr14, iArr13, iArr4, iArr12);
            }
            if (AbstractC15011f.e(i11, iArr5, iArr6)) {
                int i16 = i10 >>> 5;
                i12 = i16;
                d10 = AbstractC15011f.d(i16, iArr5);
                iArr15 = iArr14;
                iArr14 = iArr4;
                int[] iArr17 = iArr13;
                iArr13 = iArr12;
                iArr12 = iArr17;
                int[] iArr18 = iArr6;
                iArr6 = iArr5;
                iArr5 = iArr18;
            } else {
                iArr15 = iArr4;
                i12 = i11;
                d10 = i10;
            }
            i13 = i14;
        }
        System.arraycopy(iArr15, 0, iArr2, 0, 8);
        System.arraycopy(iArr12, 0, iArr3, 0, 8);
        return true;
    }

    public static void h(int i10, int[] iArr, int[] iArr2) {
        iArr2[14] = (1 << (i10 - 448)) + AbstractC15329o.t(14, 1 & (~iArr[0]), iArr, f104125g, iArr2);
        AbstractC15329o.t0(15, iArr2, 0);
    }
}
