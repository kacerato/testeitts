package Xg;

public final class f implements q {

    public final int[] f28889a;

    public final int[] f28890b;

    public final int[] f28891c;

    public f(int[] vertexIndices, int[] texCoordIndices, int[] normalIndices) {
        this.f28889a = vertexIndices;
        this.f28890b = texCoordIndices;
        this.f28891c = normalIndices;
    }

    @Override
    public int a() {
        return this.f28889a.length;
    }

    @Override
    public boolean b() {
        return this.f28891c != null;
    }

    @Override
    public int c(int number) {
        return this.f28891c[number];
    }

    @Override
    public boolean d() {
        return this.f28890b != null;
    }

    @Override
    public int e(int number) {
        return this.f28890b[number];
    }

    @Override
    public int f(int number) {
        return this.f28889a[number];
    }

    public void g(int n10, int index) {
        this.f28891c[n10] = index;
    }

    public void h(int n10, int index) {
        this.f28890b[n10] = index;
    }

    public void i(int n10, int index) {
        this.f28889a[n10] = index;
    }

    public String toString() {
        String str = "ObjFace[";
        for (int i10 = 0; i10 < a(); i10++) {
            str = str + this.f28889a[i10];
            if (this.f28890b != null || this.f28891c != null) {
                str = str + "/";
            }
            if (this.f28890b != null) {
                str = str + this.f28890b[i10];
            }
            if (this.f28891c != null) {
                str = str + "/" + this.f28891c[i10];
            }
            if (i10 < a() - 1) {
                str = str + " ";
            }
        }
        return str + "]";
    }
}
