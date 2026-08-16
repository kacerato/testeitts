package com.itsmagic.engine.Engines.Engine.Vector;

import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.jme3.math.Vector2f;
import java.io.Serializable;
import java.util.Locale;
import org.openjdk.tools.doclint.DocLint;

public class Vector2 extends K8.f implements Serializable {

    public static Vector2 f79836c = new Vector2();

    public JAVARuntime.Vector2 f79837b;

    @Expose
    public float f79838x;

    @Expose
    public float f79839y;

    public Vector2() {
        this.f79839y = 0.0f;
        this.f79838x = 0.0f;
    }

    public static float B(float ax, float ay, float bx, float by) {
        return (float) Math.sqrt(Math.pow(ax - bx, 2.0d) + Math.pow(ay - by, 2.0d));
    }

    public static float D0(float ax, float ay, float bx, float by) {
        return (float) (Math.pow(ax - bx, 2.0d) + Math.pow(ay - by, 2.0d));
    }

    public static float F0(float x10, float y10) {
        return (x10 * x10) + (y10 * y10);
    }

    public static String L0(float x10, float y10, int decimals) {
        StringBuilder sb2 = new StringBuilder();
        Locale locale = Locale.US;
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(x10)));
        sb2.append(", ");
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(y10)));
        return sb2.toString();
    }

    public static float M(float x10, float y10, float ox, float oy) {
        return (x10 * ox) + (y10 * oy);
    }

    public static Vector2 M0() {
        Vector2 vector2 = f79836c;
        vector2.f79838x = 0.0f;
        vector2.f79839y = 0.0f;
        return vector2;
    }

    public static Vector2 P(String json) {
        try {
            X7.a aVar = W7.b.f27305e;
            return (Vector2) X7.a.m().fromJson(json, Vector2.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static double Q(double x10, double y10) {
        return Math.sqrt((float) ((x10 * x10) + (y10 * y10)));
    }

    public static float T(float x10, float y10) {
        return Nc.b.q1((x10 * x10) + (y10 * y10));
    }

    public static Vector2 y(Vector2 vector3) {
        if (vector3 != null) {
            return vector3.clone();
        }
        return null;
    }

    public Vector3 A(Vector2 vector2) {
        return new Vector3(new Vector2f(this.f79838x, this.f79839y).cross(new Vector2f(vector2.f79838x, vector2.f79839y)));
    }

    public void B0(float x10) {
        this.f79838x = x10;
    }

    public Vector2 C(float a10) {
        this.f79838x /= a10;
        this.f79839y /= a10;
        return this;
    }

    public void C0(float y10) {
        this.f79839y = y10;
    }

    public Vector2 D(float x10, float y10) {
        this.f79838x /= x10;
        this.f79839y /= y10;
        return this;
    }

    public Vector2 E(Vector2 vector) {
        this.f79838x /= vector.f79838x;
        this.f79839y /= vector.f79839y;
        return this;
    }

    public float E0(Vector2 target) {
        return (float) (Math.pow(this.f79838x - target.f79838x, 2.0d) + Math.pow(this.f79839y - target.f79839y, 2.0d));
    }

    public Vector2 F(Vector3 vector) {
        this.f79838x /= vector.getX();
        this.f79839y /= vector.getY();
        return this;
    }

    public Vector2 G(float a10) {
        return new Vector2(this.f79838x / a10, this.f79839y / a10);
    }

    public Vector2 G0(float a10) {
        this.f79838x -= a10;
        this.f79839y -= a10;
        return this;
    }

    public Vector2 H(float x10, float y10) {
        return new Vector2(this.f79838x / x10, this.f79839y / y10);
    }

    public Vector2 H0(float x10, float y10) {
        this.f79838x -= x10;
        this.f79839y -= y10;
        return this;
    }

    public Vector2 I(int a10) {
        float f10 = a10;
        return new Vector2(this.f79838x / f10, this.f79839y / f10);
    }

    public Vector2 I0(Vector2 vector) {
        this.f79838x -= vector.f79838x;
        this.f79839y -= vector.f79839y;
        return this;
    }

    public Vector2 J(Vector2 vector) {
        return new Vector2(this.f79838x / vector.f79838x, this.f79839y / vector.f79839y);
    }

    public Vector2 J0(Vector3 vector) {
        this.f79838x -= vector.getX();
        this.f79839y -= vector.getY();
        return this;
    }

    public Vector2 K(Vector3 vector) {
        return new Vector2(this.f79838x / vector.getX(), this.f79839y / vector.getY());
    }

    public JAVARuntime.Vector2 K0() {
        JAVARuntime.Vector2 vector2 = this.f79837b;
        if (vector2 != null) {
            return vector2;
        }
        JAVARuntime.Vector2 vector22 = new JAVARuntime.Vector2(this);
        this.f79837b = vector22;
        return vector22;
    }

    public float L(float x10, float y10) {
        return (this.f79838x * x10) + (this.f79839y * y10);
    }

    public float N(Vector2 b10) {
        return (this.f79838x * b10.f79838x) + (this.f79839y * b10.f79839y);
    }

    public boolean O(float x10, float y10) {
        return j.b(this, x10, y10);
    }

    public float S() {
        float f10 = this.f79838x;
        float f11 = this.f79839y;
        return Nc.b.q1((f10 * f10) + (f11 * f11));
    }

    public void U(float x10, float y10, float speed) {
        if (speed != 0.0f) {
            Nc.b.N0(this.f79838x, x10, speed);
            Nc.b.N0(this.f79839y, y10, speed);
        }
    }

    public void V(Vector2 to, float speed) {
        if (to == null || speed == 0.0f) {
            return;
        }
        this.f79838x = Nc.b.N0(this.f79838x, to.f79838x, speed);
        this.f79839y = Nc.b.N0(this.f79839y, to.f79839y, speed);
    }

    public void W(float a10, float speed) {
        this.f79838x = Nc.b.N0(this.f79838x, a10, speed);
        this.f79839y = Nc.b.N0(this.f79839y, a10, speed);
    }

    public void X(float x10, float y10, float speed) {
        this.f79838x = Nc.b.N0(this.f79838x, x10, speed);
        this.f79839y = Nc.b.N0(this.f79839y, y10, speed);
    }

    public void Y(Vector2 to, float speed) {
        this.f79838x = Nc.b.N0(this.f79838x, to.f79838x, speed);
        this.f79839y = Nc.b.N0(this.f79839y, to.f79839y, speed);
    }

    public Vector2 Z(float a10) {
        this.f79838x *= a10;
        this.f79839y *= a10;
        return this;
    }

    public Vector2 a0(float x10, float y10) {
        this.f79838x *= x10;
        this.f79839y *= y10;
        return this;
    }

    public Vector2 b0(Vector2 vector3) {
        this.f79838x *= vector3.f79838x;
        this.f79839y *= vector3.f79839y;
        return this;
    }

    public void blendLocal(float a10, float blend) {
        this.f79838x = Nc.b.z(this.f79838x, a10, blend);
        this.f79839y = Nc.b.z(this.f79839y, a10, blend);
    }

    public Vector2 c0(Vector3 vector) {
        this.f79838x *= vector.getX();
        this.f79839y *= vector.getY();
        return this;
    }

    public Vector2 d(float a10) {
        return new Vector2(this.f79838x + a10, this.f79839y + a10);
    }

    public Vector2 d0(float a10) {
        return new Vector2(this.f79838x * a10, this.f79839y * a10);
    }

    public float distance(Vector2 target) {
        return (float) Math.sqrt(Math.pow(this.f79838x - target.f79838x, 2.0d) + Math.pow(this.f79839y - target.f79839y, 2.0d));
    }

    public float dot(float a10) {
        return (this.f79838x * a10) + (this.f79839y * a10);
    }

    public Vector2 e(float x10, float y10) {
        return new Vector2(this.f79838x + x10, this.f79839y + y10);
    }

    public Vector2 e0(float x10, float y10) {
        return new Vector2(this.f79838x * x10, this.f79839y * y10);
    }

    public boolean equally(Vector2 vector) {
        return j.c(this, vector);
    }

    public Vector2 f(float x10, float y10, Vector2 out) {
        out.w0(this.f79838x + x10, this.f79839y + y10);
        return out;
    }

    public Vector2 f0(float a10, Vector2 out) {
        out.w0(this.f79838x * a10, this.f79839y * a10);
        return out;
    }

    public Vector2 g0(Vector2 vector) {
        return new Vector2(this.f79838x * vector.f79838x, this.f79839y * vector.f79839y);
    }

    public float get(int idx) {
        if (idx == 0) {
            return getX();
        }
        if (idx == 1) {
            return getY();
        }
        throw new IndexOutOfBoundsException();
    }

    public float getX() {
        return this.f79838x;
    }

    public float getY() {
        return this.f79839y;
    }

    public Vector2 h(float a10, Vector2 out) {
        out.w0(this.f79838x + a10, this.f79839y + a10);
        return out;
    }

    public Vector2 h0(Vector3 vector) {
        return new Vector2(this.f79838x * vector.getX(), this.f79839y * vector.getY());
    }

    public Vector2 i(int a10) {
        float f10 = a10;
        return new Vector2(this.f79838x + f10, this.f79839y + f10);
    }

    public Vector2 i0(Vector3 vector, Vector2 out) {
        out.w0(this.f79838x * vector.getX(), this.f79839y * vector.getY());
        return out;
    }

    public Vector2 j(Vector2 Vector2) {
        return new Vector2(this.f79838x + Vector2.f79838x, this.f79839y + Vector2.f79839y);
    }

    public Vector2 j0() {
        float S10 = S();
        return S10 > 0.0f ? new Vector2(this.f79838x / S10, this.f79839y / S10) : new Vector2();
    }

    public Vector2 k(Vector2 Vector2, Vector2 out) {
        out.w0(this.f79838x + Vector2.f79838x, this.f79839y + Vector2.f79839y);
        return out;
    }

    public Vector2 k0() {
        float S10 = S();
        if (S10 > 0.0f) {
            this.f79838x /= S10;
            this.f79839y /= S10;
        } else {
            this.f79838x = 0.0f;
            this.f79839y = 0.0f;
        }
        return this;
    }

    public Vector2 l(Vector3 vector) {
        return new Vector2(this.f79838x + vector.getX(), this.f79839y + vector.getY());
    }

    public Vector2 l0(float a10) {
        return new Vector2(this.f79838x - a10, this.f79839y - a10);
    }

    public float lengthF() {
        float f10 = this.f79838x;
        float f11 = this.f79839y;
        return Nc.b.q1((f10 * f10) + (f11 * f11));
    }

    public Vector2 m(float a10) {
        this.f79838x += a10;
        this.f79839y += a10;
        return this;
    }

    public Vector2 m0(float x10, float y10) {
        return new Vector2(this.f79838x - x10, this.f79839y - y10);
    }

    public Vector2 n(float x10, float y10) {
        this.f79838x += x10;
        this.f79839y += y10;
        return this;
    }

    public Vector2 n0(float x10, float y10, Vector2 out) {
        out.w0(this.f79838x - x10, this.f79839y - y10);
        return out;
    }

    public Vector2 o(Vector2 vector3) {
        this.f79838x += vector3.f79838x;
        this.f79839y += vector3.f79839y;
        return this;
    }

    public Vector2 o0(float a10, Vector2 out) {
        out.w0(this.f79838x - a10, this.f79839y - a10);
        return out;
    }

    public Vector2 p(Vector2 vector, float multiplier) {
        this.f79838x += vector.f79838x * multiplier;
        this.f79839y += vector.f79839y * multiplier;
        return this;
    }

    public Vector2 p0(int a10) {
        float f10 = a10;
        return new Vector2(this.f79838x - f10, this.f79839y - f10);
    }

    public Vector2 q(Vector3 vector3) {
        this.f79838x += vector3.getX();
        this.f79839y += vector3.getY();
        return this;
    }

    public Vector2 q0(Vector2 vector) {
        return new Vector2(this.f79838x - vector.f79838x, this.f79839y - vector.f79839y);
    }

    public Vector2 r(float a10, float blend) {
        return new Vector2(Nc.b.z(this.f79838x, a10, blend), Nc.b.z(this.f79839y, a10, blend));
    }

    public Vector2 r0(Vector2 vector, Vector2 out) {
        out.w0(this.f79838x - vector.f79838x, this.f79839y - vector.f79839y);
        return out;
    }

    public Vector2 s(float x10, float y10, float blend) {
        return new Vector2(Nc.b.z(this.f79838x, x10, blend), Nc.b.z(this.f79839y, y10, blend));
    }

    public Vector2 s0(Vector3 vector) {
        return new Vector2(this.f79838x - vector.getX(), this.f79839y - vector.getY());
    }

    public void setFromIndex(float value, int idx) {
        if (idx == 0) {
            B0(value);
        } else if (idx != 1) {
            return;
        }
        C0(value);
    }

    public float sqrtLength() {
        float f10 = this.f79838x;
        float f11 = this.f79839y;
        return (f10 * f10) + (f11 * f11);
    }

    public void t0(Vector2 pivot, float angle) {
        float x10 = getX() - pivot.getX();
        float y10 = getY() - pivot.getY();
        w0(((Nc.b.d0(angle) * x10) - (Nc.b.m1(angle) * y10)) + pivot.getX(), (x10 * Nc.b.m1(angle)) + (y10 * Nc.b.d0(angle)) + pivot.getY());
    }

    public String toJson() {
        X7.a aVar = W7.b.f27305e;
        return X7.a.m().toJson(this);
    }

    public String toString() {
        return "(" + this.f79838x + DocLint.SEPARATOR + this.f79839y + ")";
    }

    public Vector2 u(Vector2 to, float blend) {
        return new Vector2(Nc.b.z(this.f79838x, to.f79838x, blend), Nc.b.z(this.f79839y, to.f79839y, blend));
    }

    public void u0(float angle) {
        float d02 = Nc.b.d0(angle);
        float m12 = Nc.b.m1(angle);
        float f10 = this.f79838x;
        float f11 = this.f79839y;
        w0((f10 * d02) - (f11 * m12), (f10 * m12) + (f11 * d02));
    }

    public void v(float x10, float y10, float blend) {
        this.f79838x = Nc.b.z(this.f79838x, x10, blend);
        this.f79839y = Nc.b.z(this.f79839y, y10, blend);
    }

    public void v0(float a10) {
        this.f79838x = a10;
        this.f79839y = a10;
    }

    public void w(Vector2 to, float blend) {
        this.f79838x = Nc.b.z(this.f79838x, to.f79838x, blend);
        this.f79839y = Nc.b.z(this.f79839y, to.f79839y, blend);
    }

    public void w0(float x10, float y10) {
        this.f79838x = x10;
        this.f79839y = y10;
    }

    public Vector2 clone() {
        return new Vector2(this.f79838x, this.f79839y);
    }

    public void x0(Vector2 vec2) {
        this.f79838x = vec2.f79838x;
        this.f79839y = vec2.f79839y;
    }

    public void y0(javax.vecmath.Vector2f v10) {
        this.f79838x = v10.f92826x;
        this.f79839y = v10.f92827y;
    }

    public Vector3 z(float x10, float y10) {
        return new Vector3(new Vector2f(this.f79838x, this.f79839y).cross(new Vector2f(x10, y10)));
    }

    public void z0(JAVARuntime.Vector2 run) {
        this.f79837b = run;
    }

    public Vector2(float a10) {
        this.f79839y = a10;
        this.f79838x = a10;
    }

    public float distance(float x10, float y10) {
        return (float) Math.sqrt(Math.pow(this.f79838x - x10, 2.0d) + Math.pow(this.f79839y - y10, 2.0d));
    }

    public boolean equally(Vector3 vector) {
        return j.d(this, vector);
    }

    public String toString(int decimals) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(");
        Locale locale = Locale.US;
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(this.f79838x)));
        sb2.append(", ");
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(this.f79839y)));
        sb2.append(")");
        return sb2.toString();
    }

    public Vector2(float x10, float y10) {
        this.f79838x = x10;
        this.f79839y = y10;
    }

    public boolean equally(float a10) {
        return j.a(this, a10);
    }

    public Vector2(Vector2 vector2) {
        this.f79838x = vector2.f79838x;
        this.f79839y = vector2.f79839y;
    }
}
