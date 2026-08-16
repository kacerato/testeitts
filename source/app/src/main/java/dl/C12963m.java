package dl;

import Bi.InterfaceC2379k;

public class C12963m implements InterfaceC2379k {

    public static final C12963m f84812e = new C12963m("falcon-512", 9, 40);

    public static final C12963m f84813f = new C12963m("falcon-1024", 10, 40);

    public final String f84814b;

    public final int f84815c;

    public final int f84816d;

    public C12963m(String str, int i10, int i11) {
        if (i10 < 1 || i10 > 10) {
            throw new IllegalArgumentException("Log N degree should be between 1 and 10");
        }
        this.f84814b = str;
        this.f84815c = i10;
        this.f84816d = i11;
    }

    public int a() {
        return this.f84815c;
    }

    public String b() {
        return this.f84814b;
    }

    public int c() {
        return this.f84816d;
    }
}
