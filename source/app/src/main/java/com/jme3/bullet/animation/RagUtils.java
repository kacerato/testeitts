package com.jme3.bullet.animation;

import com.ardor3d.util.resource.ResourceLocatorTool;
import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.anim.SkinningControl;
import com.jme3.animation.Bone;
import com.jme3.animation.Skeleton;
import com.jme3.animation.SkeletonControl;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.CylinderCollisionShape;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.objects.PhysicsBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Eigen3f;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.UserData;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.control.AbstractControl;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.logging.Logger;
import jf.d;
import jf.f;
import jf.g;
import jf.h;
import jf.m;
import jf.o;
import jf.p;
import p000if.C13702E;
import p000if.C13720p;
import p000if.C13722r;
import p000if.C13723s;
import p000if.C13724t;

public final class RagUtils {
    static final boolean $assertionsDisabled = false;
    private static final Logger logger = Logger.getLogger(RagUtils.class.getName());

    private RagUtils() {
    }

    private static void addWeights(Mesh mesh, float[] fArr) {
        int maxNumWeights = mesh.getMaxNumWeights();
        if (maxNumWeights <= 0) {
            maxNumWeights = 1;
        }
        Buffer dataReadOnly = mesh.getBuffer(VertexBuffer.Type.BoneIndex).getDataReadOnly();
        dataReadOnly.rewind();
        dataReadOnly.remaining();
        int remaining = dataReadOnly.remaining() / 4;
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.BoneWeight);
        floatBuffer.rewind();
        floatBuffer.remaining();
        for (int i10 = 0; i10 < remaining; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                float f10 = floatBuffer.get();
                int r10 = d.r(dataReadOnly);
                if (i11 < maxNumWeights) {
                    fArr[r10] = fArr[r10] + FastMath.abs(f10);
                }
            }
        }
    }

    public static Map<String, o> coordsMap(Mesh[] meshArr, String[] strArr) {
        C13702E.t(strArr, "manager map");
        HashMap hashMap = new HashMap(32);
        if (strArr.length == 0) {
            return hashMap;
        }
        float[] fArr = new float[4];
        int[] iArr = new int[4];
        Vector3f vector3f = new Vector3f();
        for (Mesh mesh : meshArr) {
            int vertexCount = mesh.getVertexCount();
            for (int i10 = 0; i10 < vertexCount; i10++) {
                String findManager = findManager(mesh, i10, iArr, fArr, strArr);
                o oVar = (o) hashMap.get(findManager);
                if (oVar == null) {
                    oVar = new p(1, false);
                    hashMap.put(findManager, oVar);
                }
                C13720p.Z(mesh, VertexBuffer.Type.BindPosePosition, i10, vector3f);
                oVar.a(vector3f);
            }
        }
        return hashMap;
    }

    public static Bone findMainBone(Skeleton skeleton, Mesh[] meshArr) {
        C13702E.t(meshArr, "target meshes");
        Bone[] roots = skeleton.getRoots();
        if (roots.length == 1) {
            return roots[0];
        }
        float[] fArr = totalWeights(meshArr, skeleton);
        Bone bone = null;
        float f10 = Float.NEGATIVE_INFINITY;
        for (Bone bone2 : roots) {
            float f11 = fArr[skeleton.getBoneIndex(bone2)];
            if (f11 > f10) {
                bone = bone2;
                f10 = f11;
            }
        }
        return bone;
    }

    public static Joint findMainJoint(Armature armature, Mesh[] meshArr) {
        C13702E.t(meshArr, "target meshes");
        Joint[] roots = armature.getRoots();
        if (roots.length == 1) {
            return roots[0];
        }
        float[] fArr = totalWeights(meshArr, armature);
        Joint joint = null;
        float f10 = Float.NEGATIVE_INFINITY;
        for (Joint joint2 : roots) {
            float f11 = fArr[joint2.getId()];
            if (f11 > f10) {
                joint = joint2;
                f10 = f11;
            }
        }
        return joint;
    }

    public static String findManager(Mesh mesh, int i10, int[] iArr, float[] fArr, String[] strArr) {
        C13702E.t(mesh, "mesh");
        C13702E.q(i10, "vertex index");
        C13702E.t(iArr, "index array");
        C13702E.t(fArr, "weight array");
        C13702E.t(strArr, "manager map");
        C13720p.R(mesh, i10, iArr);
        C13720p.S(mesh, i10, fArr);
        float f10 = Float.NEGATIVE_INFINITY;
        String str = null;
        for (Map.Entry<String, Float> entry : weightMap(iArr, fArr, strArr).entrySet()) {
            float floatValue = entry.getValue().floatValue();
            if (floatValue >= f10) {
                str = entry.getKey();
                f10 = floatValue;
            }
        }
        return str;
    }

    public static AbstractControl findSControl(Spatial spatial) {
        if (spatial == null) {
            return null;
        }
        List A10 = C13723s.A(spatial, SkinningControl.class, null);
        List A11 = C13723s.A(spatial, SkeletonControl.class, null);
        if (A11.isEmpty() && A10.size() == 1) {
            return (AbstractControl) A10.get(0);
        }
        if (A10.isEmpty() && A11.size() == 1) {
            return (AbstractControl) A11.get(0);
        }
        return null;
    }

    public static void ignoreCollisions(PhysicsBody physicsBody, PhysicsBody physicsBody2, int i10, Map<PhysicsBody, Integer> map) {
        if (i10 <= 0) {
            return;
        }
        int i11 = i10 - 1;
        for (PhysicsJoint physicsJoint : physicsBody2.listJoints()) {
            PhysicsBody findOtherBody = physicsJoint.findOtherBody(physicsBody2);
            if (findOtherBody != null && findOtherBody != physicsBody && (!map.containsKey(findOtherBody) || i11 > map.get(findOtherBody).intValue())) {
                physicsBody.addToIgnoreList(findOtherBody);
                map.put(findOtherBody, Integer.valueOf(i11));
                ignoreCollisions(physicsBody, findOtherBody, i11, map);
            }
        }
    }

    public static List<Mesh> listDacMeshes(Spatial spatial, List<Mesh> list) {
        Boolean bool;
        if (list == null) {
            list = new ArrayList<>(10);
        }
        if (spatial != null && (bool = (Boolean) spatial.getUserData(UserData.JME_PHYSICSIGNORE)) != null && bool.booleanValue()) {
            return list;
        }
        if (spatial instanceof Geometry) {
            Mesh mesh = ((Geometry) spatial).getMesh();
            if (C13720p.v(mesh) && !list.contains(mesh)) {
                list.add(mesh);
            }
        } else if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                listDacMeshes(it.next(), list);
            }
        }
        return list;
    }

    public static Set<PhysicsJoint> listInternalJoints(PhysicsBody... physicsBodyArr) {
        TreeSet treeSet = new TreeSet();
        for (PhysicsBody physicsBody : physicsBodyArr) {
            for (PhysicsJoint physicsJoint : physicsBody.listJoints()) {
                PhysicsBody findOtherBody = physicsJoint.findOtherBody(physicsBody);
                int length = physicsBodyArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    if (physicsBodyArr[i10] == findOtherBody) {
                        treeSet.add(physicsJoint);
                        break;
                    }
                    i10++;
                }
            }
        }
        return treeSet;
    }

    public static CompoundCollisionShape makeCylinder(o oVar, Vector3f vector3f) {
        C13702E.t(vector3f, "scale factors");
        C13702E.H(oVar.m() > 1, "multiple vectors");
        m makeRectangularSolid = makeRectangularSolid(oVar, vector3f);
        Vector3f c10 = makeRectangularSolid.c(null);
        float B10 = f.B(c10.f81611x, c10.f81612y, c10.f81613z);
        float F10 = f.F(c10.f81611x, c10.f81612y, c10.f81613z);
        float G10 = f.G(c10.f81611x, c10.f81612y, c10.f81613z);
        if (B10 - F10 <= F10 - G10) {
            B10 = G10;
        }
        Vector3f vector3f2 = new Vector3f();
        float f10 = 0.0f;
        if (B10 == c10.f81611x) {
            vector3f2.set(1.0f, 0.0f, 0.0f);
        } else if (B10 == c10.f81612y) {
            vector3f2.set(0.0f, 1.0f, 0.0f);
        } else {
            vector3f2.set(0.0f, 0.0f, 1.0f);
        }
        g.r(makeRectangularSolid.e(null), vector3f2, vector3f2);
        FloatBuffer j10 = oVar.j();
        Vector3f k10 = oVar.k(null);
        Vector3f vector3f3 = new Vector3f();
        j10.rewind();
        double d10 = 0.0d;
        while (j10.hasRemaining()) {
            vector3f3.f81611x = j10.get();
            vector3f3.f81612y = j10.get();
            vector3f3.f81613z = j10.get();
            vector3f3.subtractLocal(k10);
            float dot = vector3f3.dot(vector3f2);
            float abs = FastMath.abs(dot);
            if (abs > f10) {
                f10 = abs;
            }
            h.c(vector3f3, vector3f2, -dot);
            double F11 = h.F(vector3f3);
            if (F11 > d10) {
                d10 = F11;
            }
        }
        CylinderCollisionShape cylinderCollisionShape = new CylinderCollisionShape((float) Math.sqrt(d10), f10 * 2.0f, 0);
        Vector3f vector3f4 = new Vector3f();
        Vector3f vector3f5 = new Vector3f();
        h.u(vector3f2, vector3f4, vector3f5);
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.fromAxes(vector3f2, vector3f4, vector3f5);
        CompoundCollisionShape compoundCollisionShape = new CompoundCollisionShape();
        compoundCollisionShape.addChildShape(cylinderCollisionShape, k10, matrix3f);
        return compoundCollisionShape;
    }

    public static m makeRectangularSolid(o oVar, Vector3f vector3f) {
        C13702E.t(vector3f, "scale factors");
        C13702E.H(oVar.m() > 1, "multiple vectors");
        Quaternion fromAxes = new Quaternion().fromAxes(new Eigen3f(oVar.e(null)).getEigenVectors());
        Vector3f vector3f2 = new Vector3f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        Vector3f vector3f3 = new Vector3f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        Vector3f vector3f4 = new Vector3f();
        FloatBuffer j10 = oVar.j();
        j10.rewind();
        while (j10.hasRemaining()) {
            vector3f4.f81611x = j10.get();
            vector3f4.f81612y = j10.get();
            vector3f4.f81613z = j10.get();
            g.s(fromAxes, vector3f4, vector3f4);
            h.a(vector3f2, vector3f4);
            h.b(vector3f3, vector3f4);
        }
        Vector3f M10 = h.M(vector3f3, vector3f2, null);
        vector3f2.subtractLocal(M10);
        vector3f2.multLocal(vector3f);
        vector3f2.addLocal(M10);
        vector3f3.subtractLocal(M10);
        vector3f3.multLocal(vector3f);
        vector3f3.addLocal(M10);
        return new m(vector3f3, vector3f2, fromAxes);
    }

    public static void meshToLocal(Bone bone, Transform transform) {
        Quaternion modelSpaceRotation = bone.getModelSpaceRotation();
        C13702E.H(modelSpaceRotation.norm() > 0.0f, "non-zero parent rotation");
        Vector3f translation = transform.getTranslation();
        Quaternion rotation = transform.getRotation();
        Vector3f scale = transform.getScale();
        Vector3f modelSpacePosition = bone.getModelSpacePosition();
        Vector3f modelSpaceScale = bone.getModelSpaceScale();
        translation.subtractLocal(modelSpacePosition);
        translation.divideLocal(modelSpaceScale);
        g.s(modelSpaceRotation, translation, translation);
        scale.divideLocal(modelSpaceScale);
        modelSpaceRotation.inverse().mult(rotation, rotation);
    }

    public static Transform[] readTransformArray(InputCapsule inputCapsule, String str) throws IOException {
        C13702E.t(inputCapsule, "capsule");
        C13702E.t(str, "field name");
        Transform[] transformArr = null;
        Savable[] readSavableArray = inputCapsule.readSavableArray(str, null);
        if (readSavableArray != null) {
            transformArr = new Transform[readSavableArray.length];
            for (int i10 = 0; i10 < readSavableArray.length; i10++) {
                transformArr[i10] = (Transform) readSavableArray[i10];
            }
        }
        return transformArr;
    }

    public static Transform relativeTransform(Spatial spatial, Node node, Transform transform) {
        C13702E.t(spatial, "spatial");
        C13702E.t(node, "ancestor");
        if (transform == null) {
            transform = new Transform();
        }
        transform.loadIdentity();
        while (spatial != node) {
            f.i(transform, spatial.getLocalTransform(), transform);
            spatial = spatial.getParent();
        }
        return transform;
    }

    private static float[] totalWeights(Mesh[] meshArr, Armature armature) {
        C13702E.t(meshArr, "meshes");
        float[] fArr = new float[armature.getJointCount()];
        for (Mesh mesh : meshArr) {
            addWeights(mesh, fArr);
        }
        List<Joint> x10 = C13722r.x(armature);
        Collections.reverse(x10);
        for (Joint joint : x10) {
            int id2 = joint.getId();
            Joint parent = joint.getParent();
            if (parent != null) {
                int id3 = parent.getId();
                fArr[id3] = fArr[id3] + fArr[id2];
            }
        }
        return fArr;
    }

    public static void validate(Armature armature) {
        int jointCount = armature.getJointCount();
        if (jointCount >= 0) {
            TreeSet treeSet = new TreeSet();
            for (int i10 = 0; i10 < jointCount; i10++) {
                Joint joint = armature.getJoint(i10);
                if (joint != null) {
                    String name = joint.getName();
                    if (name != null) {
                        if (!name.equals("")) {
                            if (!treeSet.contains(name)) {
                                treeSet.add(name);
                            } else {
                                throw new IllegalArgumentException("Duplicate joint name in skeleton: " + name);
                            }
                        } else {
                            throw new IllegalArgumentException(String.format("Joint %d in armature has a reserved name!", Integer.valueOf(i10)));
                        }
                    } else {
                        throw new IllegalArgumentException(String.format("Joint %d in armature has null name!", Integer.valueOf(i10)));
                    }
                } else {
                    throw new IllegalArgumentException(String.format("Joint %d in armature is null!", Integer.valueOf(i10)));
                }
            }
            return;
        }
        throw new IllegalArgumentException("Joint count is negative!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Map<String, Float> weightMap(int[] iArr, float[] fArr, String[] strArr) {
        HashMap hashMap = new HashMap(4);
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = iArr[i10];
            if (i11 != -1) {
                String str = strArr[i11];
                if (hashMap.containsKey(str)) {
                    hashMap.put(str, Float.valueOf(((Float) hashMap.get(str)).floatValue() + fArr[i10]));
                } else {
                    hashMap.put(str, Float.valueOf(fArr[i10]));
                }
            }
        }
        return hashMap;
    }

    public static void meshToLocal(Joint joint, Transform transform) {
        Transform modelTransform = joint.getModelTransform();
        C13702E.H(modelTransform.getRotation().norm() > 0.0f, "non-zero parent rotation");
        Vector3f translation = transform.getTranslation();
        Quaternion rotation = transform.getRotation();
        Vector3f scale = transform.getScale();
        Vector3f translation2 = modelTransform.getTranslation();
        Quaternion rotation2 = modelTransform.getRotation();
        Vector3f scale2 = modelTransform.getScale();
        translation.subtractLocal(translation2);
        translation.divideLocal(scale2);
        g.s(rotation2, translation, translation);
        scale.divideLocal(scale2);
        rotation2.inverse().mult(rotation, rotation);
    }

    private static float[] totalWeights(Mesh[] meshArr, Skeleton skeleton) {
        C13702E.t(meshArr, "meshes");
        float[] fArr = new float[skeleton.getBoneCount()];
        for (Mesh mesh : meshArr) {
            addWeights(mesh, fArr);
        }
        List<Bone> w10 = C13722r.w(skeleton);
        Collections.reverse(w10);
        for (Bone bone : w10) {
            int boneIndex = skeleton.getBoneIndex(bone);
            Bone parent = bone.getParent();
            if (parent != null) {
                int boneIndex2 = skeleton.getBoneIndex(parent);
                fArr[boneIndex2] = fArr[boneIndex2] + fArr[boneIndex];
            }
        }
        return fArr;
    }

    public static void validate(Skeleton skeleton) {
        int boneCount = skeleton.getBoneCount();
        if (boneCount >= 0) {
            TreeSet treeSet = new TreeSet();
            for (int i10 = 0; i10 < boneCount; i10++) {
                Bone bone = skeleton.getBone(i10);
                if (bone != null) {
                    String name = bone.getName();
                    if (name != null) {
                        if (!name.equals("")) {
                            if (!treeSet.contains(name)) {
                                treeSet.add(name);
                            } else {
                                throw new IllegalArgumentException("Duplicate bone name in skeleton: " + C13724t.s(name));
                            }
                        } else {
                            throw new IllegalArgumentException(String.format("Bone %d in skeleton has a reserved name!", Integer.valueOf(i10)));
                        }
                    } else {
                        throw new IllegalArgumentException(String.format("Bone %d in skeleton has null name!", Integer.valueOf(i10)));
                    }
                } else {
                    throw new IllegalArgumentException(String.format("Bone %d in skeleton is null!", Integer.valueOf(i10)));
                }
            }
            return;
        }
        throw new IllegalArgumentException("Bone count is negative!");
    }

    public static void validate(Spatial spatial) {
        C13702E.t(spatial, ResourceLocatorTool.TYPE_MODEL);
        List<Geometry> B10 = C13723s.B(spatial);
        if (!B10.isEmpty()) {
            Iterator<Geometry> it = B10.iterator();
            while (it.hasNext()) {
                if (it.next().isIgnoreTransform()) {
                    throw new IllegalArgumentException("A model geometry ignores transforms.");
                }
            }
            return;
        }
        throw new IllegalArgumentException("No meshes in the model.");
    }
}
