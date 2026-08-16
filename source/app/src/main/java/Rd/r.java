package Rd;

import org.eclipse.jdt.internal.core.JavaElement;

public class r {

    public static final int f22748b = 64;

    public final float f22749a;

    public static class a {

        public final int f22750a;

        public final int f22751b;

        public final float f22752c;

        public a(int i10, int i11, float f10) {
            this.f22750a = i10;
            this.f22751b = i11;
            this.f22752c = f10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f22750a == aVar.f22750a && this.f22751b == aVar.f22751b && Float.compare(aVar.f22752c, this.f22752c) == 0;
        }

        public int hashCode() {
            int i10 = ((this.f22750a * 31) + this.f22751b) * 31;
            float f10 = this.f22752c;
            return i10 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0);
        }

        public String toString() {
            return "Size{width=" + this.f22750a + ", height=" + this.f22751b + ", scaleFactor=" + this.f22752c + JavaElement.JEM_ANNOTATION;
        }
    }

    public r(float f10) {
        this.f22749a = f10;
    }

    public final int a(float f10) {
        return (int) Math.ceil(f10 / this.f22749a);
    }

    public boolean b(int i10, int i11) {
        return a((float) i11) == 0 || a((float) i10) == 0;
    }

    public final int c(int i10) {
        int i11 = i10 % 64;
        return i11 == 0 ? i10 : (i10 - i11) + 64;
    }

    public a d(int i10, int i11) {
        float f10 = i10;
        int c10 = c(a(f10));
        return new a(c10, (int) Math.ceil(i11 / r4), f10 / c10);
    }
}
