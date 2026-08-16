package mf;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.bullet.CollisionConfiguration;
import com.jme3.bullet.MultiBody;
import com.jme3.bullet.SoftBodyWorldInfo;
import com.jme3.bullet.animation.PhysicsLink;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.Box2dShape;
import com.jme3.bullet.collision.shapes.BoxCollisionShape;
import com.jme3.bullet.collision.shapes.CapsuleCollisionShape;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.ConeCollisionShape;
import com.jme3.bullet.collision.shapes.ConicalFrustum;
import com.jme3.bullet.collision.shapes.Convex2dShape;
import com.jme3.bullet.collision.shapes.CustomConvexShape;
import com.jme3.bullet.collision.shapes.CylinderCollisionShape;
import com.jme3.bullet.collision.shapes.GImpactCollisionShape;
import com.jme3.bullet.collision.shapes.HeightfieldCollisionShape;
import com.jme3.bullet.collision.shapes.HullCollisionShape;
import com.jme3.bullet.collision.shapes.MeshCollisionShape;
import com.jme3.bullet.collision.shapes.MinkowskiSum;
import com.jme3.bullet.collision.shapes.MultiSphere;
import com.jme3.bullet.collision.shapes.PlaneCollisionShape;
import com.jme3.bullet.collision.shapes.SimplexCollisionShape;
import com.jme3.bullet.collision.shapes.SphereCollisionShape;
import com.jme3.bullet.collision.shapes.SphericalSegment;
import com.jme3.bullet.joints.Anchor;
import com.jme3.bullet.joints.Constraint;
import com.jme3.bullet.joints.JointEnd;
import com.jme3.bullet.joints.New6Dof;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.joints.SixDofJoint;
import com.jme3.bullet.joints.SoftAngularJoint;
import com.jme3.bullet.joints.SoftLinearJoint;
import com.jme3.bullet.joints.SoftPhysicsJoint;
import com.jme3.bullet.joints.motors.MotorParam;
import com.jme3.bullet.joints.motors.RotationalLimitMotor;
import com.jme3.bullet.joints.motors.TranslationalLimitMotor;
import com.jme3.bullet.objects.PhysicsBody;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.bullet.objects.VehicleWheel;
import com.jme3.bullet.objects.infos.ConfigFlag;
import com.jme3.bullet.objects.infos.Sbcp;
import com.jme3.bullet.objects.infos.SoftBodyConfig;
import com.jme3.bullet.objects.infos.SoftBodyMaterial;
import com.jme3.material.Material;
import com.jme3.math.Plane;
import com.jme3.math.Vector3f;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import java.util.logging.Logger;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.core.JavaElement;
import p000if.C13702E;
import p000if.C13724t;
import w2.C15883c;

public class C14236l extends jme3utilities.debug.c {

    public static final Logger f96975e = Logger.getLogger(C14236l.class.getName());

    public static void U(StringBuilder sb2, Object obj) {
        String obj2;
        String simpleName = obj.getClass().getSimpleName();
        if (obj instanceof Material) {
            sb2.append(simpleName);
            obj2 = ((Material) obj).getName();
        } else if (obj instanceof PhysicsLink) {
            sb2.append(simpleName);
            obj2 = ((PhysicsLink) obj).boneName();
        } else if (obj instanceof Spatial) {
            sb2.append(simpleName);
            obj2 = ((Spatial) obj).getName();
        } else if (obj instanceof String) {
            sb2.append(SerializableShaderEntry.f81157k);
            obj2 = (String) obj;
        } else {
            obj2 = obj.toString();
        }
        if (obj2 != null) {
            if (obj2.length() > 50) {
                obj2 = obj2.substring(0, 47) + "...";
            }
            sb2.append(C13724t.s(obj2));
        }
    }

    public static String r0(float f10, float f11) {
        return String.format(" h=%s r=%s", C13724t.e(f10), C13724t.e(f11));
    }

    @Override
    public boolean R(Control control) {
        C13702E.t(control, "control");
        return !C14232h.b(control) || C14232h.h(control);
    }

    public final void V(StringBuilder sb2, PhysicsCollisionObject physicsCollisionObject, boolean z10) {
        if (physicsCollisionObject.getApplicationData() == null && physicsCollisionObject.getUserObject() == null) {
            sb2.append(physicsCollisionObject.toString());
        } else {
            sb2.append('[');
            sb2.append(z10 ? physicsCollisionObject.toString() : physicsCollisionObject.getClass().getSimpleName().replace("Body", "").replace("Control", Signature.SIG_CHAR).replace("Physics", "").replace("Object", ""));
            sb2.append(m0(physicsCollisionObject));
            sb2.append(x0(physicsCollisionObject));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        if (physicsCollisionObject.isInWorld()) {
            return;
        }
        sb2.append("_NOT_IN_WORLD");
    }

    @Override
    public C14236l clone() throws CloneNotSupportedException {
        return (C14236l) super.clone();
    }

    public String X(CollisionConfiguration collisionConfiguration) {
        C13702E.t(collisionConfiguration, "configuration");
        int penetrationDepthSolver = collisionConfiguration.penetrationDepthSolver();
        return String.format("%s maxM=%d", penetrationDepthSolver != 0 ? penetrationDepthSolver != 1 ? Integer.toString(penetrationDepthSolver) : "epa" : "minkowski", Integer.valueOf(collisionConfiguration.maxManifolds()));
    }

    public String Y(SoftBodyWorldInfo softBodyWorldInfo) {
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("SbwInfo grav[");
        sb2.append(jf.h.m(softBodyWorldInfo.copyGravity(null)));
        sb2.append("] offset=");
        sb2.append(C13724t.e(softBodyWorldInfo.waterOffset()));
        sb2.append(" norm[");
        sb2.append(jf.h.m(softBodyWorldInfo.copyWaterNormal(null)));
        sb2.append("] water=");
        sb2.append(C13724t.e(softBodyWorldInfo.waterDensity()));
        sb2.append(" air=");
        sb2.append(C13724t.e(softBodyWorldInfo.airDensity()));
        sb2.append(" maxDisp=");
        sb2.append(C13724t.e(softBodyWorldInfo.maxDisplacement()));
        return sb2.toString();
    }

    public String Z(CollisionShape collisionShape) {
        C13702E.t(collisionShape, "shape");
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append(C14234j.a(collisionShape));
        if (collisionShape instanceof Box2dShape) {
            sb2.append(D(((Box2dShape) collisionShape).getHalfExtents(null)));
        } else if (collisionShape instanceof BoxCollisionShape) {
            sb2.append(D(((BoxCollisionShape) collisionShape).getHalfExtents(null)));
        } else if (collisionShape instanceof CapsuleCollisionShape) {
            CapsuleCollisionShape capsuleCollisionShape = (CapsuleCollisionShape) collisionShape;
            sb2.append(C13724t.c(capsuleCollisionShape.getAxis()));
            sb2.append(r0(capsuleCollisionShape.getHeight(), capsuleCollisionShape.getRadius()));
        } else if (collisionShape instanceof CompoundCollisionShape) {
            sb2.append(String.format("[%d]", Integer.valueOf(((CompoundCollisionShape) collisionShape).countChildren())));
        } else if (collisionShape instanceof ConeCollisionShape) {
            ConeCollisionShape coneCollisionShape = (ConeCollisionShape) collisionShape;
            sb2.append(C13724t.c(coneCollisionShape.getAxis()));
            sb2.append(r0(coneCollisionShape.getHeight(), coneCollisionShape.getRadius()));
        } else if (collisionShape instanceof ConicalFrustum) {
            ConicalFrustum conicalFrustum = (ConicalFrustum) collisionShape;
            sb2.append(" a=");
            sb2.append(C13724t.e(conicalFrustum.aRadius()));
            sb2.append(" b=");
            sb2.append(C13724t.e(conicalFrustum.bRadius()));
            sb2.append(" h=");
            sb2.append(C13724t.e(conicalFrustum.height()));
        } else if (collisionShape instanceof Convex2dShape) {
            String Z10 = Z(((Convex2dShape) collisionShape).getBaseShape());
            sb2.append('[');
            sb2.append(Z10);
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (collisionShape instanceof CylinderCollisionShape) {
            CylinderCollisionShape cylinderCollisionShape = (CylinderCollisionShape) collisionShape;
            sb2.append(C13724t.c(cylinderCollisionShape.getAxis()));
            sb2.append(D(cylinderCollisionShape.getHalfExtents(null)));
        } else if (collisionShape instanceof GImpactCollisionShape) {
            GImpactCollisionShape gImpactCollisionShape = (GImpactCollisionShape) collisionShape;
            sb2.append(String.format("[numS=%s numT=%d numV=%d]", Integer.valueOf(gImpactCollisionShape.countSubmeshes()), Integer.valueOf(gImpactCollisionShape.countMeshTriangles()), Integer.valueOf(gImpactCollisionShape.countMeshVertices())));
        } else if (collisionShape instanceof HeightfieldCollisionShape) {
            HeightfieldCollisionShape heightfieldCollisionShape = (HeightfieldCollisionShape) collisionShape;
            sb2.append(String.format("[%dx%d %sup]", Integer.valueOf(heightfieldCollisionShape.countRows()), Integer.valueOf(heightfieldCollisionShape.countColumns()), C13724t.c(heightfieldCollisionShape.upAxis())));
        } else if (collisionShape instanceof HullCollisionShape) {
            sb2.append(String.format("[%d]", Integer.valueOf(((HullCollisionShape) collisionShape).countHullVertices())));
        } else if (collisionShape instanceof MeshCollisionShape) {
            MeshCollisionShape meshCollisionShape = (MeshCollisionShape) collisionShape;
            sb2.append(String.format("[numS=%s numT=%d numV=%d %scompressed]", Integer.valueOf(meshCollisionShape.countSubmeshes()), Integer.valueOf(meshCollisionShape.countMeshTriangles()), Integer.valueOf(meshCollisionShape.countMeshVertices()), meshCollisionShape.getBvh().isCompressed() ? "" : "UN"));
        } else if (collisionShape instanceof MinkowskiSum) {
            sb2.append("[");
            MinkowskiSum minkowskiSum = (MinkowskiSum) collisionShape;
            sb2.append(Z(minkowskiSum.getShapeA()));
            sb2.append("]+[");
            sb2.append(Z(minkowskiSum.getShapeB()));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (collisionShape instanceof MultiSphere) {
            MultiSphere multiSphere = (MultiSphere) collisionShape;
            sb2.append(" r[");
            int countSpheres = multiSphere.countSpheres();
            String S10 = S();
            for (int i10 = 0; i10 < countSpheres; i10++) {
                if (i10 > 0) {
                    sb2.append(S10);
                }
                sb2.append(C13724t.e(multiSphere.getRadius(i10)));
            }
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (collisionShape instanceof PlaneCollisionShape) {
            Plane plane = ((PlaneCollisionShape) collisionShape).getPlane();
            sb2.append(" normal[");
            sb2.append(jf.h.m(plane.getNormal()));
            sb2.append("] constant=");
            sb2.append(C13724t.e(plane.getConstant()));
        } else if (collisionShape instanceof SimplexCollisionShape) {
            sb2.append(String.format("[%d]", Integer.valueOf(((SimplexCollisionShape) collisionShape).countMeshVertices())));
        } else if (collisionShape instanceof SphereCollisionShape) {
            sb2.append(" r=");
            sb2.append(C13724t.e(((SphereCollisionShape) collisionShape).getRadius()));
        } else if (collisionShape instanceof SphericalSegment) {
            SphericalSegment sphericalSegment = (SphericalSegment) collisionShape;
            sb2.append(" r=");
            sb2.append(C13724t.e(sphericalSegment.sphereRadius()));
            sb2.append(" y[");
            sb2.append(C13724t.e(sphericalSegment.yMin()));
            sb2.append(C15883c.f126249O);
            sb2.append(C13724t.e(sphericalSegment.yMax()));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (!(collisionShape instanceof CustomConvexShape)) {
            sb2.append('?');
        }
        if ((collisionShape instanceof GImpactCollisionShape) || (collisionShape instanceof HeightfieldCollisionShape) || (collisionShape instanceof MeshCollisionShape)) {
            sb2.append(C15883c.f126249O);
            if (!collisionShape.isContactFilterEnabled()) {
                sb2.append("UN");
            }
            sb2.append("filtered");
        }
        sb2.append(" marg=");
        sb2.append(C13724t.e(collisionShape.getMargin()));
        int userIndex = collisionShape.userIndex();
        if (userIndex != -1) {
            sb2.append(" userIndex=");
            sb2.append(userIndex);
        }
        int userIndex2 = collisionShape.userIndex2();
        if (userIndex2 != -1) {
            sb2.append(" userIndex2=");
            sb2.append(userIndex2);
        }
        return sb2.toString();
    }

    public String c0(PhysicsJoint physicsJoint) {
        StringBuilder sb2 = new StringBuilder(40);
        String simpleName = physicsJoint.getClass().getSimpleName();
        if (simpleName.endsWith("Joint")) {
            simpleName = C13724t.w(simpleName, "Joint");
        }
        sb2.append(simpleName);
        if (!physicsJoint.isEnabled()) {
            sb2.append(" DISABLED");
        }
        return sb2.toString();
    }

    public String d0(RotationalLimitMotor rotationalLimitMotor) {
        StringBuilder sb2 = new StringBuilder(80);
        if (rotationalLimitMotor.isEnableMotor()) {
            sb2.append(rotationalLimitMotor.getAngle());
            float lowerLimit = rotationalLimitMotor.getLowerLimit();
            float upperLimit = rotationalLimitMotor.getUpperLimit();
            if (upperLimit < lowerLimit) {
                sb2.append(" unlimited");
            } else {
                sb2.append(" lo=");
                sb2.append(C13724t.e(lowerLimit));
                sb2.append(" hi=");
                sb2.append(C13724t.e(upperLimit));
            }
            sb2.append(" tgtV=");
            sb2.append(C13724t.e(rotationalLimitMotor.getTargetVelocity()));
            sb2.append(" cfm=");
            sb2.append(C13724t.e(rotationalLimitMotor.getNormalCFM()));
            sb2.append(" damp=");
            sb2.append(C13724t.e(rotationalLimitMotor.getDamping()));
            sb2.append(" maxMF=");
            sb2.append(C13724t.e(rotationalLimitMotor.getMaxMotorForce()));
            if (upperLimit >= lowerLimit) {
                sb2.append(" lim[cfm=");
                sb2.append(C13724t.e(rotationalLimitMotor.getStopCFM()));
                sb2.append(" erp=");
                sb2.append(C13724t.e(rotationalLimitMotor.getERP()));
                sb2.append(" maxMF=");
                sb2.append(C13724t.e(rotationalLimitMotor.getMaxLimitForce()));
                sb2.append(" rest=");
                sb2.append(C13724t.e(rotationalLimitMotor.getRestitution()));
                sb2.append(" soft=");
                sb2.append(C13724t.e(rotationalLimitMotor.getLimitSoftness()));
                sb2.append(JavaElement.JEM_TYPE_PARAMETER);
            }
        } else {
            sb2.append(" DISABLED");
        }
        return sb2.toString();
    }

    public String e0(TranslationalLimitMotor translationalLimitMotor, int i10) {
        C13702E.a(i10, "axis index");
        StringBuilder sb2 = new StringBuilder(80);
        Vector3f vector3f = new Vector3f();
        if (translationalLimitMotor.isEnabled(i10)) {
            sb2.append(translationalLimitMotor.getOffset(vector3f).get(i10));
            float f10 = translationalLimitMotor.getLowerLimit(vector3f).get(i10);
            float f11 = translationalLimitMotor.getUpperLimit(vector3f).get(i10);
            if (f11 < f10) {
                sb2.append(" unlimited");
            } else {
                sb2.append(" lo=");
                sb2.append(C13724t.e(f10));
                sb2.append(" hi=");
                sb2.append(C13724t.e(f11));
            }
            sb2.append(" tgtV=");
            sb2.append(C13724t.e(translationalLimitMotor.getTargetVelocity(vector3f).get(i10)));
            sb2.append(" cfm=");
            sb2.append(C13724t.e(translationalLimitMotor.getNormalCFM(vector3f).get(i10)));
            sb2.append(" damp=");
            sb2.append(C13724t.e(translationalLimitMotor.getDamping()));
            sb2.append(" maxMF=");
            sb2.append(C13724t.e(translationalLimitMotor.getMaxMotorForce(vector3f).get(i10)));
            if (f11 >= f10) {
                sb2.append(" lim[cfm=");
                sb2.append(C13724t.e(translationalLimitMotor.getStopCFM(vector3f).get(i10)));
                sb2.append(" erp=");
                sb2.append(C13724t.e(translationalLimitMotor.getERP(vector3f).get(i10)));
                sb2.append(" rest=");
                sb2.append(C13724t.e(translationalLimitMotor.getRestitution()));
                sb2.append(" soft=");
                sb2.append(C13724t.e(translationalLimitMotor.getLimitSoftness()));
                sb2.append(JavaElement.JEM_TYPE_PARAMETER);
            }
        } else {
            sb2.append(" DISABLED");
        }
        return sb2.toString();
    }

    public String f0(VehicleWheel vehicleWheel) {
        StringBuilder sb2 = new StringBuilder(80);
        if (vehicleWheel.isFrontWheel()) {
            sb2.append("frnt");
        } else {
            sb2.append("rear");
        }
        sb2.append(" r=");
        sb2.append(C13724t.e(vehicleWheel.getRadius()));
        sb2.append(" loc[");
        sb2.append(jf.h.m(vehicleWheel.getLocation(null)));
        sb2.append("] axleDir[");
        sb2.append(jf.h.m(vehicleWheel.getAxle(null)));
        sb2.append("] fSlip=");
        sb2.append(C13724t.e(vehicleWheel.getFrictionSlip()));
        sb2.append(" rollInf=");
        sb2.append(C13724t.e(vehicleWheel.getRollInfluence()));
        sb2.append(" sus[damp[co=");
        sb2.append(C13724t.e(vehicleWheel.getWheelsDampingCompression()));
        sb2.append(" re=");
        sb2.append(C13724t.e(vehicleWheel.getWheelsDampingRelaxation()));
        sb2.append("] down[");
        sb2.append(jf.h.m(vehicleWheel.getDirection(null)));
        sb2.append("] maxF=");
        sb2.append(C13724t.e(vehicleWheel.getMaxSuspensionForce()));
        sb2.append("] maxTrav=");
        sb2.append(C13724t.e(vehicleWheel.getMaxSuspensionTravelCm()));
        sb2.append(" restL=");
        sb2.append(C13724t.e(vehicleWheel.getRestLength()));
        sb2.append(" stiff=");
        sb2.append(C13724t.e(vehicleWheel.getSuspensionStiffness()));
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        return sb2.toString();
    }

    public String g0(SoftBodyMaterial softBodyMaterial) {
        return String.format("Material stiffness[ang=%s lin=%s vol=%s]", C13724t.e(softBodyMaterial.angularStiffness()), C13724t.e(softBodyMaterial.linearStiffness()), C13724t.e(softBodyMaterial.volumeStiffness()));
    }

    public String h0(SoftBodyConfig softBodyConfig) {
        StringBuilder sb2 = new StringBuilder(120);
        sb2.append("Config aero=");
        sb2.append(softBodyConfig.aerodynamics().toString());
        sb2.append(" flags=");
        sb2.append(ConfigFlag.describe(softBodyConfig.collisionFlags()));
        sb2.append(String.format(" maxVolRatio=%s timeScale=%s velCorr=%s", C13724t.e(softBodyConfig.get(Sbcp.MaxVolumeRatio)), C13724t.e(softBodyConfig.get(Sbcp.TimeScale)), C13724t.e(softBodyConfig.get(Sbcp.VelocityCorrection))));
        sb2.append(String.format("  coef[damp=%s drag=%s fric=%s lift=%s pose=%s pres=%s volCons=%s]", C13724t.e(softBodyConfig.get(Sbcp.Damping)), C13724t.e(softBodyConfig.get(Sbcp.Drag)), C13724t.e(softBodyConfig.get(Sbcp.DynamicFriction)), C13724t.e(softBodyConfig.get(Sbcp.Lift)), C13724t.e(softBodyConfig.get(Sbcp.PoseMatching)), C13724t.e(softBodyConfig.get(Sbcp.Pressure)), C13724t.e(softBodyConfig.get(Sbcp.VolumeConservation))));
        return sb2.toString();
    }

    public String i0(VehicleWheel vehicleWheel) {
        StringBuilder sb2 = new StringBuilder(120);
        sb2.append(" brake=");
        sb2.append(C13724t.e(vehicleWheel.getBrake()));
        sb2.append(" engF=");
        sb2.append(C13724t.e(vehicleWheel.getEngineForce()));
        sb2.append(" steer=");
        sb2.append(C13724t.e(vehicleWheel.getSteerAngle()));
        sb2.append(" susLen=");
        sb2.append(C13724t.e(vehicleWheel.getSuspensionLength()));
        return sb2.toString();
    }

    public String j0(SoftBodyConfig softBodyConfig) {
        StringBuilder sb2 = new StringBuilder(120);
        sb2.append(String.format(" hardness[a=%s clk=%s clr=%s cls=%s k=%s r=%s s=%s]", C13724t.e(softBodyConfig.get(Sbcp.AnchorHardness)), C13724t.e(softBodyConfig.get(Sbcp.ClusterKineticHardness)), C13724t.e(softBodyConfig.get(Sbcp.ClusterRigidHardness)), C13724t.e(softBodyConfig.get(Sbcp.ClusterSoftHardness)), C13724t.e(softBodyConfig.get(Sbcp.KineticHardness)), C13724t.e(softBodyConfig.get(Sbcp.RigidHardness)), C13724t.e(softBodyConfig.get(Sbcp.SoftHardness))));
        sb2.append(String.format("  impSplit[clk=%s clr=%s cls=%s]", C13724t.e(softBodyConfig.get(Sbcp.ClusterKineticSplit)), C13724t.e(softBodyConfig.get(Sbcp.ClusterRigidSplit)), C13724t.e(softBodyConfig.get(Sbcp.ClusterSoftSplit))));
        sb2.append(String.format("  iters[cl=%d drift=%d pos=%d vel=%d]", Integer.valueOf(softBodyConfig.clusterIterations()), Integer.valueOf(softBodyConfig.driftIterations()), Integer.valueOf(softBodyConfig.positionIterations()), Integer.valueOf(softBodyConfig.velocityIterations())));
        return sb2.toString();
    }

    public final String k0(Anchor anchor, boolean z10) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append(c0(anchor));
        sb2.append(" a=");
        V(sb2, anchor.getSoftBody(), z10);
        sb2.append(" [");
        sb2.append(anchor.nodeIndex());
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        sb2.append(" b=");
        V(sb2, anchor.getRigidBody(), z10);
        sb2.append(" piv[");
        sb2.append(jf.h.m(anchor.copyPivot(null)));
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        sb2.append(" infl=");
        sb2.append(C13724t.e(anchor.influence()));
        return sb2.toString();
    }

    public String l0(SixDofJoint sixDofJoint) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append("angles[");
        sb2.append(jf.h.m(sixDofJoint.getAngles(new Vector3f())));
        sb2.append("] lo[");
        sb2.append(jf.h.m(sixDofJoint.getAngularLowerLimit(new Vector3f())));
        sb2.append("] hi[");
        sb2.append(jf.h.m(sixDofJoint.getAngularUpperLimit(new Vector3f())));
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        return sb2.toString();
    }

    public String m0(PhysicsCollisionObject physicsCollisionObject) {
        C13702E.t(physicsCollisionObject, "collision object");
        Object applicationData = physicsCollisionObject.getApplicationData();
        if (applicationData == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append(" aData=");
        U(sb2, applicationData);
        return sb2.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String n0(Constraint constraint, boolean z10) {
        int i10;
        PhysicsRigidBody bodyB;
        float breakingImpulseThreshold;
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append(c0(constraint));
        if (constraint.countEnds() == 2) {
            if (constraint.isCollisionBetweenLinkedBodies()) {
                sb2.append(" collide");
            } else {
                sb2.append(" NOcollide");
            }
        }
        int overrideIterations = constraint.getOverrideIterations();
        if (overrideIterations != -1) {
            sb2.append(" iters=");
            sb2.append(overrideIterations);
        }
        PhysicsRigidBody bodyA = constraint.getBodyA();
        if (bodyA != null) {
            sb2.append(" a:");
            V(sb2, bodyA, z10);
            if (bodyA.isDynamic()) {
                i10 = 1;
                bodyB = constraint.getBodyB();
                if (bodyB != null) {
                    sb2.append(" b:");
                    V(sb2, bodyB, z10);
                    if (bodyB.isDynamic()) {
                        i10++;
                    }
                }
                if (i10 == 0) {
                    sb2.append(" NO_DYNAMIC_END");
                }
                if (constraint.isFeedback()) {
                    float appliedImpulse = constraint.getAppliedImpulse();
                    sb2.append(" impulse=");
                    sb2.append(appliedImpulse);
                }
                breakingImpulseThreshold = constraint.getBreakingImpulseThreshold();
                if (breakingImpulseThreshold != Float.MAX_VALUE) {
                    sb2.append(" bit=");
                    sb2.append(C13724t.e(breakingImpulseThreshold));
                }
                if (z10) {
                    sb2.append(" #");
                    sb2.append(Long.toHexString(constraint.nativeId()));
                }
                return sb2.toString();
            }
        }
        i10 = 0;
        bodyB = constraint.getBodyB();
        if (bodyB != null) {
        }
        if (i10 == 0) {
        }
        if (constraint.isFeedback()) {
        }
        breakingImpulseThreshold = constraint.getBreakingImpulseThreshold();
        if (breakingImpulseThreshold != Float.MAX_VALUE) {
        }
        if (z10) {
        }
        return sb2.toString();
    }

    public String o0(New6Dof new6Dof, int i10) {
        C13702E.i(i10, "DOF index", 0, 5);
        StringBuilder sb2 = new StringBuilder(80);
        float f10 = new6Dof.get(MotorParam.LowerLimit, i10);
        float f11 = new6Dof.get(MotorParam.UpperLimit, i10);
        if (f11 < f10) {
            sb2.append(" free");
        } else if (f11 == f10) {
            sb2.append(" lock[");
            sb2.append(C13724t.e(f10));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        } else {
            sb2.append(" lims[");
            sb2.append(C13724t.e(f10));
            sb2.append(C15883c.f126249O);
            sb2.append(C13724t.e(f11));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        sb2.append(" motor[");
        if (new6Dof.isMotorEnabled(i10)) {
            if (new6Dof.isServoEnabled(i10)) {
                sb2.append("servo target=");
                sb2.append(C13724t.e(new6Dof.get(MotorParam.ServoTarget, i10)));
                sb2.append(" ");
            }
            sb2.append("tgtV=");
            sb2.append(C13724t.e(new6Dof.get(MotorParam.TargetVelocity, i10)));
            sb2.append(" cfm=");
            sb2.append(C13724t.e(new6Dof.get(MotorParam.MotorCfm, i10)));
            sb2.append(" erp=");
            sb2.append(C13724t.e(new6Dof.get(MotorParam.MotorErp, i10)));
            sb2.append(" maxF=");
            sb2.append(C13724t.e(new6Dof.get(MotorParam.MaxMotorForce, i10)));
        } else {
            sb2.append("off");
        }
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        if (f11 >= f10) {
            sb2.append(" lim[bounce=");
            sb2.append(C13724t.e(new6Dof.get(MotorParam.Bounce, i10)));
            sb2.append(" cfm=");
            sb2.append(C13724t.e(new6Dof.get(MotorParam.StopCfm, i10)));
            sb2.append(" erp=");
            sb2.append(C13724t.e(new6Dof.get(MotorParam.StopErp, i10)));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        sb2.append(" spring[");
        if (new6Dof.isSpringEnabled(i10)) {
            sb2.append("eq=");
            sb2.append(C13724t.e(new6Dof.get(MotorParam.Equilibrium, i10)));
            sb2.append(" stif=");
            sb2.append(C13724t.e(new6Dof.get(MotorParam.Stiffness, i10)));
            sb2.append(" damp=");
            sb2.append(C13724t.e(new6Dof.get(MotorParam.Damping, i10)));
        } else {
            sb2.append("off");
        }
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        return sb2.toString();
    }

    public String p0(MultiBody multiBody) {
        StringBuilder sb2 = new StringBuilder(40);
        int collisionGroup = multiBody.collisionGroup();
        if (collisionGroup != 1) {
            sb2.append(" group=0x");
            sb2.append(Integer.toHexString(collisionGroup));
        }
        int collideWithGroups = multiBody.collideWithGroups();
        if (collideWithGroups != 1) {
            sb2.append(" gMask=0x");
            sb2.append(Integer.toHexString(collideWithGroups));
        }
        return sb2.toString();
    }

    public String q0(PhysicsCollisionObject physicsCollisionObject) {
        StringBuilder sb2 = new StringBuilder(40);
        int collisionGroup = physicsCollisionObject.getCollisionGroup();
        if (collisionGroup != 1) {
            sb2.append(" group=0x");
            sb2.append(Integer.toHexString(collisionGroup));
        }
        int collideWithGroups = physicsCollisionObject.getCollideWithGroups();
        if (collideWithGroups != 1) {
            sb2.append(" gMask=0x");
            sb2.append(Integer.toHexString(collideWithGroups));
        }
        return sb2.toString();
    }

    public String s0(PhysicsJoint physicsJoint, PhysicsBody physicsBody, boolean z10) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append(c0(physicsJoint));
        if (physicsJoint.countEnds() == 1) {
            sb2.append(" single-ended");
        } else {
            sb2.append(" to");
            V(sb2, physicsJoint.findOtherBody(physicsBody), z10);
        }
        JointEnd findEnd = physicsJoint.findEnd(physicsBody);
        if (physicsJoint instanceof Constraint) {
            sb2.append(" piv[");
            sb2.append(jf.h.m(((Constraint) physicsJoint).getPivot(findEnd, null)));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        if (physicsJoint instanceof New6Dof) {
            sb2.append(" rot[");
            sb2.append(C13724t.h(((New6Dof) physicsJoint).getRotationMatrix(findEnd, null)));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (physicsJoint instanceof SoftAngularJoint) {
            sb2.append(" axis[");
            sb2.append(jf.h.m(((SoftAngularJoint) physicsJoint).copyAxis(null)));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (physicsJoint instanceof SoftLinearJoint) {
            sb2.append(" loc[");
            sb2.append(jf.h.m(((SoftLinearJoint) physicsJoint).copyLocation(null)));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        return sb2.toString();
    }

    public String t0(PhysicsJoint physicsJoint, boolean z10) {
        return physicsJoint instanceof Anchor ? k0((Anchor) physicsJoint, z10) : physicsJoint instanceof Constraint ? n0((Constraint) physicsJoint, z10) : w0((SoftPhysicsJoint) physicsJoint, z10);
    }

    @Override
    public String u(Control control) {
        C13702E.t(control, "control");
        return C14232h.c(control);
    }

    public String u0(SixDofJoint sixDofJoint) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append("offset[");
        sb2.append(jf.h.m(sixDofJoint.getPivotOffset(new Vector3f())));
        sb2.append("] lo[");
        sb2.append(jf.h.m(sixDofJoint.getLinearLowerLimit(new Vector3f())));
        sb2.append("] hi[");
        sb2.append(jf.h.m(sixDofJoint.getLinearUpperLimit(new Vector3f())));
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        return sb2.toString();
    }

    public String v0(PhysicsCollisionObject physicsCollisionObject, boolean z10) {
        StringBuilder sb2 = new StringBuilder(80);
        V(sb2, physicsCollisionObject, z10);
        return sb2.toString();
    }

    public final String w0(SoftPhysicsJoint softPhysicsJoint, boolean z10) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append(c0(softPhysicsJoint));
        PhysicsSoftBody softBodyA = softPhysicsJoint.getSoftBodyA();
        sb2.append(" a=");
        V(sb2, softBodyA, z10);
        sb2.append(" [");
        sb2.append(softPhysicsJoint.clusterIndexA());
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        PhysicsBody body = softPhysicsJoint.getBody(JointEnd.B);
        sb2.append(" b=");
        V(sb2, body, z10);
        if (softPhysicsJoint.isSoftSoft()) {
            sb2.append(" [");
            sb2.append(softPhysicsJoint.clusterIndexB());
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        sb2.append(" cfm=");
        sb2.append(C13724t.e(softPhysicsJoint.getCFM()));
        sb2.append(" erp=");
        sb2.append(C13724t.e(softPhysicsJoint.getERP()));
        sb2.append(" split=");
        sb2.append(C13724t.e(softPhysicsJoint.getSplit()));
        return sb2.toString();
    }

    public String x0(PhysicsCollisionObject physicsCollisionObject) {
        C13702E.t(physicsCollisionObject, "collision object");
        Object userObject = physicsCollisionObject.getUserObject();
        if (userObject == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append(" user=");
        U(sb2, userObject);
        return sb2.toString();
    }
}
