package Xg;

import java.util.Arrays;
import org.openjdk.tools.doclint.DocLint;

public final class C3324c implements i {

    public final float[] f28838a;

    public C3324c(float[] values) {
        this.f28838a = values;
    }

    public static float[] a(i f10) {
        if (f10 instanceof C3324c) {
            return (float[]) ((C3324c) f10).f28838a.clone();
        }
        int dimensions = f10.getDimensions();
        float[] fArr = new float[dimensions];
        for (int i10 = 0; i10 < dimensions; i10++) {
            fArr[i10] = f10.get(i10);
        }
        return fArr;
    }

    public void b(float w10) {
        this.f28838a[3] = w10;
    }

    public void c(float x10) {
        this.f28838a[0] = x10;
    }

    public void d(float y10) {
        this.f28838a[1] = y10;
    }

    public void e(float z10) {
        this.f28838a[2] = z10;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null) {
            return false;
        }
        if (object instanceof C3324c) {
            return Arrays.equals(this.f28838a, ((C3324c) object).f28838a);
        }
        if (!(object instanceof i)) {
            return false;
        }
        i iVar = (i) object;
        if (iVar.getDimensions() != getDimensions()) {
            return false;
        }
        for (int i10 = 0; i10 < getDimensions(); i10++) {
            if (get(i10) != iVar.get(i10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public float get(int index) {
        return this.f28838a[index];
    }

    @Override
    public int getDimensions() {
        return this.f28838a.length;
    }

    @Override
    public float getW() {
        return this.f28838a[3];
    }

    @Override
    public float getX() {
        return this.f28838a[0];
    }

    @Override
    public float getY() {
        return this.f28838a[1];
    }

    @Override
    public float getZ() {
        return this.f28838a[2];
    }

    public int hashCode() {
        return Arrays.hashCode(this.f28838a);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(");
        for (int i10 = 0; i10 < getDimensions(); i10++) {
            sb2.append(get(i10));
            if (i10 < getDimensions() - 1) {
                sb2.append(DocLint.SEPARATOR);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }

    public C3324c(float x10, float y10, float z10, float w10) {
        this(new float[]{x10, y10, z10, w10});
    }

    public C3324c(float x10, float y10, float z10) {
        this(new float[]{x10, y10, z10});
    }

    public C3324c(float x10, float y10) {
        this(new float[]{x10, y10});
    }

    public C3324c(float x10) {
        this(new float[]{x10});
    }

    public C3324c(i other) {
        this(a(other));
    }
}
