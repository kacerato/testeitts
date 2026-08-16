package com.itsmagic.engine.Engines.Engine.Color;

import JAVARuntime.Color;
import K8.f;
import Nc.b;
import Nc.d;
import X7.a;
import androidx.annotation.NonNull;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import java.io.Serializable;
import w2.C15883c;
import yd.C16181m;

public class ColorINT extends f implements Serializable {

    public static final ColorINT f72629c = new ColorINT();

    public static final ColorINT f72630d = new ColorINT();

    public static final ColorINT f72631e = new ColorINT();

    public Color f72632b;

    @Expose
    public int intColor;

    public ColorINT(int intColor) {
        this.intColor = intColor;
    }

    public static ColorINT I() {
        return new ColorINT(d.h(0.0f, 1.0f), d.h(0.0f, 1.0f), d.h(0.0f, 1.0f));
    }

    public static ColorINT d() {
        ColorINT colorINT = f72630d;
        colorINT.T(1.0f, 0.0f, 0.0f, 0.0f);
        return colorINT;
    }

    public static ColorINT g0() {
        ColorINT colorINT = f72631e;
        colorINT.T(0.0f, 0.0f, 0.0f, 0.0f);
        return colorINT;
    }

    public static ColorINT h0() {
        ColorINT colorINT = f72629c;
        colorINT.T(1.0f, 1.0f, 1.0f, 1.0f);
        return colorINT;
    }

    public static ColorINT k(ColorINT color) {
        if (color != null) {
            return color.clone();
        }
        return null;
    }

    public static ColorINT l(String json) {
        try {
            return (ColorINT) a.m().fromJson(json, ColorINT.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static ColorINT m(String str) {
        if (str == null) {
            return null;
        }
        try {
            if (str.isEmpty()) {
                return null;
            }
            String[] split = str.replace(" ", "/").replace(C15883c.f126249O, '/').split("/");
            if (split.length == 3) {
                return new ColorINT(b.u1(split[0]), b.u1(split[1]), b.u1(split[2]));
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String A(boolean RemoveAlpha, boolean RemoveHash) {
        if (RemoveAlpha) {
            return RemoveHash ? String.format("%06X", Integer.valueOf(16777215 & this.intColor)) : String.format("#%06X", Integer.valueOf(16777215 & this.intColor));
        }
        if (!RemoveHash) {
            return Integer.toHexString(this.intColor);
        }
        return C16181m.f130230g + Integer.toHexString(this.intColor);
    }

    public String B() {
        return "( " + C() + " , " + x() + " , " + p() + " )";
    }

    public int C() {
        return android.graphics.Color.red(this.intColor);
    }

    public ColorINT D(float r10, float g10, float b10, float a10, float speed) {
        if (speed == 0.0f) {
            return clone();
        }
        ColorINT colorINT = new ColorINT();
        colorINT.K(this);
        colorINT.F(r10, g10, b10, a10, speed);
        return colorINT;
    }

    public ColorINT E(ColorINT to, float speed) {
        if (speed == 0.0f) {
            return clone();
        }
        ColorINT colorINT = new ColorINT();
        colorINT.K(this);
        colorINT.G(to, speed);
        return colorINT;
    }

    public void F(float r10, float g10, float b10, float a10, float speed) {
        if (speed != 0.0f) {
            T(b.N0(r(), a10, speed), b.N0(w(), r10, speed), b.N0(u(), g10, speed), b.N0(s(), b10, speed));
        }
    }

    public void G(ColorINT to, float speed) {
        if (speed != 0.0f) {
            T(b.N0(r(), to.r(), speed), b.N0(w(), to.w(), speed), b.N0(u(), to.u(), speed), b.N0(s(), to.s(), speed));
        }
    }

    public void H(ColorINT color) {
        T(r() * color.r(), w() * color.w(), u() * color.u(), s() * color.s());
    }

    public ColorINT J(int newColor) {
        this.intColor = newColor;
        return this;
    }

    public void K(ColorINT colorINT) {
        this.intColor = colorINT.intColor;
    }

    public void L(int a10) {
        this.intColor = android.graphics.Color.argb(b.F(0, a10, 255), C(), x(), p());
    }

    public void M(int b10) {
        this.intColor = android.graphics.Color.argb(o(), C(), x(), b.F(0, b10, 255));
    }

    public void N(float a10) {
        this.intColor = android.graphics.Color.argb((int) (b.I(a10) * 255.0f), C(), x(), p());
    }

    public void O(float b10) {
        this.intColor = android.graphics.Color.argb(o(), C(), x(), (int) (b.I(b10) * 255.0f));
    }

    public void P(float g10) {
        this.intColor = android.graphics.Color.argb(o(), C(), (int) (b.I(g10) * 255.0f), p());
    }

    public void Q(float r10) {
        this.intColor = android.graphics.Color.argb(o(), (int) (b.I(r10) * 255.0f), x(), p());
    }

    public void S(float r10, float g10, float b10) {
        this.intColor = android.graphics.Color.argb(o(), (int) (b.I(r10) * 255.0f), (int) (b.I(g10) * 255.0f), (int) (b.I(b10) * 255.0f));
    }

    public void T(float a10, float r10, float g10, float b10) {
        this.intColor = android.graphics.Color.argb((int) (b.I(a10) * 255.0f), (int) (b.I(r10) * 255.0f), (int) (b.I(g10) * 255.0f), (int) (b.I(b10) * 255.0f));
    }

    public void U(int g10) {
        this.intColor = android.graphics.Color.argb(o(), C(), b.F(0, g10, 255), p());
    }

    public void V(String hex) {
        try {
            this.intColor = android.graphics.Color.parseColor(hex);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void W() {
        T(1.0f, 1.0f, 1.0f, 1.0f);
    }

    public void X(int r10, int g10, int b10) {
        this.intColor = android.graphics.Color.argb(o(), b.F(0, r10, 255), b.F(0, g10, 255), b.F(0, b10, 255));
    }

    public void Y(int a10, int r10, int g10, int b10) {
        this.intColor = android.graphics.Color.argb(b.F(0, a10, 255), b.F(0, r10, 255), b.F(0, g10, 255), b.F(0, b10, 255));
    }

    public void Z(float r10, float g10, float b10, float a10) {
        this.intColor = android.graphics.Color.argb((int) (b.I(a10) * 255.0f), (int) (b.I(r10) * 255.0f), (int) (b.I(g10) * 255.0f), (int) (b.I(b10) * 255.0f));
    }

    public void a0() {
        S(d.h(0.0f, 1.0f), d.h(0.0f, 1.0f), d.h(0.0f, 1.0f));
    }

    public void b0(int r10) {
        this.intColor = android.graphics.Color.argb(o(), b.F(0, r10, 255), x(), p());
    }

    public void c0(Color run) {
        this.f72632b = run;
    }

    public float[] d0() {
        return new float[]{w(), u(), s()};
    }

    public ColorINT e(float r10, float g10, float b10, float a10, float blend) {
        ColorINT colorINT = new ColorINT();
        colorINT.K(this);
        float E10 = b.E(0.0f, blend, 1.0f);
        colorINT.K(this);
        colorINT.h(r10, g10, b10, a10, E10);
        return colorINT;
    }

    public Color e0() {
        Color color = this.f72632b;
        if (color != null) {
            return color;
        }
        Color color2 = new Color(this);
        this.f72632b = color2;
        return color2;
    }

    public ColorINT f(ColorINT other, float blend) {
        ColorINT colorINT = new ColorINT();
        colorINT.K(this);
        float E10 = b.E(0.0f, blend, 1.0f);
        colorINT.K(this);
        colorINT.i(other, E10);
        return colorINT;
    }

    public String f0() {
        return "(" + o() + ", " + C() + ", " + x() + ", " + p() + ")";
    }

    public void h(float r10, float g10, float b10, float a10, float blend) {
        float E10 = b.E(0.0f, blend, 1.0f);
        T(b.z(r(), a10, E10), b.z(w(), r10, E10), b.z(u(), g10, E10), b.z(s(), b10, E10));
    }

    public void i(ColorINT to, float blend) {
        float E10 = b.E(0.0f, blend, 1.0f);
        T(b.z(r(), to.r(), E10), b.z(w(), to.w(), E10), b.z(u(), to.u(), E10), b.z(s(), to.s(), E10));
    }

    public ColorINT clone() {
        return new ColorINT(this.intColor);
    }

    public String n() {
        return "( " + o() + " , " + C() + " , " + x() + " , " + p() + " )";
    }

    public int o() {
        return android.graphics.Color.alpha(this.intColor);
    }

    public int p() {
        return android.graphics.Color.blue(this.intColor);
    }

    public String q() {
        return "( " + r() + " , " + w() + " , " + u() + " , " + s() + " )";
    }

    public float r() {
        return o() / 255.0f;
    }

    public float s() {
        return p() / 255.0f;
    }

    public void setFromIndex(float value, int idx) {
        if (idx == 0) {
            Q(value);
        } else if (idx != 1) {
            if (idx != 2) {
                if (idx != 3) {
                    return;
                }
                N(value);
            }
            O(value);
            N(value);
        }
        P(value);
        O(value);
        N(value);
    }

    public String toJson() {
        return a.m().toJson(this);
    }

    @NonNull
    public String toString() {
        return "(" + r() + ", " + w() + ", " + u() + ", " + s() + ")";
    }

    public float u() {
        return x() / 255.0f;
    }

    public String v() {
        return "( " + w() + " , " + u() + " , " + s() + " )";
    }

    public float w() {
        return C() / 255.0f;
    }

    public int x() {
        return android.graphics.Color.green(this.intColor);
    }

    public String y() {
        return C16181m.f130230g + Integer.toHexString(this.intColor);
    }

    public String z(boolean RemoveAlpha) {
        if (RemoveAlpha) {
            return String.format("#%06X", Integer.valueOf(16777215 & this.intColor));
        }
        return C16181m.f130230g + Integer.toHexString(this.intColor);
    }

    public ColorINT() {
        this.intColor = android.graphics.Color.argb(255, 255, 255, 255);
    }

    public ColorINT(int a10, int r10, int g10, int b10) {
        this.intColor = android.graphics.Color.argb(a10, r10, g10, b10);
    }

    public ColorINT(int r10, int g10, int b10) {
        this.intColor = android.graphics.Color.argb(255, r10, g10, b10);
    }

    public ColorINT(int a10, int rgb) {
        this.intColor = android.graphics.Color.argb(a10, rgb, rgb, rgb);
    }

    public ColorINT(float a10, float r10, float g10, float b10) {
        this.intColor = android.graphics.Color.argb((int) (a10 * 255.0f), (int) (r10 * 255.0f), (int) (g10 * 255.0f), (int) (b10 * 255.0f));
    }

    public ColorINT(float r10, float g10, float b10) {
        this.intColor = android.graphics.Color.argb(255, (int) (r10 * 255.0f), (int) (g10 * 255.0f), (int) (b10 * 255.0f));
    }

    public ColorINT(String hex) {
        V(hex);
    }
}
