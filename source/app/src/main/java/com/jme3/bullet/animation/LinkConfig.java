package com.jme3.bullet.animation;

import com.jme3.bullet.RotationOrder;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.HullCollisionShape;
import com.jme3.bullet.collision.shapes.MultiSphere;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.Objects;
import java.util.logging.Logger;
import jf.f;
import jf.m;
import jf.o;
import p000if.C13702E;

public class LinkConfig implements Comparable<LinkConfig>, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(LinkConfig.class.getName());
    private static final Quaternion rotateIdentity = new Quaternion();
    private static final String tagCenterHeuristic = "centerHeuristic";
    private static final String tagMassHeuristic = "massHeuristic";
    private static final String tagMassParameter = "massParameter";
    private static final String tagRotationOrder = "rotationOrder";
    private static final String tagShapeHeuristic = "shapeHeuristic";
    private static final String tagShapeScale = "shapeScale";
    private CenterHeuristic centerHeuristic;
    private MassHeuristic massHeuristic;
    private float massParameter;
    private RotationOrder rotationOrder;
    private ShapeHeuristic shapeHeuristic;
    private Vector3f shapeScale;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bullet$animation$MassHeuristic;
        static final int[] $SwitchMap$com$jme3$bullet$animation$ShapeHeuristic;

        static {
            int[] iArr = new int[MassHeuristic.values().length];
            $SwitchMap$com$jme3$bullet$animation$MassHeuristic = iArr;
            try {
                iArr[MassHeuristic.Density.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$bullet$animation$MassHeuristic[MassHeuristic.Mass.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[ShapeHeuristic.values().length];
            $SwitchMap$com$jme3$bullet$animation$ShapeHeuristic = iArr2;
            try {
                iArr2[ShapeHeuristic.AABB.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$bullet$animation$ShapeHeuristic[ShapeHeuristic.Sphere.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$bullet$animation$ShapeHeuristic[ShapeHeuristic.VertexHull.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$bullet$animation$ShapeHeuristic[ShapeHeuristic.Cylinder.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$bullet$animation$ShapeHeuristic[ShapeHeuristic.FourSphere.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$bullet$animation$ShapeHeuristic[ShapeHeuristic.MinBox.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$jme3$bullet$animation$ShapeHeuristic[ShapeHeuristic.TwoSphere.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public LinkConfig() {
        this.centerHeuristic = CenterHeuristic.Mean;
        this.massParameter = 1.0f;
        this.massHeuristic = MassHeuristic.Mass;
        this.rotationOrder = null;
        this.shapeHeuristic = ShapeHeuristic.VertexHull;
        this.shapeScale = new Vector3f(1.0f, 1.0f, 1.0f);
    }

    public CenterHeuristic centerHeuristic() {
        return this.centerHeuristic;
    }

    public CollisionShape createShape(Transform transform, Vector3f vector3f, o oVar) {
        C13702E.t(transform, "transform");
        C13702E.d(vector3f, "center");
        oVar.m();
        Vector3f vector3f2 = new Vector3f();
        FloatBuffer j10 = oVar.j();
        j10.rewind();
        while (j10.hasRemaining()) {
            j10.mark();
            vector3f2.f81611x = j10.get();
            vector3f2.f81612y = j10.get();
            vector3f2.f81613z = j10.get();
            vector3f2.subtractLocal(vector3f);
            f.S(transform, vector3f2, vector3f2);
            int i10 = AnonymousClass1.$SwitchMap$com$jme3$bullet$animation$ShapeHeuristic[this.shapeHeuristic.ordinal()];
            if (i10 == 1 || i10 == 2 || i10 == 3) {
                vector3f2.multLocal(this.shapeScale);
            }
            j10.reset();
            j10.put(vector3f2.f81611x);
            j10.put(vector3f2.f81612y);
            j10.put(vector3f2.f81613z);
        }
        switch (AnonymousClass1.$SwitchMap$com$jme3$bullet$animation$ShapeHeuristic[this.shapeHeuristic.ordinal()]) {
            case 1:
                Vector3f vector3f3 = new Vector3f();
                Vector3f vector3f4 = new Vector3f();
                oVar.g(vector3f3, vector3f4);
                return new HullCollisionShape(new m(vector3f4, vector3f3, rotateIdentity));
            case 2:
                return new MultiSphere(oVar.l());
            case 3:
                return new HullCollisionShape(j10);
            case 4:
                return RagUtils.makeCylinder(oVar, this.shapeScale);
            case 5:
                return new MultiSphere(RagUtils.makeRectangularSolid(oVar, this.shapeScale));
            case 6:
                return new HullCollisionShape(RagUtils.makeRectangularSolid(oVar, this.shapeScale));
            case 7:
                return new MultiSphere(RagUtils.makeRectangularSolid(oVar, this.shapeScale), 0.5f);
            default:
                throw new IllegalArgumentException("heuristic = " + ((Object) this.shapeHeuristic));
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            LinkConfig linkConfig = (LinkConfig) obj;
            float massParameter = linkConfig.massParameter();
            if (this.centerHeuristic == linkConfig.centerHeuristic() && Float.compare(this.massParameter, massParameter) == 0 && this.massHeuristic == linkConfig.massHeuristic() && this.rotationOrder == linkConfig.rotationOrder() && this.shapeHeuristic == linkConfig.shapeHeuristic() && this.shapeScale.equals(linkConfig.shapeScale)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((Objects.hashCode(this.centerHeuristic) + 17) * 11) + Float.floatToIntBits(this.massParameter)) * 11) + Objects.hashCode(this.massHeuristic)) * 11) + Objects.hashCode(this.rotationOrder)) * 11) + Objects.hashCode(this.shapeHeuristic)) * 11) + Objects.hashCode(this.shapeScale);
    }

    public float mass() {
        if (this.massHeuristic == MassHeuristic.Mass) {
            return this.massParameter;
        }
        return Float.NaN;
    }

    public MassHeuristic massHeuristic() {
        return this.massHeuristic;
    }

    public float massParameter() {
        return this.massParameter;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.centerHeuristic = (CenterHeuristic) capsule.readEnum(tagCenterHeuristic, CenterHeuristic.class, CenterHeuristic.Mean);
        this.massParameter = capsule.readFloat(tagMassParameter, 1.0f);
        this.massHeuristic = (MassHeuristic) capsule.readEnum(tagMassHeuristic, MassHeuristic.class, MassHeuristic.Mass);
        this.rotationOrder = (RotationOrder) capsule.readEnum(tagRotationOrder, RotationOrder.class, null);
        this.shapeHeuristic = (ShapeHeuristic) capsule.readEnum(tagShapeHeuristic, ShapeHeuristic.class, ShapeHeuristic.VertexHull);
        this.shapeScale = (Vector3f) capsule.readSavable(tagShapeScale, null);
    }

    public RotationOrder rotationOrder() {
        return this.rotationOrder;
    }

    public ShapeHeuristic shapeHeuristic() {
        return this.shapeHeuristic;
    }

    public Vector3f shapeScale(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.shapeScale);
        return vector3f;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.centerHeuristic, tagCenterHeuristic, CenterHeuristic.Mean);
        capsule.write(this.massParameter, tagMassParameter, 1.0f);
        capsule.write(this.massHeuristic, tagMassHeuristic, MassHeuristic.Mass);
        capsule.write(this.rotationOrder, tagRotationOrder, (Enum) null);
        capsule.write(this.shapeHeuristic, tagShapeHeuristic, ShapeHeuristic.VertexHull);
        capsule.write(this.shapeScale, tagShapeScale, (Savable) null);
    }

    @Override
    public int compareTo(LinkConfig linkConfig) {
        int compareTo;
        int compareTo2 = this.centerHeuristic.compareTo(linkConfig.centerHeuristic());
        if (compareTo2 != 0) {
            return compareTo2;
        }
        int compare = Float.compare(this.massParameter, linkConfig.massParameter());
        if (compare != 0) {
            return compare;
        }
        int compareTo3 = this.massHeuristic.compareTo(linkConfig.massHeuristic());
        if (compareTo3 != 0) {
            return compareTo3;
        }
        RotationOrder rotationOrder = linkConfig.rotationOrder();
        RotationOrder rotationOrder2 = this.rotationOrder;
        if (rotationOrder2 == null && rotationOrder != null) {
            return 1;
        }
        if (rotationOrder == null && rotationOrder2 != null) {
            return -1;
        }
        if (rotationOrder2 != null && rotationOrder != null && (compareTo = rotationOrder2.compareTo(rotationOrder)) != 0) {
            return compareTo;
        }
        int compareTo4 = this.shapeHeuristic.compareTo(linkConfig.shapeHeuristic());
        if (compareTo4 != 0) {
            return compareTo4;
        }
        int compare2 = Float.compare(this.shapeScale.f81611x, linkConfig.shapeScale.f81611x);
        if (compare2 != 0) {
            return compare2;
        }
        int compare3 = Float.compare(this.shapeScale.f81612y, linkConfig.shapeScale.f81612y);
        return compare3 != 0 ? compare3 : Float.compare(this.shapeScale.f81613z, linkConfig.shapeScale.f81613z);
    }

    public float mass(float f10) {
        C13702E.p(f10, "volume");
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bullet$animation$MassHeuristic[this.massHeuristic.ordinal()];
        if (i10 == 1) {
            if (f10 == 0.0f) {
                return 1.0E-6f;
            }
            return f10 * this.massParameter;
        }
        if (i10 == 2) {
            return this.massParameter;
        }
        throw new IllegalArgumentException("heuristic = " + ((Object) this.massHeuristic));
    }

    public LinkConfig(float f10) {
        C13702E.E(f10, "mass");
        this.centerHeuristic = CenterHeuristic.Mean;
        this.massParameter = f10;
        this.massHeuristic = MassHeuristic.Mass;
        this.rotationOrder = null;
        this.shapeHeuristic = ShapeHeuristic.VertexHull;
        this.shapeScale = new Vector3f(1.0f, 1.0f, 1.0f);
    }

    public LinkConfig(float f10, LinkConfig linkConfig) {
        C13702E.E(f10, "mass");
        C13702E.t(linkConfig, "old configuration");
        this.centerHeuristic = linkConfig.centerHeuristic();
        this.massParameter = f10;
        this.massHeuristic = MassHeuristic.Mass;
        this.rotationOrder = null;
        this.shapeHeuristic = linkConfig.shapeHeuristic();
        this.shapeScale = linkConfig.shapeScale(null);
    }

    public LinkConfig(float f10, MassHeuristic massHeuristic, ShapeHeuristic shapeHeuristic, Vector3f vector3f, CenterHeuristic centerHeuristic) {
        C13702E.E(f10, "mass parameter");
        C13702E.t(massHeuristic, "mass heuristic");
        C13702E.t(shapeHeuristic, "shape heuristic");
        C13702E.s(vector3f, "shape scale");
        C13702E.t(centerHeuristic, "center heuristic");
        this.centerHeuristic = centerHeuristic;
        this.massParameter = f10;
        this.massHeuristic = massHeuristic;
        this.rotationOrder = null;
        this.shapeHeuristic = shapeHeuristic;
        this.shapeScale = vector3f.m1292clone();
    }

    public LinkConfig(float f10, MassHeuristic massHeuristic, ShapeHeuristic shapeHeuristic, Vector3f vector3f, CenterHeuristic centerHeuristic, RotationOrder rotationOrder) {
        C13702E.E(f10, "mass parameter");
        C13702E.t(massHeuristic, "mass heuristic");
        C13702E.t(shapeHeuristic, "shape heuristic");
        C13702E.s(vector3f, "shape scale");
        C13702E.t(centerHeuristic, "center heuristic");
        this.centerHeuristic = centerHeuristic;
        this.massParameter = f10;
        this.massHeuristic = massHeuristic;
        this.rotationOrder = rotationOrder;
        this.shapeHeuristic = shapeHeuristic;
        this.shapeScale = vector3f.m1292clone();
    }
}
