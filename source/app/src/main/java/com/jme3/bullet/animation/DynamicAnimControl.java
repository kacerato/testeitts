package com.jme3.bullet.animation;

import G0.E;
import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.animation.Bone;
import com.jme3.animation.Skeleton;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.RotationOrder;
import com.jme3.bullet.collision.PhysicsCollisionEvent;
import com.jme3.bullet.collision.PhysicsCollisionListener;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.joints.New6Dof;
import com.jme3.bullet.joints.Point2PointJoint;
import com.jme3.bullet.joints.motors.MotorParam;
import com.jme3.bullet.joints.motors.TranslationMotor;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.SafeArrayList;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import jf.f;
import p000if.C13702E;
import p000if.C13720p;
import p000if.C13722r;
import p000if.C13723s;
import p000if.C13724t;

public class DynamicAnimControl extends DacLinks implements PhysicsCollisionListener {
    static final boolean $assertionsDisabled = false;
    private static final String tagCenterLocation = "centerLocation";
    private static final String tagCenterVelocity = "centerVelocity";
    private static final String tagIkJoints = "ikJoints";
    private static final String tagRagdollMass = "ragdollMass";
    private CompletionListener<DynamicAnimControl> blendListener;
    public static final Logger logger35 = Logger.getLogger(DynamicAnimControl.class.getName());
    private static final Matrix3f matrixIdentity = new Matrix3f();
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);
    private ArrayList<IKJoint> ikJoints = new ArrayList<>(20);
    private float ragdollMass = 0.0f;
    private List<RagdollCollisionListener> collisionListeners = new SafeArrayList(RagdollCollisionListener.class);
    private Vector3f centerLocation = new Vector3f();
    private Vector3f centerVelocity = new Vector3f();

    private static void blendDescendants(PhysicsLink physicsLink, KinematicSubmode kinematicSubmode, float f10) {
        for (PhysicsLink physicsLink2 : physicsLink.listChildren()) {
            if (physicsLink2 instanceof BoneLink) {
                ((BoneLink) physicsLink2).blendToKinematicMode(kinematicSubmode, f10);
            } else {
                AttachmentLink attachmentLink = (AttachmentLink) physicsLink2;
                if (!attachmentLink.isReleased()) {
                    attachmentLink.blendToKinematicMode(f10, null);
                }
            }
            blendDescendants(physicsLink2, kinematicSubmode, f10);
        }
    }

    private void blendSubtree(PhysicsLink physicsLink, KinematicSubmode kinematicSubmode, float f10) {
        blendDescendants(physicsLink, kinematicSubmode, f10);
        if (physicsLink == getTorsoLink()) {
            getTorsoLink().blendToKinematicMode(kinematicSubmode, f10, null);
            return;
        }
        if (physicsLink instanceof BoneLink) {
            ((BoneLink) physicsLink).blendToKinematicMode(kinematicSubmode, f10);
            return;
        }
        AttachmentLink attachmentLink = (AttachmentLink) physicsLink;
        if (attachmentLink.isReleased()) {
            return;
        }
        attachmentLink.blendToKinematicMode(f10, null);
    }

    private void recalculateCenter() {
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        double d10 = 0.0d;
        for (PhysicsLink physicsLink : listLinks(PhysicsLink.class)) {
            if (!physicsLink.isReleased()) {
                PhysicsRigidBody rigidBody = physicsLink.getRigidBody();
                float mass = rigidBody.getMass();
                d10 += mass;
                rigidBody.getPhysicsLocation(vector3f3);
                vector3f3.multLocal(mass);
                vector3f.addLocal(vector3f3);
                physicsLink.velocity(vector3f3);
                vector3f3.multLocal(mass);
                vector3f2.addLocal(vector3f3);
            }
        }
        float f10 = (float) (1.0d / d10);
        vector3f.mult(f10, this.centerLocation);
        vector3f2.mult(f10, this.centerVelocity);
        this.ragdollMass = (float) d10;
    }

    public void addCollisionListener(RagdollCollisionListener ragdollCollisionListener) {
        C13702E.t(ragdollCollisionListener, E.a.f7280a);
        this.collisionListeners.add(ragdollCollisionListener);
    }

    @Override
    public void addPhysics() {
        super.addPhysics();
        PhysicsSpace physicsSpace = getPhysicsSpace();
        physicsSpace.addCollisionListener(this);
        physicsSpace.addTickListener(this);
        Iterator<IKJoint> it = this.ikJoints.iterator();
        while (it.hasNext()) {
            physicsSpace.addJoint(it.next().getPhysicsJoint());
        }
    }

    public void amputateSubtree(BoneLink boneLink, float f10) {
        C13702E.t(boneLink, "root link");
        C13702E.H(boneLink.getControl() == this, "link belongs to this control");
        C13702E.p(f10, "blend interval");
        verifyAddedToSpatial("change modes");
        KinematicSubmode kinematicSubmode = KinematicSubmode.Amputated;
        blendDescendants(boneLink, kinematicSubmode, f10);
        boneLink.blendToKinematicMode(kinematicSubmode, f10);
    }

    public void animateSubtree(PhysicsLink physicsLink, float f10) {
        C13702E.t(physicsLink, "root link");
        C13702E.H(physicsLink.getControl() == this, "link belongs to this control");
        C13702E.p(f10, "blend interval");
        verifyAddedToSpatial("change modes");
        blendSubtree(physicsLink, KinematicSubmode.Animated, f10);
    }

    public void bindSubtree(PhysicsLink physicsLink, float f10) {
        C13702E.t(physicsLink, "root link");
        C13702E.H(physicsLink.getControl() == this, "link belongs to this control");
        C13702E.p(f10, "blend interval");
        verifyAddedToSpatial("change modes");
        blendSubtree(physicsLink, KinematicSubmode.Bound, f10);
    }

    public void blendToKinematicMode(float f10, Transform transform) {
        C13702E.p(f10, "blend interval");
        verifyAddedToSpatial("change modes");
        blendToKinematicMode(KinematicSubmode.Animated, f10, transform);
    }

    public float centerOfMass(Vector3f vector3f, Vector3f vector3f2) {
        verifyReadyForDynamicMode("calculate the center of mass");
        recalculateCenter();
        if (vector3f != null) {
            vector3f.set(this.centerLocation);
        }
        if (vector3f2 != null) {
            vector3f2.set(this.centerVelocity);
        }
        return this.ragdollMass;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.ikJoints = (ArrayList) cloner.clone(this.ikJoints);
        this.collisionListeners = (List) cloner.clone(this.collisionListeners);
        this.centerLocation = (Vector3f) cloner.clone(this.centerLocation);
        this.centerVelocity = (Vector3f) cloner.clone(this.centerVelocity);
    }

    @Override
    public void collision(PhysicsCollisionEvent physicsCollisionEvent) {
        PhysicsLink physicsLink;
        if (physicsCollisionEvent.getNodeA() == null && physicsCollisionEvent.getNodeB() == null) {
            return;
        }
        PhysicsCollisionObject objectA = physicsCollisionEvent.getObjectA();
        PhysicsCollisionObject objectB = physicsCollisionEvent.getObjectB();
        Object userObject = objectA.getUserObject();
        Object userObject2 = objectB.getUserObject();
        boolean z10 = false;
        if (userObject instanceof PhysicsLink) {
            physicsLink = (PhysicsLink) userObject;
            if (physicsLink.getControl() == this) {
                z10 = true;
            }
        } else {
            objectB = null;
            physicsLink = null;
        }
        if (userObject2 instanceof PhysicsLink) {
            physicsLink = (PhysicsLink) userObject2;
            z10 = physicsLink.getControl() != this ? z10 : true;
        } else {
            objectA = objectB;
        }
        if (z10) {
            if (physicsCollisionEvent.getAppliedImpulse() < eventDispatchImpulseThreshold()) {
                return;
            }
            Iterator<RagdollCollisionListener> it = this.collisionListeners.iterator();
            while (it.hasNext()) {
                it.next().collide(physicsLink, objectA, physicsCollisionEvent);
            }
        }
    }

    public void dropAttachments() {
        for (AttachmentLink attachmentLink : listAttachmentLinks()) {
            if (!attachmentLink.isReleased()) {
                attachmentLink.setDynamic(gravity(null));
                attachmentLink.release();
            }
        }
    }

    public PhysicsLink findManagerForVertex(String str, Vector3f vector3f, Vector3f vector3f2) {
        Spatial spatial;
        int i10;
        PhysicsLink torsoLink;
        C13702E.j(str, "vertex specifier");
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        String[] split = str.split("/");
        int length = split.length;
        if (length < 2 || length > 3) {
            throw new IllegalArgumentException("malformed vertex specifier " + C13724t.s(str));
        }
        Armature armature = getArmature();
        Skeleton skeleton = getSkeleton();
        if (length == 3) {
            String str2 = split[2];
            if (armature == null) {
                Bone bone = skeleton.getBone(str2);
                if (bone == null) {
                    throw new IllegalArgumentException(String.format("non-existent bone %s in vertex specifier", C13724t.s(str2)));
                }
                spatial = C13722r.o(bone);
                if (spatial == null) {
                    throw new IllegalArgumentException(String.format("no attachment to bone %s", C13724t.s(str2)));
                }
            } else {
                Joint joint = armature.getJoint(str2);
                if (joint == null) {
                    throw new IllegalArgumentException(String.format("non-existent bone %s in vertex specifier", C13724t.s(str2)));
                }
                spatial = C13722r.n(joint);
                if (spatial == null) {
                    throw new IllegalArgumentException(String.format("no attachment to bone %s", C13724t.s(str2)));
                }
            }
        } else {
            spatial = getSpatial();
        }
        Spatial s10 = C13723s.s(spatial, split[1]);
        if (s10 == null) {
            throw new IllegalArgumentException(String.format("non-existent geometry %s in vertex specifier", C13724t.s(split[1])));
        }
        Geometry geometry = (Geometry) s10;
        Mesh mesh = geometry.getMesh();
        try {
            i10 = Integer.parseInt(split[0]);
        } catch (NumberFormatException unused) {
            i10 = -1;
        }
        int vertexCount = mesh.getVertexCount();
        if (i10 < 0 || i10 >= vertexCount) {
            throw new IllegalArgumentException(String.format("non-existent vertex %s in vertex specifier (legal range: 0 to %d)", C13724t.s(split[0]), Integer.valueOf(vertexCount - 1)));
        }
        Vector3f Z10 = C13720p.Z(mesh, VertexBuffer.Type.Position, i10, null);
        if (length == 3) {
            torsoLink = findAttachmentLink(split[2]);
            geometry.localToWorld(Z10, vector3f);
        } else {
            String findManager = RagUtils.findManager(mesh, i10, new int[4], new float[4], armature == null ? managerMap(skeleton) : managerMap(armature));
            torsoLink = findManager.equals("") ? getTorsoLink() : findBoneLink(findManager);
            f.S(meshTransform(null), Z10, vector3f);
        }
        if (vector3f2 != null) {
            Transform physicsTransform = torsoLink.physicsTransform(null);
            physicsTransform.setScale(1.0f);
            f.U(physicsTransform, vector3f, vector3f2);
        }
        return torsoLink;
    }

    public IKJoint fixToWorld(PhysicsLink physicsLink, boolean z10) {
        verifyReadyForDynamicMode("add an IK joint");
        Transform physicsTransform = physicsLink.physicsTransform(null);
        Matrix3f invertLocal = physicsTransform.getRotation().toRotationMatrix().invertLocal();
        PhysicsRigidBody rigidBody = physicsLink.getRigidBody();
        Vector3f vector3f = translateIdentity;
        New6Dof new6Dof = new New6Dof(rigidBody, vector3f, vector3f, invertLocal, matrixIdentity, RotationOrder.XYZ);
        TranslationMotor translationMotor = new6Dof.getTranslationMotor();
        Vector3f translation = physicsTransform.getTranslation();
        translationMotor.set(MotorParam.LowerLimit, translation);
        translationMotor.set(MotorParam.UpperLimit, translation);
        for (int i10 = 0; i10 < 3; i10++) {
            new6Dof.getRotationMotor(i10).setSpringEnabled(true);
            int i11 = i10 + 3;
            new6Dof.set(MotorParam.UpperLimit, i11, 0.0f);
            new6Dof.set(MotorParam.LowerLimit, i11, 0.0f);
        }
        IKJoint iKJoint = new IKJoint(new6Dof, z10);
        this.ikJoints.add(iKJoint);
        getPhysicsSpace().addJoint(new6Dof);
        return iKJoint;
    }

    public void freezeSubtree(PhysicsLink physicsLink, boolean z10) {
        C13702E.t(physicsLink, "root link");
        C13702E.H(physicsLink.getControl() == this, "link belongs to this control");
        verifyAddedToSpatial("change modes");
        physicsLink.freeze(z10);
        for (PhysicsLink physicsLink2 : physicsLink.listChildren()) {
            freezeSubtree(physicsLink2, z10);
        }
    }

    public CompletionListener<DynamicAnimControl> getBlendListener() {
        return this.blendListener;
    }

    public double kineticEnergy() {
        double d10 = 0.0d;
        for (PhysicsLink physicsLink : listLinks(PhysicsLink.class)) {
            if (!physicsLink.isReleased()) {
                PhysicsRigidBody rigidBody = physicsLink.getRigidBody();
                if (!rigidBody.isDynamic()) {
                    return Double.NaN;
                }
                d10 += rigidBody.kineticEnergy();
            }
        }
        return d10;
    }

    public IKJoint[] listIKJoints() {
        IKJoint[] iKJointArr = new IKJoint[this.ikJoints.size()];
        this.ikJoints.toArray(iKJointArr);
        return iKJointArr;
    }

    public double mechanicalEnergy() {
        double d10 = 0.0d;
        for (PhysicsLink physicsLink : listLinks(PhysicsLink.class)) {
            if (!physicsLink.isReleased()) {
                PhysicsRigidBody rigidBody = physicsLink.getRigidBody();
                if (!rigidBody.isDynamic()) {
                    return Double.NaN;
                }
                d10 += rigidBody.mechanicalEnergy();
            }
        }
        return d10;
    }

    public IKJoint moveToBody(PhysicsLink physicsLink, Vector3f vector3f, PhysicsRigidBody physicsRigidBody, Vector3f vector3f2) {
        C13702E.t(vector3f, "pivot in link body");
        C13702E.t(physicsRigidBody, "goal body");
        C13702E.t(vector3f2, "pivot in goal body");
        Point2PointJoint point2PointJoint = new Point2PointJoint(physicsLink.getRigidBody(), physicsRigidBody, vector3f, vector3f2);
        IKJoint iKJoint = new IKJoint(point2PointJoint, true);
        this.ikJoints.add(iKJoint);
        getPhysicsSpace().addJoint(point2PointJoint);
        return iKJoint;
    }

    public IKJoint moveToWorld(PhysicsLink physicsLink, Vector3f vector3f, Vector3f vector3f2) {
        C13702E.d(vector3f, "pivot in link body");
        C13702E.d(vector3f2, "goal location");
        Point2PointJoint point2PointJoint = new Point2PointJoint(physicsLink.getRigidBody(), vector3f, vector3f2);
        IKJoint iKJoint = new IKJoint(point2PointJoint, true);
        this.ikJoints.add(iKJoint);
        getPhysicsSpace().addJoint(point2PointJoint);
        return iKJoint;
    }

    public IKJoint pinToSelf(PhysicsLink physicsLink, PhysicsLink physicsLink2, Vector3f vector3f, Vector3f vector3f2) {
        verifyReadyForDynamicMode("add an IK joint");
        Point2PointJoint point2PointJoint = new Point2PointJoint(physicsLink.getRigidBody(), physicsLink2.getRigidBody(), vector3f, vector3f2);
        IKJoint iKJoint = new IKJoint(point2PointJoint, true);
        this.ikJoints.add(iKJoint);
        getPhysicsSpace().addJoint(point2PointJoint);
        return iKJoint;
    }

    public IKJoint pinToWorld(PhysicsLink physicsLink, boolean z10) {
        verifyReadyForDynamicMode("add an IK joint");
        PhysicsRigidBody rigidBody = physicsLink.getRigidBody();
        Vector3f vector3f = translateIdentity;
        Matrix3f matrix3f = matrixIdentity;
        New6Dof new6Dof = new New6Dof(rigidBody, vector3f, vector3f, matrix3f, matrix3f, RotationOrder.XYZ);
        TranslationMotor translationMotor = new6Dof.getTranslationMotor();
        Vector3f physicsLocation = rigidBody.getPhysicsLocation(null);
        translationMotor.set(MotorParam.LowerLimit, physicsLocation);
        translationMotor.set(MotorParam.UpperLimit, physicsLocation);
        IKJoint iKJoint = new IKJoint(new6Dof, z10);
        this.ikJoints.add(iKJoint);
        getPhysicsSpace().addJoint(new6Dof);
        return iKJoint;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.ikJoints = capsule.readSavableArrayList(tagIkJoints, new ArrayList(1));
        this.ragdollMass = capsule.readFloat(tagRagdollMass, 1.0f);
        this.centerLocation = (Vector3f) capsule.readSavable(tagCenterLocation, new Vector3f());
        this.centerVelocity = (Vector3f) capsule.readSavable(tagCenterVelocity, new Vector3f());
    }

    @Override
    public void removePhysics() {
        super.removePhysics();
        PhysicsSpace physicsSpace = getPhysicsSpace();
        physicsSpace.removeCollisionListener(this);
        physicsSpace.removeTickListener(this);
        Iterator<IKJoint> it = this.ikJoints.iterator();
        while (it.hasNext()) {
            physicsSpace.removeJoint(it.next().getPhysicsJoint());
        }
    }

    public void saveCurrentPose() {
        List<BoneLink> boneLinks = getBoneLinks();
        TorsoLink torsoLink = getTorsoLink();
        int countManaged = torsoLink.countManaged();
        Transform[] transformArr = new Transform[countManaged];
        Skeleton skeleton = getSkeleton();
        if (skeleton != null) {
            for (int i10 = 0; i10 < countManaged; i10++) {
                transformArr[i10] = C13722r.f(skeleton.getBone(torsoLink.boneIndex(i10)), null);
            }
            torsoLink.setEndBoneTransforms(transformArr);
            for (BoneLink boneLink : boneLinks) {
                int countManaged2 = boneLink.countManaged();
                Transform[] transformArr2 = new Transform[countManaged2];
                for (int i11 = 0; i11 < countManaged2; i11++) {
                    transformArr2[i11] = C13722r.f(skeleton.getBone(boneLink.boneIndex(i11)), null);
                }
                boneLink.setEndBoneTransforms(transformArr2);
            }
            return;
        }
        Armature armature = getArmature();
        for (int i12 = 0; i12 < countManaged; i12++) {
            transformArr[i12] = armature.getJoint(torsoLink.boneIndex(i12)).getLocalTransform().m1289clone();
        }
        torsoLink.setEndBoneTransforms(transformArr);
        for (BoneLink boneLink2 : boneLinks) {
            int countManaged3 = boneLink2.countManaged();
            Transform[] transformArr3 = new Transform[countManaged3];
            for (int i13 = 0; i13 < countManaged3; i13++) {
                transformArr3[i13] = armature.getJoint(boneLink2.boneIndex(i13)).getLocalTransform().m1289clone();
            }
            boneLink2.setEndBoneTransforms(transformArr3);
        }
    }

    public void setBlendListener(CompletionListener<DynamicAnimControl> completionListener) {
        this.blendListener = completionListener;
    }

    public void setContactResponseSubtree(PhysicsLink physicsLink, boolean z10) {
        C13702E.t(physicsLink, "root link");
        C13702E.H(physicsLink.getControl() == this, "link belongs to this control");
        verifyAddedToSpatial("change modes");
        if (physicsLink.isReleased()) {
            return;
        }
        physicsLink.getRigidBody().setContactResponse(z10);
        for (PhysicsLink physicsLink2 : physicsLink.listChildren()) {
            setContactResponseSubtree(physicsLink2, z10);
        }
    }

    public void setDynamicChain(PhysicsLink physicsLink, int i10, Vector3f vector3f, boolean z10) {
        if (i10 == 0) {
            return;
        }
        C13702E.F(i10, "chain length");
        C13702E.t(physicsLink, "start link");
        C13702E.d(vector3f, "uniform acceleration");
        verifyReadyForDynamicMode("put links into dynamic mode");
        if (physicsLink instanceof BoneLink) {
            ((BoneLink) physicsLink).setDynamic(vector3f, z10, z10, z10);
        } else if (physicsLink instanceof AttachmentLink) {
            ((AttachmentLink) physicsLink).setDynamic(vector3f);
        }
        PhysicsLink parent = physicsLink.getParent();
        if (parent == null || i10 <= 1) {
            return;
        }
        setDynamicChain(parent, i10 - 1, vector3f, z10);
    }

    public void setDynamicSubtree(PhysicsLink physicsLink, Vector3f vector3f, boolean z10) {
        C13702E.t(physicsLink, "root link");
        C13702E.H(physicsLink.getControl() == this, "link belongs to this control");
        C13702E.t(vector3f, "uniform acceleration");
        verifyAddedToSpatial("change modes");
        if (physicsLink == getTorsoLink()) {
            getTorsoLink().setDynamic(vector3f);
        } else if (physicsLink instanceof BoneLink) {
            ((BoneLink) physicsLink).setDynamic(vector3f, z10, z10, z10);
        } else {
            AttachmentLink attachmentLink = (AttachmentLink) physicsLink;
            if (!attachmentLink.isReleased()) {
                attachmentLink.setDynamic(vector3f);
            }
        }
        for (PhysicsLink physicsLink2 : physicsLink.listChildren()) {
            setDynamicSubtree(physicsLink2, vector3f, z10);
        }
    }

    public void setKinematicMode() {
        verifyAddedToSpatial("set kinematic mode");
        blendToKinematicMode(KinematicSubmode.Animated, 0.0f, null);
    }

    public void setRagdollMode() {
        verifyReadyForDynamicMode("set ragdoll mode");
        getTorsoLink().setRagdollMode();
        Iterator<BoneLink> it = getBoneLinks().iterator();
        while (it.hasNext()) {
            it.next().setRagdollMode();
        }
        Iterator<AttachmentLink> it2 = listAttachmentLinks().iterator();
        while (it2.hasNext()) {
            it2.next().setRagdollMode();
        }
        Iterator<IKJoint> it3 = this.ikJoints.iterator();
        while (it3.hasNext()) {
            it3.next().setRagdollMode();
        }
    }

    @Override
    public void update(float f10) {
        super.update(f10);
        if (this.blendListener == null || getTorsoLink().kinematicWeight() != 1.0f) {
            return;
        }
        this.blendListener.onCompletion(this);
        this.blendListener = null;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.writeSavableArrayList(this.ikJoints, tagIkJoints, null);
        capsule.write(this.ragdollMass, tagRagdollMass, 1.0f);
        capsule.write(this.centerLocation, tagCenterLocation, (Savable) null);
        capsule.write(this.centerVelocity, tagCenterVelocity, (Savable) null);
    }

    public void setKinematicMode(KinematicSubmode kinematicSubmode) {
        C13702E.t(kinematicSubmode, "submode");
        verifyAddedToSpatial("set kinematic mode");
        blendToKinematicMode(kinematicSubmode, 0.0f, null);
    }

    public void blendToKinematicMode(KinematicSubmode kinematicSubmode, float f10, Transform transform) {
        C13702E.t(kinematicSubmode, "submode");
        C13702E.p(f10, "blend interval");
        verifyAddedToSpatial("change modes");
        getTorsoLink().blendToKinematicMode(kinematicSubmode, f10, transform);
        Iterator<BoneLink> it = getBoneLinks().iterator();
        while (it.hasNext()) {
            it.next().blendToKinematicMode(kinematicSubmode, f10);
        }
        for (AttachmentLink attachmentLink : listAttachmentLinks()) {
            if (!attachmentLink.isReleased()) {
                attachmentLink.blendToKinematicMode(f10, null);
            }
        }
    }

    public IKJoint pinToWorld(PhysicsLink physicsLink, Vector3f vector3f) {
        C13702E.t(vector3f, "pivot location");
        verifyReadyForDynamicMode("add an IK joint");
        PhysicsRigidBody rigidBody = physicsLink.getRigidBody();
        Transform physicsTransform = physicsLink.physicsTransform(null);
        physicsTransform.setScale(1.0f);
        Point2PointJoint point2PointJoint = new Point2PointJoint(rigidBody, f.U(physicsTransform, vector3f, null));
        IKJoint iKJoint = new IKJoint(point2PointJoint, true);
        this.ikJoints.add(iKJoint);
        getPhysicsSpace().addJoint(point2PointJoint);
        return iKJoint;
    }
}
