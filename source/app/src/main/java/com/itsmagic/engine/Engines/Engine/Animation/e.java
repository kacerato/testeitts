package com.itsmagic.engine.Engines.Engine.Animation;

import JAVARuntime.AnimationTransition;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;

public class e {

    public d f72618a;

    public d f72619b;

    public float f72620c;

    public float f72621d = 0.0f;

    public float f72622e;

    public Curve f72623f;

    public AnimationTransition f72624g;

    public e(d from, d to, float timeRemain, Curve curve) {
        this.f72618a = from;
        this.f72619b = to;
        this.f72620c = timeRemain;
        this.f72622e = timeRemain;
        this.f72623f = curve;
    }

    public Curve a() {
        return this.f72623f;
    }

    public d b() {
        return this.f72618a;
    }

    public float c() {
        return this.f72621d;
    }

    public float d() {
        return this.f72620c;
    }

    public d e() {
        return this.f72619b;
    }

    public float f() {
        return this.f72622e;
    }

    public boolean g() {
        return this.f72620c <= 0.0f || this.f72621d >= 1.0f;
    }

    public AnimationTransition h() {
        AnimationTransition animationTransition = this.f72624g;
        if (animationTransition != null) {
            return animationTransition;
        }
        AnimationTransition animationTransition2 = new AnimationTransition(this);
        this.f72624g = animationTransition2;
        return animationTransition2;
    }

    public L8.b i(GameObject gameObject) {
        return j(gameObject, null);
    }

    public L8.b j(GameObject gameObject, MiniJP mjp) {
        float b10 = K8.d.b();
        this.f72621d += b10 / this.f72622e;
        this.f72620c -= b10;
        this.f72618a.playInLoop();
        this.f72619b.playInLoop();
        Curve curve = this.f72623f;
        float p10 = curve != null ? curve.p(Nc.b.I(this.f72621d)) : this.f72621d;
        L8.b e10 = this.f72618a.e(gameObject, mjp);
        L8.b e11 = this.f72619b.e(gameObject, mjp);
        L8.b f10 = L8.d.f(e10, e11, p10, mjp);
        e10.d(mjp);
        e11.d(mjp);
        if (g()) {
            this.f72618a.stop();
        }
        return f10;
    }
}
