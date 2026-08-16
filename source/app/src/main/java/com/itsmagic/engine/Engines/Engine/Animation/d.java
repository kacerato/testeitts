package com.itsmagic.engine.Engines.Engine.Animation;

import JAVARuntime.Animation;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import ge.V;

public class d extends K8.f {

    public String f72604b;

    public String f72605c;

    public final Vector3 f72606d = new Vector3();

    public final Vector3 f72607e = new Vector3();

    public float f72608g = 0.0f;

    public boolean f72609i = false;

    public float f72610j = 1.0f;

    public boolean f72611k = false;

    public float f72612l = 1.0f;

    public final V f72613m = new V();

    public final AnimationData f72614n;

    public AnimationMask f72615o;

    public int f72616p;

    public Animation f72617q;

    public d(AnimationData data, String file) {
        this.f72604b = file;
        this.f72614n = data;
        this.f72616p = data != null ? data.i() : Nc.d.c();
    }

    public L8.b d(GameObject gameObject) {
        return e(gameObject, null);
    }

    public L8.b e(GameObject gameObject, MiniJP mjp) {
        String g10;
        L8.b l10 = L8.a.l(this.f72614n, (int) this.f72608g, mjp);
        l10.f(this.f72615o);
        for (int i10 = 0; i10 < l10.a().size(); i10++) {
            L8.c cVar = l10.a().get(i10);
            if (!cVar.v() && (g10 = cVar.g()) != null && !g10.trim().isEmpty()) {
                Ac.b j10 = cVar.j();
                if (this.f72613m.E(j10.hashCode()) && this.f72613m.u(j10.hashCode()) == cVar.m()) {
                    cVar.F(null);
                }
                this.f72613m.m7(j10.hashCode(), cVar.m());
            }
        }
        this.f72608g += K8.d.b() * this.f72614n.fps * this.f72610j;
        p();
        return l10;
    }

    public String f() {
        return this.f72604b;
    }

    public String getFile() {
        return this.f72604b;
    }

    public String getName() {
        String str = this.f72604b;
        if (!str.contains("/")) {
            return str;
        }
        String str2 = this.f72604b;
        return str2.substring(str2.lastIndexOf("/") + 1);
    }

    public float getWeight() {
        return this.f72612l;
    }

    public AnimationData h() {
        return this.f72614n;
    }

    public AnimationMask i() {
        return this.f72615o;
    }

    public boolean isLoop() {
        return this.f72611k;
    }

    public boolean isPlaying() {
        return this.f72609i;
    }

    public void j() {
        this.f72613m.clear();
    }

    public void k(GameObject gameObject, int frameTime, L8.e cacheData) {
        l(gameObject, frameTime, cacheData, null);
    }

    public void l(GameObject gameObject, int frameTime, L8.e cacheData, MiniJP mjp) {
        if (C13317e.G(gameObject)) {
            throw new RuntimeException();
        }
        L8.b l10 = L8.a.l(this.f72614n, frameTime, mjp);
        l10.f(this.f72615o);
        L8.a.e(l10, gameObject, cacheData, mjp);
    }

    public void m(AnimationMask mask) {
        this.f72615o = mask;
    }

    public void n() {
        this.f72611k = false;
    }

    public Animation o() {
        Animation animation = this.f72617q;
        if (animation != null) {
            return animation;
        }
        Animation animation2 = new Animation(this);
        this.f72617q = animation2;
        return animation2;
    }

    public final void p() {
        float h10 = this.f72614n.h();
        if (this.f72608g > h10) {
            if (this.f72611k) {
                this.f72608g = 0.0f;
            } else {
                this.f72609i = false;
                this.f72608g = h10;
            }
            j();
        }
        if (this.f72608g < 0.0f) {
            if (this.f72611k) {
                this.f72608g = h10;
            } else {
                this.f72609i = false;
                this.f72608g = 0.0f;
            }
            j();
        }
    }

    public void play() {
        this.f72608g = 0.0f;
        this.f72609i = true;
        this.f72611k = false;
    }

    public void playInLoop() {
        this.f72609i = true;
        this.f72611k = true;
    }

    public void setSpeed(float speed) {
        this.f72610j = speed;
    }

    public void setWeight(float weight) {
        this.f72612l = weight;
    }

    public void stop() {
        this.f72609i = false;
        this.f72611k = false;
        this.f72608g = 0.0f;
    }
}
