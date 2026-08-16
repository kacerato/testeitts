package W9;

import org.eclipse.jdt.internal.core.JavaElement;

public class a {

    public float f27330a;

    public float f27331b;

    public float f27332c;

    public float f27333d;

    public float f27334e;

    public float f27335f;

    public String a() {
        return "X:" + this.f27330a + " Y:" + this.f27331b + "\nW:" + this.f27334e + " H:" + this.f27335f;
    }

    public float b() {
        return this.f27335f;
    }

    public float c() {
        return this.f27334e;
    }

    public float d() {
        return this.f27330a;
    }

    public float e() {
        return this.f27331b;
    }

    public float f() {
        return this.f27332c;
    }

    public float g() {
        return this.f27333d;
    }

    public void h(float x10, float y10, float xe2, float ye2, float w10, float h10) {
        this.f27330a = x10;
        this.f27331b = y10;
        this.f27332c = xe2;
        this.f27333d = ye2;
        this.f27334e = w10;
        this.f27335f = h10;
    }

    public void i(a r10) {
        this.f27330a = r10.f27330a;
        this.f27331b = r10.f27331b;
        this.f27332c = r10.f27332c;
        this.f27333d = r10.f27333d;
        this.f27334e = r10.f27334e;
        this.f27335f = r10.f27335f;
    }

    public void j(float height) {
        this.f27335f = height;
    }

    public void k(float width) {
        this.f27334e = width;
    }

    public void l(float x10) {
        this.f27330a = x10;
    }

    public void m(float y10) {
        this.f27331b = y10;
    }

    public void n(float xEnd) {
        this.f27332c = xEnd;
    }

    public void o(float yEnd) {
        this.f27333d = yEnd;
    }

    public String toString() {
        return "FloatRepresentationRect{x=" + this.f27330a + ", y=" + this.f27331b + ", xEnd=" + this.f27332c + ", yEnd=" + this.f27333d + ", width=" + this.f27334e + ", height=" + this.f27335f + JavaElement.JEM_ANNOTATION;
    }
}
