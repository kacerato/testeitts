package jf;

import G0.C2595v;
import android.provider.MediaStore;
import com.jme3.bounding.BoundingBox;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Eigen3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.shape.AbstractBox;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import p000if.C13702E;

public class m implements Savable {

    public static final int f92939e = 3;

    public static final Logger f92940f = Logger.getLogger(m.class.getName());

    public static final boolean f92941g = false;

    public Quaternion f92942b = new Quaternion();

    public Vector3f f92943c = new Vector3f();

    public Vector3f f92944d = new Vector3f();

    public m() {
    }

    public Vector3f a(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        this.f92943c.add(this.f92944d, vector3f);
        vector3f.divideLocal(2.0f);
        return vector3f;
    }

    public Vector3f b(Vector3f vector3f) {
        Vector3f a10 = a(vector3f);
        g.r(this.f92942b, a10, a10);
        return a10;
    }

    public Vector3f c(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        this.f92943c.subtract(this.f92944d, vector3f);
        vector3f.divideLocal(2.0f);
        return vector3f;
    }

    public List<Vector3f> d() {
        ArrayList<Vector3f> arrayList = new ArrayList(8);
        Vector3f vector3f = this.f92943c;
        arrayList.add(new Vector3f(vector3f.f81611x, vector3f.f81612y, vector3f.f81613z));
        Vector3f vector3f2 = this.f92943c;
        arrayList.add(new Vector3f(vector3f2.f81611x, vector3f2.f81612y, this.f92944d.f81613z));
        Vector3f vector3f3 = this.f92943c;
        arrayList.add(new Vector3f(vector3f3.f81611x, this.f92944d.f81612y, vector3f3.f81613z));
        float f10 = this.f92943c.f81611x;
        Vector3f vector3f4 = this.f92944d;
        arrayList.add(new Vector3f(f10, vector3f4.f81612y, vector3f4.f81613z));
        float f11 = this.f92944d.f81611x;
        Vector3f vector3f5 = this.f92943c;
        arrayList.add(new Vector3f(f11, vector3f5.f81612y, vector3f5.f81613z));
        Vector3f vector3f6 = this.f92944d;
        arrayList.add(new Vector3f(vector3f6.f81611x, this.f92943c.f81612y, vector3f6.f81613z));
        Vector3f vector3f7 = this.f92944d;
        arrayList.add(new Vector3f(vector3f7.f81611x, vector3f7.f81612y, this.f92943c.f81613z));
        Vector3f vector3f8 = this.f92944d;
        arrayList.add(new Vector3f(vector3f8.f81611x, vector3f8.f81612y, vector3f8.f81613z));
        for (Vector3f vector3f9 : arrayList) {
            g.r(this.f92942b, vector3f9, vector3f9);
        }
        return arrayList;
    }

    public Quaternion e(Quaternion quaternion) {
        return quaternion == null ? this.f92942b.m1285clone() : quaternion.set(this.f92942b);
    }

    public Vector3f f(Vector3f vector3f, Vector3f vector3f2) {
        C13702E.d(vector3f, C2595v.f7483b);
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        g.r(this.f92942b, vector3f, vector3f2);
        return vector3f2;
    }

    public Vector3f g(Vector3f vector3f) {
        return vector3f == null ? this.f92943c.m1292clone() : vector3f.set(this.f92943c);
    }

    public Vector3f h(Vector3f vector3f) {
        return vector3f == null ? this.f92944d.m1292clone() : vector3f.set(this.f92944d);
    }

    public float i() {
        Vector3f vector3f = this.f92943c;
        float f10 = vector3f.f81611x;
        Vector3f vector3f2 = this.f92944d;
        return (f10 - vector3f2.f81611x) * (vector3f.f81612y - vector3f2.f81612y) * (vector3f.f81613z - vector3f2.f81613z);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f92942b = (Quaternion) capsule.readSavable("localToWorld", null);
        this.f92943c = (Vector3f) capsule.readSavable("maxima", null);
        this.f92944d = (Vector3f) capsule.readSavable("minima", null);
    }

    public String toString() {
        return "RectangularSolid[" + ((Object) this.f92942b) + ", min=" + ((Object) this.f92944d) + ", max=" + ((Object) this.f92943c) + "]";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f92942b, "localToWorld", (Savable) null);
        capsule.write(this.f92943c, "maxima", (Savable) null);
        capsule.write(this.f92944d, "minima", (Savable) null);
    }

    public m(AbstractBox abstractBox) {
        C13702E.d(abstractBox.center, "center location");
        C13702E.p(abstractBox.xExtent, "X extent");
        C13702E.p(abstractBox.yExtent, "Y extent");
        C13702E.p(abstractBox.zExtent, "Z extent");
        this.f92943c.set(abstractBox.center);
        this.f92943c.addLocal(abstractBox.xExtent, abstractBox.yExtent, abstractBox.zExtent);
        this.f92944d.set(abstractBox.center);
        this.f92944d.subtractLocal(abstractBox.xExtent, abstractBox.yExtent, abstractBox.zExtent);
    }

    public m(BoundingBox boundingBox) {
        boundingBox.getMax(this.f92943c);
        boundingBox.getMin(this.f92944d);
        C13702E.d(this.f92943c, "max");
        C13702E.d(this.f92944d, "min");
        C13702E.H(this.f92943c.f81611x >= this.f92944d.f81611x, "non-negative X extent");
        C13702E.H(this.f92943c.f81612y >= this.f92944d.f81612y, "non-negative Y extent");
        C13702E.H(this.f92943c.f81613z >= this.f92944d.f81613z, "non-negative Z extent");
    }

    public m(Collection<Vector3f> collection) {
        C13702E.H(collection.size() >= 2, "at least 2 samples");
        this.f92942b.fromAxes(new Eigen3f(h.l(collection, null)).getEigenVectors());
        this.f92943c.set(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        this.f92944d.set(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        Vector3f vector3f = new Vector3f();
        Iterator<Vector3f> it = collection.iterator();
        while (it.hasNext()) {
            g.s(this.f92942b, it.next(), vector3f);
            h.a(this.f92943c, vector3f);
            h.b(this.f92944d, vector3f);
        }
    }

    public m(float[] fArr) {
        int length = fArr.length;
        C13702E.H(length % 3 == 0, "length a multiple of 3");
        int i10 = length / 3;
        C13702E.H(i10 >= 2, "at least 2 samples");
        this.f92942b.fromAxes(new Eigen3f(c.d(fArr, null)).getEigenVectors());
        this.f92943c.set(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        this.f92944d.set(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        Vector3f vector3f = new Vector3f();
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = i11 * 3;
            vector3f.f81611x = fArr[i12];
            vector3f.f81612y = fArr[i12 + 1];
            vector3f.f81613z = fArr[i12 + 2];
            g.s(this.f92942b, vector3f, vector3f);
            h.a(this.f92943c, vector3f);
            h.b(this.f92944d, vector3f);
        }
    }

    public m(FloatBuffer floatBuffer, int i10, int i11) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11 - 6);
        C13702E.i(i11, "end position", i10 + 6, floatBuffer.capacity());
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "numFloats a multiple of 3");
        int i13 = i12 / 3;
        C13702E.H(i13 >= 2, "at least 2 samples");
        this.f92942b.fromAxes(new Eigen3f(d.a(floatBuffer, 0, i12, null)).getEigenVectors());
        this.f92943c.set(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        this.f92944d.set(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        Vector3f vector3f = new Vector3f();
        for (int i14 = 0; i14 < i13; i14++) {
            d.g(floatBuffer, i14 * 3, vector3f);
            g.s(this.f92942b, vector3f, vector3f);
            h.a(this.f92943c, vector3f);
            h.b(this.f92944d, vector3f);
        }
    }

    public m(Vector3f vector3f) {
        this.f92943c.set(vector3f);
        vector3f.mult(-1.0f, this.f92944d);
    }

    public m(Vector3f vector3f, Vector3f vector3f2, Quaternion quaternion) {
        C13702E.y(quaternion, MediaStore.Images.ImageColumns.ORIENTATION);
        C13702E.d(vector3f2, "max");
        C13702E.d(vector3f, "min");
        C13702E.H(vector3f.f81611x <= vector3f2.f81611x, "min.x less than or equal to max.x");
        C13702E.H(vector3f.f81612y <= vector3f2.f81612y, "min.y less than or equal to max.y");
        C13702E.H(vector3f.f81613z <= vector3f2.f81613z, "min.z less than or equal to max.z");
        this.f92943c.set(vector3f2);
        this.f92944d.set(vector3f);
        this.f92942b.set(quaternion);
    }

    public m(m mVar, Vector3f vector3f) {
        C13702E.s(vector3f, "scale factors");
        Vector3f M10 = h.M(mVar.f92944d, mVar.f92943c, null);
        mVar.f92943c.subtract(M10, this.f92943c);
        this.f92943c.multLocal(vector3f);
        this.f92943c.addLocal(M10);
        mVar.f92944d.subtract(M10, this.f92944d);
        this.f92944d.multLocal(vector3f);
        this.f92944d.addLocal(M10);
        this.f92942b.set(mVar.f92942b);
    }
}
