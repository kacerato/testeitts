package jf;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.FastMath;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class r implements Comparable<k>, k, Savable {

    public static final Logger f92965d = Logger.getLogger(r.class.getName());

    public static final Vector3f f92966e = new Vector3f(0.0f, 1.0f, 0.0f);

    public static final r f92967f;

    public static final r f92968g;

    public static final r f92969h;

    public static final r f92970i;

    public static final r f92971j;

    public static final r f92972k;

    public static final r f92973l;

    public static final r f92974m;

    public static final r f92975n;

    public float f92976b;

    public float f92977c;

    static {
        r rVar = new r(-1.0f, 0.0f);
        f92967f = rVar;
        r rVar2 = new r(0.0f, 1.0f);
        f92968g = rVar2;
        r rVar3 = new r(1.0f, 0.0f);
        f92969h = rVar3;
        r rVar4 = new r(0.0f, -1.0f);
        f92970i = rVar4;
        f92971j = rVar3;
        f92972k = rVar2;
        f92973l = rVar;
        f92974m = rVar4;
        f92975n = new r(0.0f, 0.0f);
    }

    public r() {
        this.f92976b = 0.0f;
        this.f92977c = 0.0f;
    }

    public static void I(k kVar, String str) {
        C13702E.t(kVar, str);
        if (kVar.a()) {
            if (str == null) {
                str = "VectorXZ argument";
            }
            throw new IllegalArgumentException(String.format("%s must not be zero.", str));
        }
    }

    @Override
    public double A(k kVar) {
        return (this.f92976b * kVar.getX()) + (this.f92977c * kVar.getZ());
    }

    @Override
    public float B() {
        return (float) Math.atan2(this.f92977c, this.f92976b);
    }

    @Override
    public k C(float f10) {
        C13702E.v(f10, "scalar");
        return f10 == 1.0f ? this : new r(this.f92976b / f10, this.f92977c / f10);
    }

    @Override
    public Vector3f D(float f10) {
        return H(f10, null);
    }

    @Override
    public int compareTo(k kVar) {
        int compare = Float.compare(this.f92976b, kVar.getX());
        if (compare != 0) {
            return compare;
        }
        return Float.compare(this.f92977c, kVar.getZ());
    }

    @Override
    public k F() {
        float sign;
        if (a()) {
            return f92975n;
        }
        float f10 = 0.0f;
        if (FastMath.abs(this.f92976b) > FastMath.abs(this.f92977c)) {
            f10 = FastMath.sign(this.f92976b);
            sign = 0.0f;
        } else {
            sign = FastMath.sign(this.f92977c);
        }
        return s(f10, sign) ? this : new r(f10, sign);
    }

    @Override
    public boolean G(k kVar, float f10) {
        C13702E.t(kVar, "other vector");
        C13702E.p(f10, "absolute tolerance");
        boolean equals = equals(kVar);
        if (equals) {
            return equals;
        }
        if (Math.abs(this.f92976b - kVar.getX()) > f10) {
            return equals;
        }
        if (Math.abs(this.f92977c - kVar.getZ()) <= f10) {
            return true;
        }
        return equals;
    }

    @Override
    public Vector3f H(float f10, Vector3f vector3f) {
        return vector3f == null ? new Vector3f(this.f92976b, f10, this.f92977c) : vector3f.set(this.f92976b, f10, this.f92977c);
    }

    @Override
    public boolean a() {
        return this.f92976b == 0.0f && this.f92977c == 0.0f;
    }

    @Override
    public k b(k kVar) {
        float x10 = this.f92976b - kVar.getX();
        float z10 = this.f92977c - kVar.getZ();
        return s(x10, z10) ? this : new r(x10, z10);
    }

    @Override
    public k c() {
        return o() ? this : new r(FastMath.abs(this.f92976b), FastMath.abs(this.f92977c));
    }

    @Override
    public float d(k kVar) {
        I(this, "this direction");
        I(kVar, "goal direction");
        float u10 = u(kVar);
        return A(kVar) >= 0.0d ? u10 / ((float) Math.sqrt(lengthSquared() * kVar.lengthSquared())) : u10 > 0.0f ? 1.0f : -1.0f;
    }

    @Override
    public k e(float f10) {
        C13702E.h(f10, "angle", 0.0f, 3.1415927f);
        if (this.f92976b >= 0.0f && (f10 >= 1.5707964f || this.f92977c == 0.0f)) {
            return this;
        }
        float length = length();
        float cos = FastMath.cos(f10) * length;
        if (this.f92976b >= cos) {
            return this;
        }
        float sin = length * FastMath.sin(f10);
        if (this.f92977c < 0.0f) {
            sin = -sin;
        }
        return new r(cos, sin);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return s(kVar.getX(), kVar.getZ());
    }

    @Override
    public Quaternion g() {
        return k(null);
    }

    @Override
    public float getX() {
        return this.f92976b;
    }

    @Override
    public float getZ() {
        return this.f92977c;
    }

    @Override
    public k h(k kVar) {
        float x10 = this.f92976b * kVar.getX();
        float z10 = this.f92977c * kVar.getZ();
        return s(x10, z10) ? this : new r(x10, z10);
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f92976b) * 71) + Float.floatToIntBits(this.f92977c);
    }

    @Override
    public k i(k kVar, float f10) {
        float f11 = 1.0f - f10;
        float x10 = (this.f92976b * f11) + (kVar.getX() * f10);
        float z10 = (this.f92977c * f11) + (kVar.getZ() * f10);
        return s(x10, z10) ? this : new r(x10, z10);
    }

    @Override
    public int j(float f10, float f11) {
        int compare = Float.compare(this.f92976b, f10);
        return compare == 0 ? Float.compare(this.f92977c, f11) : compare;
    }

    @Override
    public Quaternion k(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        quaternion.lookAt(new Vector3f(-this.f92977c, 0.0f, this.f92976b), f92966e);
        return quaternion;
    }

    @Override
    public float length() {
        return f.r(this.f92976b, this.f92977c);
    }

    @Override
    public double lengthSquared() {
        return f.P(this.f92976b, this.f92977c);
    }

    @Override
    public k m(float f10, float f11) {
        C13702E.p(f10, "maximum X");
        C13702E.p(f11, "maximum Z");
        if (a()) {
            return f92975n;
        }
        float length = length();
        float[] fArr = {(this.f92977c / length) * f10, (this.f92976b / length) * f11};
        double d10 = f10 * f11;
        double P10 = (d10 * d10) / f.P(fArr);
        double lengthSquared = lengthSquared();
        if (lengthSquared <= P10) {
            return this;
        }
        float sqrt = (float) Math.sqrt(P10 / lengthSquared);
        return new r(this.f92976b * sqrt, this.f92977c * sqrt);
    }

    @Override
    public k negate() {
        return a() ? f92975n : new r(-this.f92976b, -this.f92977c);
    }

    @Override
    public k normalize() {
        if (a()) {
            f92965d.info("Normalizing a zero vector.");
            return f92975n;
        }
        double lengthSquared = lengthSquared();
        if (((float) lengthSquared) == 1.0f) {
            return this;
        }
        float sqrt = (float) Math.sqrt(lengthSquared);
        float f10 = this.f92976b / sqrt;
        float f11 = this.f92977c / sqrt;
        return s(f10, f11) ? this : new r(f10, f11);
    }

    @Override
    public boolean o() {
        return this.f92976b >= 0.0f && this.f92977c >= 0.0f;
    }

    @Override
    public double q(k kVar) {
        double x10 = kVar.getX();
        double z10 = kVar.getZ();
        double d10 = this.f92976b;
        double d11 = this.f92977c;
        double d12 = ((d10 * d10) + (d11 * d11)) * ((x10 * x10) + (z10 * z10));
        if (d12 == 0.0d) {
            return 1.0d;
        }
        return f.e(((d10 * x10) + (d11 * z10)) / Math.sqrt(d12), 1.0d);
    }

    @Override
    public k r(float f10) {
        C13702E.p(f10, TestVFXEffect.f77524P);
        if (a()) {
            return f92975n;
        }
        double lengthSquared = lengthSquared();
        double d10 = f10;
        double d11 = d10 * d10;
        if (lengthSquared <= d11) {
            return this;
        }
        float sqrt = (float) Math.sqrt(d11 / lengthSquared);
        return new r(this.f92976b * sqrt, this.f92977c * sqrt);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f92976b = capsule.readFloat("x", 0.0f);
        this.f92977c = capsule.readFloat("z", 0.0f);
    }

    @Override
    public boolean s(float f10, float f11) {
        return j(f10, f11) == 0;
    }

    @Override
    public k t(k kVar) {
        float x10 = kVar.getX();
        float z10 = kVar.getZ();
        float f10 = this.f92976b;
        float f11 = this.f92977c;
        float f12 = (x10 * f10) - (z10 * f11);
        float f13 = (x10 * f11) + (z10 * f10);
        return s(f12, f13) ? this : new r(f12, f13);
    }

    public String toString() {
        return String.format("(x=%.3f, z=%.3f)", Float.valueOf(this.f92976b), Float.valueOf(this.f92977c));
    }

    @Override
    public float u(k kVar) {
        return (this.f92976b * kVar.getZ()) - (this.f92977c * kVar.getX());
    }

    @Override
    public k v() {
        float f10 = this.f92977c;
        return f10 == 0.0f ? this : new r(this.f92976b, -f10);
    }

    @Override
    public k w(k kVar) {
        float x10 = this.f92976b + kVar.getX();
        float z10 = this.f92977c + kVar.getZ();
        return s(x10, z10) ? this : new r(x10, z10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f92976b, "x", 0.0f);
        capsule.write(this.f92977c, "z", 0.0f);
    }

    @Override
    public k x(float f10) {
        if (f10 == 0.0f) {
            return this;
        }
        float cos = FastMath.cos(f10);
        float sin = FastMath.sin(f10);
        float f11 = this.f92976b;
        float f12 = this.f92977c;
        float f13 = (cos * f11) - (sin * f12);
        float f14 = (cos * f12) + (sin * f11);
        return s(f13, f14) ? this : new r(f13, f14);
    }

    @Override
    public Vector3f y() {
        return H(0.0f, null);
    }

    @Override
    public k z(float f10) {
        return f10 == 1.0f ? this : new r(this.f92976b * f10, this.f92977c * f10);
    }

    public r(float f10) {
        this.f92976b = FastMath.cos(f10);
        this.f92977c = FastMath.sin(f10);
    }

    public r(Vector3f vector3f) {
        this.f92976b = vector3f.f81611x;
        this.f92977c = vector3f.f81613z;
    }

    public r(float f10, float f11) {
        this.f92976b = f10;
        this.f92977c = f11;
    }
}
