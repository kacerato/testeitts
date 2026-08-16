package Xl;

public class b {

    public int f29650a;

    public int f29651b;

    public int f29652c;

    public static b a(int i10, int i11) {
        int i12 = 0;
        int i13 = 1;
        int i14 = 1;
        int i15 = 0;
        int i16 = i10;
        int i17 = i11;
        while (i17 != 0) {
            int i18 = i16 / i17;
            int i19 = i16 % i17;
            int i20 = i14 - (i18 * i15);
            i16 = i17;
            i17 = i19;
            int i21 = i13;
            i13 = i12 - (i18 * i13);
            i12 = i21;
            i14 = i15;
            i15 = i20;
        }
        b bVar = new b();
        bVar.f29650a = i14;
        bVar.f29651b = i12;
        bVar.f29652c = i16;
        return bVar;
    }
}
