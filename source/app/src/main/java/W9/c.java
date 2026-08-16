package W9;

import org.eclipse.jdt.internal.core.JavaElement;

public class c {

    public int f27341a;

    public int f27342b;

    public int f27343c;

    public int f27344d;

    public int f27345e;

    public int f27346f;

    public String a() {
        return "X:" + this.f27341a + " Y:" + this.f27342b + "\nW:" + this.f27345e + " H:" + this.f27346f;
    }

    public int b() {
        return this.f27346f;
    }

    public int c() {
        return this.f27345e;
    }

    public int d() {
        return this.f27341a;
    }

    public int e() {
        return this.f27342b;
    }

    public int f() {
        return this.f27343c;
    }

    public int g() {
        return this.f27344d;
    }

    public void h(int x10, int y10, int xe2, int ye2, int w10, int h10) {
        this.f27341a = x10;
        this.f27342b = y10;
        this.f27343c = xe2;
        this.f27344d = ye2;
        this.f27345e = w10;
        this.f27346f = h10;
    }

    public void i(c r10) {
        this.f27341a = r10.f27341a;
        this.f27342b = r10.f27342b;
        this.f27343c = r10.f27343c;
        this.f27344d = r10.f27344d;
        this.f27345e = r10.f27345e;
        this.f27346f = r10.f27346f;
    }

    public void j(int height) {
        this.f27346f = height;
    }

    public void k(int width) {
        this.f27345e = width;
    }

    public void l(int x10) {
        this.f27341a = x10;
    }

    public void m(int y10) {
        this.f27342b = y10;
    }

    public void n(int xEnd) {
        this.f27343c = xEnd;
    }

    public void o(int yEnd) {
        this.f27344d = yEnd;
    }

    public String toString() {
        return "RepresentationRect{x=" + this.f27341a + ", y=" + this.f27342b + ", xEnd=" + this.f27343c + ", yEnd=" + this.f27344d + ", width=" + this.f27345e + ", height=" + this.f27346f + JavaElement.JEM_ANNOTATION;
    }
}
