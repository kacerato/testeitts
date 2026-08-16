package Tl;

public final class b {

    public final int[] f25439a;

    public int f25440b;

    public b(int[] iArr, int i10) {
        this.f25439a = iArr;
        this.f25440b = i10;
    }

    public final int a(int i10) {
        return this.f25439a[this.f25440b + i10];
    }

    public final int b(int i10, int i11) {
        this.f25439a[this.f25440b + i10] = i11;
        return i11;
    }

    public final int c(int i10, long j10) {
        int[] iArr = this.f25439a;
        int i11 = this.f25440b + i10;
        int i12 = (int) j10;
        iArr[i11] = i12;
        return i12;
    }

    public final b d() {
        return new b(this.f25439a, this.f25440b);
    }

    public final b e(int i10) {
        return new b(this.f25439a, this.f25440b + i10);
    }

    public final void f(int i10) {
        this.f25440b += i10;
    }
}
