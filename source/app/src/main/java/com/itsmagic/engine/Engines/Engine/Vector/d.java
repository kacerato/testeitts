package com.itsmagic.engine.Engines.Engine.Vector;

import java.text.DecimalFormat;
import java.util.Arrays;
import org.eclipse.jdt.internal.core.JavaElement;

public class d extends K8.f {

    public static final DecimalFormat f79855q = new DecimalFormat("0.##");

    public float f79856b;

    public float f79857c;

    public float f79858d;

    public float f79859e;

    public float f79860g;

    public float f79861i;

    public final float[] f79862j;

    public final float[] f79863k;

    public final float[] f79864l;

    public Vector3 f79865m;

    public float f79866n;

    public float f79867o;

    public boolean f79868p;

    public d() {
        this.f79856b = Float.MAX_VALUE;
        this.f79857c = -3.4028235E38f;
        this.f79858d = -3.4028235E38f;
        this.f79859e = Float.MAX_VALUE;
        this.f79860g = Float.MAX_VALUE;
        this.f79861i = -3.4028235E38f;
        this.f79862j = new float[]{0.0f, 0.0f, 0.0f};
        this.f79863k = new float[]{0.0f, 0.0f, 0.0f};
        this.f79864l = new float[]{0.0f, 0.0f, 0.0f};
        this.f79865m = null;
        this.f79866n = 0.0f;
        this.f79868p = false;
    }

    public void d() {
        this.f79863k[0] = m();
        this.f79863k[1] = e();
        this.f79863k[2] = k();
        this.f79864l[0] = r();
        this.f79864l[1] = s();
        this.f79864l[2] = p();
        this.f79862j[0] = (r() + m()) / 2.0f;
        this.f79862j[1] = (s() + e()) / 2.0f;
        this.f79862j[2] = (p() + k()) / 2.0f;
        Vector3 vector3 = this.f79865m;
        if (vector3 != null) {
            float[] fArr = this.f79862j;
            this.f79867o = vector3.distance(fArr[0], fArr[1], fArr[2]);
        }
    }

    public final float e() {
        if (this.f79868p) {
            return this.f79859e;
        }
        return 0.0f;
    }

    public float[] f() {
        return this.f79862j;
    }

    public float getHeight() {
        return Math.abs(s() - e());
    }

    public float getWidth() {
        return Math.abs(r() - m());
    }

    public float[] h() {
        return new float[]{m(), s(), p(), 1.0f};
    }

    public float[] i() {
        return new float[]{r(), e(), k(), 1.0f};
    }

    public float j() {
        return Math.abs(p() - k());
    }

    public final float k() {
        if (this.f79868p) {
            return this.f79860g;
        }
        return 0.0f;
    }

    public float l() {
        float height = getHeight();
        float j10 = j();
        float width = getWidth();
        if (height <= width) {
            height = width;
        }
        return j10 > height ? j10 : height;
    }

    public final float m() {
        if (this.f79868p) {
            return this.f79856b;
        }
        return 0.0f;
    }

    public float[] n() {
        return this.f79864l;
    }

    public float[] o() {
        return this.f79863k;
    }

    public final float p() {
        if (this.f79868p) {
            return this.f79861i;
        }
        return 0.0f;
    }

    public float q(d other) {
        return l() / other.l();
    }

    public final float r() {
        if (this.f79868p) {
            return this.f79857c;
        }
        return 0.0f;
    }

    public final float s() {
        if (this.f79868p) {
            return this.f79858d;
        }
        return 0.0f;
    }

    public String toString() {
        return "Dimensions{min=" + Arrays.toString(this.f79863k) + ", max=" + Arrays.toString(this.f79864l) + ", center=" + Arrays.toString(this.f79862j) + ", width=" + getWidth() + ", height=" + getHeight() + ", depth=" + j() + JavaElement.JEM_ANNOTATION;
    }

    public void u() {
        this.f79868p = true;
        float[] fArr = this.f79862j;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        float[] fArr2 = this.f79863k;
        fArr2[0] = 0.0f;
        fArr2[1] = 0.0f;
        fArr2[2] = 0.0f;
        float[] fArr3 = this.f79864l;
        fArr3[0] = 0.0f;
        fArr3[1] = 0.0f;
        fArr3[2] = 0.0f;
        this.f79856b = Float.MAX_VALUE;
        this.f79857c = -3.4028235E38f;
        this.f79858d = -3.4028235E38f;
        this.f79859e = Float.MAX_VALUE;
        this.f79860g = Float.MAX_VALUE;
        this.f79861i = -3.4028235E38f;
    }

    public d v(float scale) {
        return new d(this.f79856b * scale, this.f79857c * scale, this.f79858d * scale, this.f79859e * scale, this.f79861i * scale, this.f79860g * scale);
    }

    public d w(float[] diff) {
        float f10 = this.f79856b;
        float f11 = diff[0];
        float f12 = f10 + f11;
        float f13 = this.f79857c + f11;
        float f14 = this.f79858d;
        float f15 = diff[1];
        float f16 = f14 + f15;
        float f17 = this.f79859e + f15;
        float f18 = this.f79861i;
        float f19 = diff[2];
        return new d(f12, f13, f16, f17, f18 + f19, f19 + this.f79860g);
    }

    public void x(float x10, float y10, float z10) {
        if (x10 > this.f79857c) {
            this.f79857c = x10;
        }
        if (x10 < this.f79856b) {
            this.f79856b = x10;
        }
        if (y10 > this.f79858d) {
            this.f79858d = y10;
        }
        if (y10 < this.f79859e) {
            this.f79859e = y10;
        }
        if (z10 > this.f79861i) {
            this.f79861i = z10;
        }
        if (z10 < this.f79860g) {
            this.f79860g = z10;
        }
        if (this.f79865m == null) {
            Vector3 vector3 = new Vector3(x10, y10, z10);
            this.f79865m = vector3;
            this.f79866n = vector3.lengthF();
        } else {
            float length = Vector3.length(x10, y10, z10);
            if (length >= this.f79866n) {
                this.f79866n = length;
                this.f79865m.set(x10, y10, z10);
            }
        }
        this.f79868p = true;
    }

    public void y(Vector3 vector3) {
        x(vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public d(float leftPt, float rightPt, float topPt, float bottomPt, float nearPt, float farPt) {
        this.f79862j = new float[]{0.0f, 0.0f, 0.0f};
        this.f79863k = new float[]{0.0f, 0.0f, 0.0f};
        this.f79864l = new float[]{0.0f, 0.0f, 0.0f};
        this.f79865m = null;
        this.f79866n = 0.0f;
        this.f79868p = false;
        this.f79856b = leftPt;
        this.f79857c = rightPt;
        this.f79858d = topPt;
        this.f79859e = bottomPt;
        this.f79861i = nearPt;
        this.f79860g = farPt;
        d();
    }
}
