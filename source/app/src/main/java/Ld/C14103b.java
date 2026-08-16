package ld;

import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.d;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector3f;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import vc.n;
import vc.q;

public class C14103b {

    public final Matrix4f f96309a;

    public q f96310b;

    public q f96311c;

    public n f96312d;

    public final Vector3 f96313e;

    public final Vector3f f96314f;

    public final Vector3 f96315g;

    public final Vector3 f96316h;

    public final List<C14102a> f96317i;

    public final List<C14102a> f96318j;

    public C14103b(NativeFloatBuffer verticesBuffer, NativeFloatBuffer normalsBuffer, NativeIntBuffer indicesBuffer, float[] vertexMatrix) {
        Matrix4f matrix4f = new Matrix4f();
        this.f96309a = matrix4f;
        this.f96313e = new Vector3();
        this.f96314f = new Vector3f();
        this.f96315g = new Vector3();
        this.f96316h = new Vector3();
        this.f96317i = new LinkedList();
        this.f96318j = new LinkedList();
        this.f96310b = new q(verticesBuffer);
        if (normalsBuffer != null) {
            this.f96311c = new q(normalsBuffer);
        }
        this.f96312d = new n(indicesBuffer);
        matrix4f.set(vertexMatrix, false);
    }

    public static void a(List<C14102a> vertices, AABB boundingBox) {
        d dVar = new d();
        dVar.f79868p = true;
        for (int i10 = 0; i10 < vertices.size(); i10++) {
            C14102a c14102a = vertices.get(i10);
            dVar.x(c14102a.f96304a.getX(), c14102a.f96304a.getY(), c14102a.f96304a.getZ());
        }
        dVar.d();
        boundingBox.r(dVar);
    }

    public void b() {
        this.f96317i.clear();
        this.f96318j.clear();
    }

    public List<C14102a> c(Vector3 lookingPos, List<C14102a> picked, float distance, float maxDistanceMultiplayer) {
        if (!picked.isEmpty()) {
            LinkedList linkedList = new LinkedList();
            for (int i10 = 0; i10 < picked.size(); i10++) {
                C14102a c14102a = picked.get(i10);
                if (c14102a.d().distance(lookingPos) >= distance * maxDistanceMultiplayer) {
                    linkedList.add(c14102a);
                }
            }
            picked.removeAll(linkedList);
            linkedList.clear();
        }
        return picked;
    }

    public List<C14102a> d(Vector3 lookingPos, List<C14102a> picked, float maxDistanceMultiplayer) {
        if (!picked.isEmpty()) {
            C14102a e10 = e(lookingPos, picked);
            float distance = e10.d().distance(lookingPos);
            LinkedList linkedList = new LinkedList();
            for (int i10 = 0; i10 < picked.size(); i10++) {
                C14102a c14102a = picked.get(i10);
                if (e10 != c14102a && c14102a.d().distance(lookingPos) >= distance * maxDistanceMultiplayer) {
                    linkedList.add(c14102a);
                }
            }
            picked.removeAll(linkedList);
            linkedList.clear();
        }
        return picked;
    }

    public C14102a e(Vector3 lookingPos, List<C14102a> picked) {
        C14102a c14102a = null;
        float f10 = 0.0f;
        for (int i10 = 0; i10 < picked.size(); i10++) {
            C14102a c14102a2 = picked.get(i10);
            float sqrtDistance = c14102a2.d().sqrtDistance(lookingPos);
            if (c14102a == null || sqrtDistance <= f10) {
                c14102a = c14102a2;
                f10 = sqrtDistance;
            }
        }
        return c14102a;
    }

    public C14102a f(List<C14102a> picked) {
        C14102a c14102a = null;
        double d10 = 0.0d;
        for (int i10 = 0; i10 < picked.size(); i10++) {
            C14102a c14102a2 = picked.get(i10);
            double d11 = c14102a2.f96308e;
            if (c14102a == null || d11 >= d10) {
                c14102a = c14102a2;
                d10 = d11;
            }
        }
        return c14102a;
    }

    public final C14102a g() {
        if (this.f96317i.isEmpty()) {
            C14102a c14102a = new C14102a();
            this.f96318j.add(c14102a);
            return c14102a;
        }
        C14102a c14102a2 = this.f96317i.get(0);
        this.f96317i.remove(0);
        this.f96318j.add(c14102a2);
        return c14102a2;
    }

    public boolean h() {
        q qVar = this.f96311c;
        return (qVar == null || this.f96310b == null || qVar.d() != this.f96310b.d()) ? false : true;
    }

    public void i(List<C14102a> vertices) {
        this.f96317i.removeAll(vertices);
        this.f96318j.addAll(vertices);
    }

    public List<C14102a> j(Vector3 lookingPos, Vector3 lookDirection, double bias) {
        return k(lookingPos, lookDirection, bias, true);
    }

    public List<C14102a> k(Vector3 lookingPos, Vector3 lookDirection, double bias, boolean ignoreBehindVertices) {
        lookDirection.normalizeLocal();
        List<C14102a> synchronizedList = Collections.synchronizedList(new LinkedList());
        l(lookingPos, lookDirection, bias, synchronizedList, ignoreBehindVertices);
        return synchronizedList;
    }

    public final void l(Vector3 lookingPos, Vector3 lookDirection, double bias, List<C14102a> picked, boolean ignoreBehindVertices) {
        int i10;
        for (0; i10 < this.f96310b.d(); i10 + 1) {
            this.f96310b.i(i10, this.f96313e);
            if (ignoreBehindVertices && h()) {
                this.f96311c.i(i10, this.f96315g);
                i10 = this.f96315g.dot(lookDirection) > 0.2f ? i10 + 1 : 0;
            }
            this.f96314f.set(this.f96313e.getX(), this.f96313e.getY(), this.f96313e.getZ());
            Matrix4f matrix4f = this.f96309a;
            Vector3f vector3f = this.f96314f;
            matrix4f.mult(vector3f, vector3f);
            this.f96316h.set(this.f96314f.f81611x - lookingPos.getX(), this.f96314f.f81612y - lookingPos.getY(), this.f96314f.f81613z - lookingPos.getZ());
            this.f96316h.normalizeLocal();
            double dotProductDouble = lookDirection.dotProductDouble(this.f96316h);
            if (dotProductDouble >= 1.0d - bias) {
                C14102a g10 = g();
                g10.g(this.f96313e);
                g10.f(this.f96315g);
                g10.i(this.f96314f);
                g10.f96307d = i10;
                g10.f96308e = dotProductDouble;
                picked.add(g10);
            }
        }
        List synchronizedList = Collections.synchronizedList(new LinkedList());
        for (int i11 = 0; i11 < picked.size(); i11++) {
            C14102a c14102a = picked.get(i11);
            for (int i12 = 0; i12 < this.f96310b.d(); i12++) {
                this.f96310b.i(i12, this.f96313e);
                if (ignoreBehindVertices && h()) {
                    this.f96311c.i(i12, this.f96315g);
                }
                if (this.f96313e.equally(c14102a.f96304a) || this.f96313e.sqrtDistance(c14102a.f96304a) <= 1.0E-4f) {
                    C14102a g11 = g();
                    g11.g(this.f96313e);
                    g11.f(this.f96315g);
                    c14102a.h(c14102a.d());
                    g11.f96307d = i12;
                    g11.f96308e = c14102a.f96308e;
                    synchronizedList.add(g11);
                }
            }
        }
        picked.addAll(synchronizedList);
    }

    public C14102a m(Vector3 lookingPos, Vector3 lookDirection, double bias) {
        lookDirection.normalizeLocal();
        return e(lookingPos, j(lookingPos, lookDirection, bias));
    }

    public List<C14102a> n(C14102a pickVertice) {
        if (pickVertice == null) {
            throw new NullPointerException("pickVertice can't be null");
        }
        List<C14102a> synchronizedList = Collections.synchronizedList(new LinkedList());
        synchronizedList.add(pickVertice);
        for (int i10 = 0; i10 < this.f96310b.d(); i10++) {
            this.f96310b.i(i10, this.f96313e);
            if (i10 != pickVertice.f96307d) {
                if (h()) {
                    this.f96311c.i(i10, this.f96315g);
                }
                if (this.f96313e.equally(pickVertice.f96304a) || this.f96313e.sqrtDistance(pickVertice.f96304a) <= 1.0E-4f) {
                    C14102a g10 = g();
                    g10.g(this.f96313e);
                    g10.f(this.f96315g);
                    pickVertice.h(pickVertice.d());
                    g10.f96307d = i10;
                    g10.f96308e = pickVertice.f96308e;
                    synchronizedList.add(g10);
                }
            }
        }
        return synchronizedList;
    }

    public void o() {
        this.f96317i.addAll(this.f96318j);
        this.f96318j.clear();
    }

    public void p(float[] matrix) {
        this.f96309a.set(matrix, false);
    }

    public void q(NativeFloatBuffer verticesBuffer, NativeFloatBuffer normalsBuffer, NativeIntBuffer indicesBuffer) {
        this.f96310b = new q(verticesBuffer);
        if (normalsBuffer != null) {
            this.f96311c = new q(normalsBuffer);
        }
        this.f96312d = new n(indicesBuffer);
    }
}
