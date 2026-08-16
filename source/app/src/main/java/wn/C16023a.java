package wn;

public class C16023a {

    public static final int f127665c = 63;

    public final int f127666a;

    public final int f127667b;

    public C16023a(int value) {
        this.f127666a = value;
        this.f127667b = 63;
    }

    public int a(int area) {
        int i10 = this.f127666a;
        int i11 = this.f127667b;
        return (area & (~i11)) | (i10 & i11);
    }

    public int b() {
        return this.f127666a & this.f127667b;
    }

    public C16023a(int value, int mask) {
        this.f127666a = value;
        this.f127667b = mask;
    }

    public C16023a(C16023a other) {
        this.f127666a = other.f127666a;
        this.f127667b = other.f127667b;
    }
}
