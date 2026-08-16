package com.itsmagic.engine.Engines.Engine.Animation;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class Frame {

    @Expose
    private float arg;

    @Expose
    private ColorINT colorValue;

    @Expose
    private Curve easingCurve;

    @Expose
    private String event;

    @Expose
    private float floatValue;

    @Expose
    private int frameTime;

    @Expose
    private String imageValue;

    @Expose
    private int intValue;

    @Expose
    private boolean interpolateEvent = false;

    @Expose
    private Quaternion quatValue;

    @Expose
    private Square5I square5Value;

    @Expose
    private Vector2 vec2Value;

    @Expose
    private Vector3 vec3Value;

    public Frame() {
        Curve curve = new Curve(N7.c.t());
        this.easingCurve = curve;
        curve.clear();
        this.easingCurve.f(0.0f, 0.0f);
        this.easingCurve.f(0.25f, 0.2f);
        this.easingCurve.f(0.75f, 0.8f);
        this.easingCurve.f(1.0f, 1.0f);
        this.easingCurve.apply();
    }

    public static Square5I F(Frame frame) {
        if (frame == null) {
            return null;
        }
        return frame.square5Value;
    }

    public static Vector2 G(Frame frame) {
        if (frame == null) {
            return null;
        }
        return frame.vec2Value;
    }

    public static Vector3 H(Frame frame) {
        if (frame == null) {
            return null;
        }
        return frame.vec3Value;
    }

    public static ColorINT a(Frame frame) {
        if (frame == null) {
            return null;
        }
        return frame.colorValue;
    }

    public static float c(Frame frame) {
        if (frame == null) {
            return 0.0f;
        }
        return frame.floatValue;
    }

    public static String p(Frame frame) {
        if (frame == null) {
            return null;
        }
        return frame.imageValue;
    }

    public static int q(Frame frame) {
        if (frame == null) {
            return 0;
        }
        return frame.intValue;
    }

    public static Quaternion s(Frame frame) {
        if (frame == null) {
            return null;
        }
        return frame.quatValue;
    }

    public void A(boolean interpolateEvent) {
        this.interpolateEvent = interpolateEvent;
    }

    public void B(Quaternion quatValue) {
        this.quatValue = quatValue;
    }

    public void C(Square5I square5Value) {
        this.square5Value = square5Value;
    }

    public void D(Vector2 vec2Value) {
        this.vec2Value = vec2Value;
    }

    public void E(Vector3 vec3Value) {
        this.vec3Value = vec3Value;
    }

    public Frame b() {
        Frame frame = new Frame();
        frame.frameTime = this.frameTime;
        frame.floatValue = this.floatValue;
        frame.intValue = this.intValue;
        frame.colorValue = this.colorValue;
        frame.vec3Value = this.vec3Value;
        frame.vec2Value = this.vec2Value;
        frame.quatValue = this.quatValue;
        frame.square5Value = this.square5Value;
        frame.imageValue = this.imageValue;
        return frame;
    }

    public float d() {
        return this.arg;
    }

    public ColorINT e() {
        return this.colorValue;
    }

    public Curve f() {
        return this.easingCurve;
    }

    public String g() {
        return this.event;
    }

    public float h() {
        return this.floatValue;
    }

    public int i() {
        return this.frameTime;
    }

    public String j() {
        return this.imageValue;
    }

    public int k() {
        return this.intValue;
    }

    public Quaternion l() {
        return this.quatValue;
    }

    public Square5I m() {
        return this.square5Value;
    }

    public Vector2 n() {
        return this.vec2Value;
    }

    public Vector3 o() {
        return this.vec3Value;
    }

    public boolean r() {
        return this.interpolateEvent;
    }

    public void t(float arg) {
        this.arg = arg;
    }

    public void u(ColorINT colorValue) {
        this.colorValue = colorValue;
    }

    public void v(String event) {
        this.event = event;
    }

    public void w(float floatValue) {
        this.floatValue = floatValue;
    }

    public void x(int frameTime) {
        this.frameTime = frameTime;
    }

    public void y(String imageValue) {
        this.imageValue = imageValue;
    }

    public void z(int intValue) {
        this.intValue = intValue;
    }
}
