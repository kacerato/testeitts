package wn;

public class C16030h {

    public final int f127709a;

    public final int f127710b;

    public final float[] f127711c;

    public final float[] f127712d;

    public final float f127713e;

    public final float f127714f;

    public final K[] f127715g;

    public final int f127716h;

    public C16030h(int width, int height, float[] bmin, float[] bmax, float cs, float ch2, int borderSize) {
        this.f127709a = width;
        this.f127710b = height;
        this.f127711c = bmin;
        this.f127712d = bmax;
        this.f127713e = cs;
        this.f127714f = ch2;
        this.f127716h = borderSize;
        this.f127715g = new K[width * height];
    }
}
