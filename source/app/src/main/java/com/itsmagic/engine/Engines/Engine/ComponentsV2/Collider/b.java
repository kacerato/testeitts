package com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.ExposableLayerReference;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import i9.C13592a;
import java.util.List;

public class b {

    public final Collider.o f73289a;

    public final C13592a f73290b;

    public final f f73291c;

    public final Transform f73292d;

    public final Collider f73293e;

    public final List<W8.b> f73294f;

    public boolean f73295g;

    public final CompoundCollisionShape f73296h;

    public b(Collider.o type, List<W8.b> shapeList, f matrix4, Transform bulletTransform, Collider collider) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f73294f = steppedArrayList;
        this.f73295g = false;
        this.f73289a = type;
        this.f73292d = bulletTransform;
        this.f73293e = collider;
        this.f73291c = matrix4;
        steppedArrayList.addAll(shapeList);
        this.f73296h = new CompoundCollisionShape();
        for (int i10 = 0; i10 < this.f73294f.size(); i10++) {
            try {
                try {
                    W8.b bVar = this.f73294f.get(i10);
                    CollisionShape b10 = bVar.b();
                    if (!bVar.d()) {
                        if (type == Collider.o.Sphere) {
                            float S02 = Nc.b.S0(matrix4.w1(), Nc.b.S0(matrix4.y1(), matrix4.A1()));
                            try {
                                b10.setScale(new Vector3f(S02, S02, S02));
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        } else if (type == Collider.o.Capsule) {
                            float X02 = Nc.b.X0(matrix4.w1(), Nc.b.X0(matrix4.y1(), matrix4.A1()));
                            try {
                                b10.setScale(new Vector3f(X02, X02, X02));
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                        } else {
                            try {
                                b10.setScale(new Vector3f(matrix4.w1(), matrix4.y1(), matrix4.A1()));
                            } catch (Exception e12) {
                                e12.printStackTrace();
                            }
                        }
                    }
                    b10.setUserIndex(collider.hashCode());
                    this.f73296h.addChildShape(b10, new Transform());
                } catch (RuntimeException e13) {
                    e = e13;
                    h();
                    throw e;
                }
            } catch (Error e14) {
                e = e14;
                h();
                throw e;
            }
        }
        this.f73290b = new C13592a(this.f73296h, collider);
        this.f73296h.setUserIndex(collider.hashCode());
        this.f73295g = true;
    }

    public void a(GameObject gameObject) {
        this.f73290b.d(this.f73293e.f79250n);
    }

    public void b() {
        try {
            this.f73290b.f(this.f73293e.f79250n);
            h();
            this.f73295g = false;
        } catch (Throwable th2) {
            h();
            throw th2;
        }
    }

    public void c(GameObject gameObject) {
        this.f73290b.f(this.f73293e.f79250n);
    }

    public float d() {
        C13592a c13592a = this.f73290b;
        if (c13592a == null) {
            return 0.0f;
        }
        return c13592a.g();
    }

    public CompoundCollisionShape e() {
        return this.f73296h;
    }

    public float f() {
        C13592a c13592a = this.f73290b;
        if (c13592a == null) {
            return 0.0f;
        }
        return c13592a.j();
    }

    public boolean g() {
        return this.f73295g;
    }

    public final void h() {
        for (int i10 = 0; i10 < this.f73294f.size(); i10++) {
            W8.b bVar = this.f73294f.get(i10);
            if (bVar != null) {
                bVar.e();
            }
        }
        this.f73294f.clear();
    }

    public void i(float bounciness) {
        C13592a c13592a = this.f73290b;
        if (c13592a == null) {
            return;
        }
        c13592a.m(bounciness);
    }

    public void j(float friction) {
        C13592a c13592a = this.f73290b;
        if (c13592a == null) {
            return;
        }
        c13592a.n(friction);
    }

    public void k(ExposableLayerReference layerReference) {
        C13592a c13592a = this.f73290b;
        if (c13592a == null) {
            return;
        }
        c13592a.o(layerReference);
    }

    public void l(GameObject gameObject) {
        this.f73290b.q(this.f73293e.f79250n);
    }
}
