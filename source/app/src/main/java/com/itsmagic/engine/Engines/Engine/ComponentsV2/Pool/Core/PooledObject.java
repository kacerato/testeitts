package com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.Core;

import Ic.C2634m;
import Nc.d;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import eb.f;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

public class PooledObject extends C2634m {

    public static final int f74686k = 0;

    public static final int f74687l = 1;

    public static final int f74688m = 2;

    public static final int f74689n = 3;

    public static final AtomicIntegerFieldUpdater<PooledObject> f74690o = AtomicIntegerFieldUpdater.newUpdater(PooledObject.class, "d");

    public static final AtomicIntegerFieldUpdater<PooledObject> f74691p = AtomicIntegerFieldUpdater.newUpdater(PooledObject.class, "g");

    public final int f74692b = d.c();

    public transient a f74693c;

    public volatile transient int f74694d;

    public volatile transient PooledObject f74695e;

    public volatile transient int f74696g;

    public volatile transient PooledObject f74697i;

    public JAVARuntime.PooledObject f74698j;

    @Expose
    @f
    private final float[] f74699v;

    public interface a {
        void a(PooledObject object);
    }

    public PooledObject() {
        float[] fArr = new float[7];
        this.f74699v = fArr;
        fArr[6] = 1.0f;
    }

    public int A() {
        return f74690o.getAndSet(this, 0);
    }

    public int B() {
        return f74691p.getAndSet(this, 0);
    }

    public JAVARuntime.PooledObject C() {
        JAVARuntime.PooledObject pooledObject = this.f74698j;
        if (pooledObject != null) {
            return pooledObject;
        }
        JAVARuntime.PooledObject pooledObject2 = new JAVARuntime.PooledObject(this);
        this.f74698j = pooledObject2;
        return pooledObject2;
    }

    public PooledObject e() {
        PooledObject pooledObject = new PooledObject();
        float[] fArr = pooledObject.f74699v;
        float[] fArr2 = this.f74699v;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = fArr2[2];
        fArr[3] = fArr2[3];
        fArr[4] = fArr2[4];
        fArr[5] = fArr2[5];
        fArr[6] = fArr2[6];
        return pooledObject;
    }

    public PooledObject f() {
        PooledObject pooledObject = this.f74695e;
        this.f74695e = null;
        return pooledObject;
    }

    public int getId() {
        return this.f74692b;
    }

    public float getScale() {
        return this.f74699v[6];
    }

    public PooledObject h() {
        PooledObject pooledObject = this.f74697i;
        this.f74697i = null;
        return pooledObject;
    }

    public float i() {
        return this.f74699v[0];
    }

    public float j() {
        return this.f74699v[1];
    }

    public float k() {
        return this.f74699v[2];
    }

    public Vector3 l() {
        float[] fArr = this.f74699v;
        return new Vector3(fArr[0], fArr[1], fArr[2]);
    }

    public Vector3 m(Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        float[] fArr = this.f74699v;
        out.set(fArr[0], fArr[1], fArr[2]);
        return out;
    }

    public Quaternion n() {
        float[] fArr = this.f74699v;
        return Quaternion.n(fArr[3], fArr[4], fArr[5]);
    }

    public Quaternion o(Quaternion out) {
        if (out == null) {
            out = new Quaternion();
        }
        float[] fArr = this.f74699v;
        out.v(fArr[3], fArr[4], fArr[5]);
        return out;
    }

    public boolean p(int requestedChange) {
        AtomicIntegerFieldUpdater<PooledObject> atomicIntegerFieldUpdater;
        int i10;
        int i11;
        do {
            atomicIntegerFieldUpdater = f74690o;
            i10 = atomicIntegerFieldUpdater.get(this);
            i11 = requestedChange != 3 ? requestedChange == 1 ? 1 : i10 == 0 ? 2 : i10 : 3;
            if (i11 == i10) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, i11));
        return i10 == 0;
    }

    public boolean q(int requestedChange) {
        AtomicIntegerFieldUpdater<PooledObject> atomicIntegerFieldUpdater;
        int i10;
        int i11;
        do {
            atomicIntegerFieldUpdater = f74691p;
            i10 = atomicIntegerFieldUpdater.get(this);
            i11 = requestedChange != 3 ? requestedChange == 1 ? 1 : i10 == 0 ? 2 : i10 : 3;
            if (i11 == i10) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, i11));
        return i10 == 0;
    }

    public final void r() {
        a aVar = this.f74693c;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void s(a changeListener) {
        this.f74693c = changeListener;
    }

    public void setScale(float scale) {
        if (Float.compare(this.f74699v[6], scale) == 0) {
            return;
        }
        this.f74699v[6] = scale;
        r();
    }

    public void u(float f10) {
        if (Float.compare(this.f74699v[1], f10) == 0) {
            return;
        }
        this.f74699v[1] = f10;
        r();
    }

    public void v(PooledObject next) {
        this.f74695e = next;
    }

    public void w(PooledObject next) {
        this.f74697i = next;
    }

    public void x(Vector3 pos) {
        if (Float.compare(this.f74699v[0], pos.getX()) == 0 && Float.compare(this.f74699v[1], pos.getY()) == 0 && Float.compare(this.f74699v[2], pos.getZ()) == 0) {
            return;
        }
        this.f74699v[0] = pos.getX();
        this.f74699v[1] = pos.getY();
        this.f74699v[2] = pos.getZ();
        r();
    }

    public void y(Quaternion rot) {
        float D10 = rot.D();
        float E10 = rot.E();
        float F10 = rot.F();
        if (Float.compare(this.f74699v[3], D10) == 0 && Float.compare(this.f74699v[4], E10) == 0 && Float.compare(this.f74699v[5], F10) == 0) {
            return;
        }
        float[] fArr = this.f74699v;
        fArr[3] = D10;
        fArr[4] = E10;
        fArr[5] = F10;
        r();
    }

    public void z(JAVARuntime.PooledObject run) {
        this.f74698j = run;
    }

    public PooledObject(Vector3 pos, Quaternion rot, float scale) {
        this.f74699v = r0;
        float[] fArr = {pos.getX(), pos.getY(), pos.getZ(), rot.D(), rot.E(), rot.F(), scale};
    }
}
