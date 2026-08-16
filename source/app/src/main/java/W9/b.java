package W9;

import org.eclipse.jdt.internal.core.JavaElement;

public class b {

    public int f27336a = Integer.MAX_VALUE;

    public int f27337b = Integer.MAX_VALUE;

    public int f27338c = Integer.MIN_VALUE;

    public int f27339d = Integer.MIN_VALUE;

    public boolean f27340e = false;

    public int a() {
        return this.f27338c;
    }

    public int b() {
        return this.f27339d;
    }

    public int c() {
        return this.f27336a;
    }

    public int d() {
        return this.f27337b;
    }

    public void e() {
        this.f27336a = Integer.MAX_VALUE;
        this.f27337b = Integer.MAX_VALUE;
        this.f27338c = Integer.MIN_VALUE;
        this.f27339d = Integer.MIN_VALUE;
        this.f27340e = false;
    }

    public void f(int maxX) {
        this.f27338c = maxX;
    }

    public void g(int maxY) {
        this.f27339d = maxY;
    }

    public void h(int minX) {
        this.f27336a = minX;
    }

    public void i(int minY) {
        this.f27337b = minY;
    }

    public void j() {
        this.f27336a = 0;
        this.f27337b = 0;
        this.f27338c = 0;
        this.f27339d = 0;
        this.f27340e = false;
    }

    public String toString() {
        return "RectBounding{minX=" + this.f27336a + ", minY=" + this.f27337b + ", maxX=" + this.f27338c + ", maxY=" + this.f27339d + ", foundAny=" + this.f27340e + JavaElement.JEM_ANNOTATION;
    }
}
