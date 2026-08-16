package mf;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.jme3.bullet.collision.shapes.BoxCollisionShape;
import com.jme3.bullet.collision.shapes.CapsuleCollisionShape;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.ConeCollisionShape;
import com.jme3.bullet.collision.shapes.CylinderCollisionShape;
import com.jme3.bullet.collision.shapes.HullCollisionShape;
import com.jme3.bullet.collision.shapes.MultiSphere;
import com.jme3.bullet.collision.shapes.SimplexCollisionShape;
import com.jme3.bullet.collision.shapes.SphereCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import com.jme3.math.Vector3f;
import java.util.logging.Logger;
import p000if.C13702E;
import p000if.C13724t;
import yd.C16181m;

public final class C14234j {

    public static final Logger f96971a = Logger.getLogger(C14234j.class.getName());

    public static final boolean f96972b = false;

    public static String a(CollisionShape collisionShape) {
        String simpleName = collisionShape.getClass().getSimpleName();
        if (simpleName.endsWith("Shape")) {
            simpleName = C13724t.w(simpleName, "Shape");
        }
        return simpleName.endsWith("Collision") ? C13724t.w(simpleName, "Collision") : simpleName;
    }

    public static Vector3f b(CollisionShape collisionShape, Vector3f vector3f) {
        C13702E.t(collisionShape, "shape");
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        if (collisionShape instanceof BoxCollisionShape) {
            ((BoxCollisionShape) collisionShape).getHalfExtents(vector3f);
        } else if (collisionShape instanceof CapsuleCollisionShape) {
            CapsuleCollisionShape capsuleCollisionShape = (CapsuleCollisionShape) collisionShape;
            float height = capsuleCollisionShape.getHeight();
            float radius = capsuleCollisionShape.getRadius();
            float f10 = (height / 2.0f) + radius;
            int axis = capsuleCollisionShape.getAxis();
            if (axis == 0) {
                vector3f.set(f10, radius, radius);
            } else if (axis == 1) {
                vector3f.set(radius, f10, radius);
            } else {
                if (axis != 2) {
                    throw new IllegalArgumentException("axisIndex = " + axis);
                }
                vector3f.set(radius, radius, f10);
            }
        } else if (collisionShape instanceof ConeCollisionShape) {
            ConeCollisionShape coneCollisionShape = (ConeCollisionShape) collisionShape;
            float height2 = coneCollisionShape.getHeight();
            float radius2 = coneCollisionShape.getRadius();
            float f11 = height2 / 2.0f;
            int axis2 = coneCollisionShape.getAxis();
            if (axis2 == 0) {
                vector3f.set(f11, radius2, radius2);
            } else if (axis2 == 1) {
                vector3f.set(radius2, f11, radius2);
            } else {
                if (axis2 != 2) {
                    throw new IllegalArgumentException("axisIndex = " + axis2);
                }
                vector3f.set(radius2, radius2, f11);
            }
        } else if (collisionShape instanceof CylinderCollisionShape) {
            ((CylinderCollisionShape) collisionShape).getHalfExtents(vector3f);
        } else if (collisionShape instanceof HullCollisionShape) {
            ((HullCollisionShape) collisionShape).getHalfExtents(vector3f);
        } else if (collisionShape instanceof MultiSphere) {
            MultiSphere multiSphere = (MultiSphere) collisionShape;
            if (multiSphere.countSpheres() == 1) {
                float radius3 = multiSphere.getRadius(0);
                vector3f.set(radius3, radius3, radius3);
            }
        } else if (collisionShape instanceof SimplexCollisionShape) {
            ((SimplexCollisionShape) collisionShape).getHalfExtents(vector3f);
        } else {
            if (!(collisionShape instanceof SphereCollisionShape)) {
                throw new IllegalArgumentException(collisionShape.getClass().getCanonicalName() + " lacks half extents.");
            }
            float radius4 = ((SphereCollisionShape) collisionShape).getRadius();
            vector3f.set(radius4, radius4, radius4);
        }
        return vector3f;
    }

    public static float c(CollisionShape collisionShape) {
        float radius;
        C13702E.t(collisionShape, "shape");
        if (collisionShape instanceof CapsuleCollisionShape) {
            return ((CapsuleCollisionShape) collisionShape).getHeight();
        }
        if (collisionShape instanceof ConeCollisionShape) {
            return ((ConeCollisionShape) collisionShape).getHeight();
        }
        if (!(collisionShape instanceof CylinderCollisionShape)) {
            if (!(collisionShape instanceof MultiSphere)) {
                if (collisionShape instanceof SphereCollisionShape) {
                    radius = ((SphereCollisionShape) collisionShape).getRadius();
                }
                return Float.NaN;
            }
            MultiSphere multiSphere = (MultiSphere) collisionShape;
            if (multiSphere.countSpheres() == 1) {
                radius = multiSphere.getRadius(0);
            }
            return Float.NaN;
        }
        CylinderCollisionShape cylinderCollisionShape = (CylinderCollisionShape) collisionShape;
        radius = cylinderCollisionShape.getHalfExtents(null).get(cylinderCollisionShape.getAxis());
        return radius * 2.0f;
    }

    public static float[] d(CompoundCollisionShape compoundCollisionShape) {
        ChildCollisionShape[] listChildren = compoundCollisionShape.listChildren();
        int length = listChildren.length;
        float[] fArr = new float[length];
        for (int i10 = 0; i10 < length; i10++) {
            fArr[i10] = k(listChildren[i10].getShape());
        }
        return fArr;
    }

    public static int e(CollisionShape collisionShape) {
        if (collisionShape instanceof CapsuleCollisionShape) {
            return ((CapsuleCollisionShape) collisionShape).getAxis();
        }
        if (collisionShape instanceof ConeCollisionShape) {
            return ((ConeCollisionShape) collisionShape).getAxis();
        }
        if (collisionShape instanceof CylinderCollisionShape) {
            return ((CylinderCollisionShape) collisionShape).getAxis();
        }
        return -1;
    }

    public static long f(String str) {
        C13702E.j(str, TypedValues.Custom.S_STRING);
        String[] split = str.split(C16181m.f130230g);
        if (split.length == 2) {
            return Long.parseLong(split[1], 16);
        }
        throw new IllegalArgumentException("string = " + C13724t.s(str));
    }

    public static float g(CollisionShape collisionShape) {
        float f10;
        float f11;
        C13702E.t(collisionShape, "shape");
        if (collisionShape instanceof CapsuleCollisionShape) {
            return ((CapsuleCollisionShape) collisionShape).getRadius();
        }
        if (collisionShape instanceof ConeCollisionShape) {
            return ((ConeCollisionShape) collisionShape).getRadius();
        }
        if (collisionShape instanceof CylinderCollisionShape) {
            Vector3f b10 = b(collisionShape, null);
            int e10 = e(collisionShape);
            if (e10 == 0) {
                f10 = b10.f81612y;
                f11 = b10.f81613z;
            } else if (e10 == 1) {
                f10 = b10.f81611x;
                f11 = b10.f81613z;
            } else {
                if (e10 != 2) {
                    throw new IllegalArgumentException("axisIndex = " + e10);
                }
                f10 = b10.f81611x;
                f11 = b10.f81612y;
            }
            if (f10 == f11) {
                return f10;
            }
        } else if (collisionShape instanceof MultiSphere) {
            MultiSphere multiSphere = (MultiSphere) collisionShape;
            if (multiSphere.countSpheres() == 1) {
                return multiSphere.getRadius(0);
            }
        } else if (collisionShape instanceof SphereCollisionShape) {
            return ((SphereCollisionShape) collisionShape).getRadius();
        }
        return Float.NaN;
    }

    public static CollisionShape h(CollisionShape collisionShape, Vector3f vector3f) {
        float f10;
        float f11;
        float f12;
        CollisionShape capsuleCollisionShape;
        C13702E.t(collisionShape, "old shape");
        C13702E.s(vector3f, "new half extents");
        if (collisionShape instanceof BoxCollisionShape) {
            capsuleCollisionShape = new BoxCollisionShape(vector3f);
        } else {
            boolean z10 = collisionShape instanceof CapsuleCollisionShape;
            CylinderCollisionShape cylinderCollisionShape = null;
            if (z10 || (collisionShape instanceof ConeCollisionShape)) {
                int e10 = e(collisionShape);
                if (e10 == 0) {
                    f10 = vector3f.f81611x;
                    f11 = vector3f.f81612y;
                    f12 = vector3f.f81613z;
                } else if (e10 == 1) {
                    f10 = vector3f.f81612y;
                    f11 = vector3f.f81611x;
                    f12 = vector3f.f81613z;
                } else {
                    if (e10 != 2) {
                        throw new IllegalArgumentException("axisIndex = " + e10);
                    }
                    f10 = vector3f.f81613z;
                    f11 = vector3f.f81611x;
                    f12 = vector3f.f81612y;
                }
                if (f11 == f12) {
                    capsuleCollisionShape = z10 ? new CapsuleCollisionShape(f11, (f10 - f11) * 2.0f, e10) : new ConeCollisionShape(f11, f10 * 2.0f, e10);
                }
                capsuleCollisionShape = cylinderCollisionShape;
            } else {
                if (collisionShape instanceof CylinderCollisionShape) {
                    cylinderCollisionShape = new CylinderCollisionShape(vector3f, e(collisionShape));
                } else if ((collisionShape instanceof SphereCollisionShape) && jf.h.D(vector3f)) {
                    capsuleCollisionShape = new SphereCollisionShape(vector3f.f81611x);
                }
                capsuleCollisionShape = cylinderCollisionShape;
            }
        }
        if (capsuleCollisionShape != null) {
            capsuleCollisionShape.setContactFilterEnabled(collisionShape.isContactFilterEnabled());
            if (!(capsuleCollisionShape instanceof CapsuleCollisionShape) && !(capsuleCollisionShape instanceof SphereCollisionShape)) {
                capsuleCollisionShape.setMargin(collisionShape.getMargin());
            }
        }
        return capsuleCollisionShape;
    }

    public static CollisionShape i(CollisionShape collisionShape, float f10) {
        CollisionShape j10;
        CollisionShape cylinderCollisionShape;
        C13702E.t(collisionShape, "old shape");
        C13702E.p(f10, "new height");
        if (collisionShape instanceof BoxCollisionShape) {
            j10 = j(collisionShape, f10 / 2.0f);
        } else {
            if (collisionShape instanceof CapsuleCollisionShape) {
                cylinderCollisionShape = new CapsuleCollisionShape(g(collisionShape), f10, e(collisionShape));
            } else if (collisionShape instanceof ConeCollisionShape) {
                cylinderCollisionShape = new ConeCollisionShape(g(collisionShape), f10, e(collisionShape));
            } else if (collisionShape instanceof CylinderCollisionShape) {
                cylinderCollisionShape = new CylinderCollisionShape(g(collisionShape), f10, e(collisionShape));
            } else {
                j10 = collisionShape instanceof SphereCollisionShape ? j(collisionShape, f10 / 2.0f) : null;
            }
            j10 = cylinderCollisionShape;
        }
        if (j10 != null) {
            j10.setContactFilterEnabled(collisionShape.isContactFilterEnabled());
            if (!(j10 instanceof CapsuleCollisionShape) && !(j10 instanceof SphereCollisionShape)) {
                j10.setMargin(collisionShape.getMargin());
            }
        }
        return j10;
    }

    public static CollisionShape j(CollisionShape collisionShape, float f10) {
        CollisionShape sphereCollisionShape;
        CollisionShape cylinderCollisionShape;
        C13702E.t(collisionShape, "old shape");
        C13702E.p(f10, "new radius");
        if (collisionShape instanceof BoxCollisionShape) {
            sphereCollisionShape = new BoxCollisionShape(f10);
        } else {
            if (collisionShape instanceof CapsuleCollisionShape) {
                cylinderCollisionShape = new CapsuleCollisionShape(f10, c(collisionShape), e(collisionShape));
            } else if (collisionShape instanceof ConeCollisionShape) {
                cylinderCollisionShape = new ConeCollisionShape(f10, c(collisionShape), e(collisionShape));
            } else if (collisionShape instanceof CylinderCollisionShape) {
                cylinderCollisionShape = new CylinderCollisionShape(f10, c(collisionShape), e(collisionShape));
            } else {
                sphereCollisionShape = collisionShape instanceof SphereCollisionShape ? new SphereCollisionShape(f10) : null;
            }
            sphereCollisionShape = cylinderCollisionShape;
        }
        if (sphereCollisionShape != null) {
            sphereCollisionShape.setContactFilterEnabled(collisionShape.isContactFilterEnabled());
            if (!(sphereCollisionShape instanceof CapsuleCollisionShape) && !(sphereCollisionShape instanceof SphereCollisionShape)) {
                sphereCollisionShape.setMargin(collisionShape.getMargin());
            }
        }
        return sphereCollisionShape;
    }

    public static float k(CollisionShape collisionShape) {
        return collisionShape.scaledVolume();
    }
}
