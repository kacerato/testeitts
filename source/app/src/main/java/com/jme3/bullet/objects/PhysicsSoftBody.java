package com.jme3.bullet.objects;

import androidx.constraintlayout.motion.widget.Key;
import com.jme3.bounding.BoundingBox;
import com.jme3.bullet.SoftBodyWorldInfo;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.infos.Cluster;
import com.jme3.bullet.objects.infos.SoftBodyConfig;
import com.jme3.bullet.objects.infos.SoftBodyMaterial;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.BufferUtils;
import com.jme3.util.clone.Cloner;
import com.simsilica.mathd.Matrix3d;
import com.simsilica.mathd.Quatd;
import com.simsilica.mathd.Vec3d;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.d;
import p000if.C13702E;
import p000if.EnumC13714j;

public class PhysicsSoftBody extends PhysicsBody {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(PhysicsSoftBody.class.getName());
    private static final int numAxes = 3;
    private static final String tagConfig = "config";
    private static final String tagFaceIndices = "faceIndices";
    private static final String tagIndices = "indices";
    private static final String tagIsWorldInfoProtected = "isWorldInfoProtected";
    private static final String tagLinkIndices = "linkIndices";
    private static final String tagMaterial = "material";
    private static final String tagNodeLocations = "nodeLocations";
    private static final String tagNodeMasses = "nodeMasses";
    private static final String tagNodeNormals = "nodeNormals";
    private static final String tagNodeVelocities = "nodeVelocities";
    private static final String tagNumClusters = "numClusters";
    private static final String tagPhysicsLocation = "physicsLocation";
    private static final String tagRestLengthScale = "restLengthScale";
    private static final String tagTetraIndices = "tetraIndices";
    private static final String tagWorldInfo = "worldInfo";
    private static final int vpe = 2;
    private static final int vpt = 3;
    private SoftBodyConfig config;
    private boolean isWorldInfoProtected = false;
    private SoftBodyMaterial material = null;
    private SoftBodyWorldInfo worldInfo;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bullet$objects$infos$Cluster;
        static final int[] $SwitchMap$jme3utilities$MeshNormals;

        static {
            int[] iArr = new int[EnumC13714j.values().length];
            $SwitchMap$jme3utilities$MeshNormals = iArr;
            try {
                iArr[EnumC13714j.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$jme3utilities$MeshNormals[EnumC13714j.Smooth.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Cluster.values().length];
            $SwitchMap$com$jme3$bullet$objects$infos$Cluster = iArr2;
            try {
                iArr2[Cluster.AngularDamping.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Cluster[Cluster.LinearDamping.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Cluster[Cluster.Matching.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Cluster[Cluster.MaxSelfImpulse.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Cluster[Cluster.NodeDamping.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Cluster[Cluster.SelfImpulse.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public PhysicsSoftBody() {
        SoftBodyWorldInfo softBodyWorldInfo = new SoftBodyWorldInfo();
        this.worldInfo = softBodyWorldInfo;
        super.setNativeId(createEmpty(softBodyWorldInfo.nativeId()));
        logger2.log(Level.FINE, "Created {0}.", this);
        this.config = new SoftBodyConfig(this);
        super.initUserPointer();
        setMargin(CollisionShape.getDefaultMargin());
    }

    private static native void addForce(long j10, Vector3f vector3f);

    private static native void addForce(long j10, Vector3f vector3f, int i10);

    private static native void addVelocity(long j10, Vector3f vector3f);

    private static native void addVelocity(long j10, Vector3f vector3f, int i10);

    private static native void appendCluster(long j10, int i10, IntBuffer intBuffer);

    private static native void appendFaces(long j10, int i10, ByteBuffer byteBuffer);

    private static native void appendFaces(long j10, int i10, IntBuffer intBuffer);

    private static native void appendFaces(long j10, int i10, ShortBuffer shortBuffer);

    private static native void appendLinks(long j10, int i10, ByteBuffer byteBuffer);

    private static native void appendLinks(long j10, int i10, IntBuffer intBuffer);

    private static native void appendLinks(long j10, int i10, ShortBuffer shortBuffer);

    private static native void appendNodes(long j10, int i10, FloatBuffer floatBuffer);

    private static native void appendTetras(long j10, int i10, ByteBuffer byteBuffer);

    private static native void appendTetras(long j10, int i10, IntBuffer intBuffer);

    private static native void appendTetras(long j10, int i10, ShortBuffer shortBuffer);

    private static native void applyPhysicsRotation(long j10, Quaternion quaternion);

    private static native void applyPhysicsScale(long j10, Vector3f vector3f);

    private static native void applyPhysicsTransform(long j10, Transform transform);

    private static native void applyPhysicsTranslate(long j10, Vector3f vector3f);

    private static native int countNodesInCluster(long j10, int i10);

    private static native long createEmpty(long j10);

    private static native boolean cutLink(long j10, int i10, int i11, float f10);

    private static native void finishClusters(long j10);

    private static native void generateBendingConstraints(long j10, int i10, long j11);

    private static native void generateClusters(long j10, int i10, int i11);

    private static native void getBounds(long j10, Vector3f vector3f, Vector3f vector3f2);

    private static native float getClusterAngularDamping(long j10, int i10);

    private static native void getClusterCenter(long j10, int i10, Vector3f vector3f);

    private static native int getClusterCount(long j10);

    private static native float getClusterLinearDamping(long j10, int i10);

    private static native float getClusterMatching(long j10, int i10);

    private static native float getClusterMaxSelfImpulse(long j10, int i10);

    private static native float getClusterNodeDamping(long j10, int i10);

    private static native float getClusterSelfImpulse(long j10, int i10);

    private static native void getClustersLinearVelocities(long j10, FloatBuffer floatBuffer);

    private static native void getClustersMasses(long j10, FloatBuffer floatBuffer);

    private static native void getClustersPositions(long j10, FloatBuffer floatBuffer);

    private static native void getFacesIndexes(long j10, IntBuffer intBuffer);

    private static native void getLinksIndexes(long j10, IntBuffer intBuffer);

    private static native float getMargin(long j10);

    private static native float getMass(long j10, int i10);

    private static native void getMasses(long j10, FloatBuffer floatBuffer);

    private static native int getNbFaces(long j10);

    private static native int getNbLinks(long j10);

    private static native int getNbNodes(long j10);

    private static native int getNbPinnedNodes(long j10);

    private static native int getNbTetras(long j10);

    private static native void getNodeLocation(long j10, int i10, Vector3f vector3f);

    private static native void getNodeNormal(long j10, int i10, Vector3f vector3f);

    private static native void getNodeVelocity(long j10, int i10, Vector3f vector3f);

    private static native void getNodesNormals(long j10, FloatBuffer floatBuffer);

    private static native void getNodesPositions(long j10, FloatBuffer floatBuffer);

    private static native void getNodesVelocities(long j10, FloatBuffer floatBuffer);

    private static native void getPhysicsLocation(long j10, Vector3f vector3f);

    private static native void getPhysicsLocationDp(long j10, Vec3d vec3d);

    private static native float getRestLengthScale(long j10);

    private static native long getSoftBodyWorldInfo(long j10);

    private static native void getTetrasIndexes(long j10, IntBuffer intBuffer);

    private static native float getTotalMass(long j10);

    private static native float getVolume(long j10);

    private static native void getWindVelocity(long j10, Vector3f vector3f);

    private static native void initDefault(long j10);

    private static native boolean isCollisionAllowed(long j10, long j11);

    private static native void listNodesInCluster(long j10, int i10, IntBuffer intBuffer);

    private static native void randomizeConstraints(long j10);

    private static native void releaseCluster(long j10, int i10);

    private static native void releaseClusters(long j10);

    private static native void resetLinkRestLengths(long j10);

    private static native void setClusterAngularDamping(long j10, int i10, float f10);

    private static native void setClusterLinearDamping(long j10, int i10, float f10);

    private static native void setClusterMatching(long j10, int i10, float f10);

    private static native void setClusterMaxSelfImpulse(long j10, int i10, float f10);

    private static native void setClusterNodeDamping(long j10, int i10, float f10);

    private static native void setClusterSelfImpulse(long j10, int i10, float f10);

    private static native void setMargin(long j10, float f10);

    private static native void setMass(long j10, int i10, float f10);

    private static native void setMasses(long j10, FloatBuffer floatBuffer);

    private static native void setNodeVelocity(long j10, int i10, Vector3f vector3f);

    private static native void setNormals(long j10, FloatBuffer floatBuffer);

    private static native void setPhysicsLocation(long j10, Vector3f vector3f);

    private static native void setPhysicsLocationDp(long j10, Vec3d vec3d);

    private static native void setPose(long j10, boolean z10, boolean z11);

    private static native void setRestLengthScale(long j10, float f10);

    private static native void setSoftBodyWorldInfo(long j10, long j11);

    private static native void setTotalDensity(long j10, float f10);

    private static native void setTotalMass(long j10, float f10, boolean z10);

    private static native void setVelocities(long j10, FloatBuffer floatBuffer);

    private static native void setVelocity(long j10, Vector3f vector3f);

    private static native void setVolumeDensity(long j10, float f10);

    private static native void setVolumeMass(long j10, float f10);

    private static native void setWindVelocity(long j10, Vector3f vector3f);

    public void addVelocity(Vector3f vector3f) {
        C13702E.d(vector3f, "velocity");
        addVelocity(nativeId(), vector3f);
    }

    public void appendFaces(IndexBuffer indexBuffer) {
        if (indexBuffer.getBuffer().isDirect()) {
            if (indexBuffer.size() % 3 == 0) {
                long nativeId = nativeId();
                int size = indexBuffer.size() / 3;
                Buffer buffer = indexBuffer.getBuffer();
                if (buffer instanceof ByteBuffer) {
                    appendFaces(nativeId, size, (ByteBuffer) buffer);
                    return;
                } else if (buffer instanceof ShortBuffer) {
                    appendFaces(nativeId, size, (ShortBuffer) buffer);
                    return;
                } else {
                    if (buffer instanceof IntBuffer) {
                        appendFaces(nativeId, size, (IntBuffer) buffer);
                        return;
                    }
                    throw new IllegalArgumentException(buffer.getClass().getSimpleName());
                }
            }
            throw new IllegalArgumentException("The number of indices must be a multiple of 3.");
        }
        throw new IllegalArgumentException("The buffer must be direct.");
    }

    public void appendLinks(IndexBuffer indexBuffer) {
        if (indexBuffer.getBuffer().isDirect()) {
            if (indexBuffer.size() % 2 == 0) {
                long nativeId = nativeId();
                int size = indexBuffer.size() / 2;
                Buffer buffer = indexBuffer.getBuffer();
                if (buffer instanceof ByteBuffer) {
                    appendLinks(nativeId, size, (ByteBuffer) buffer);
                    return;
                } else if (buffer instanceof ShortBuffer) {
                    appendLinks(nativeId, size, (ShortBuffer) buffer);
                    return;
                } else {
                    if (buffer instanceof IntBuffer) {
                        appendLinks(nativeId, size, (IntBuffer) buffer);
                        return;
                    }
                    throw new IllegalArgumentException(buffer.getClass().getSimpleName());
                }
            }
            throw new IllegalArgumentException("The number of indices must be a multiple of 2.");
        }
        throw new IllegalArgumentException("The buffer must be direct.");
    }

    public void appendNodes(FloatBuffer floatBuffer) {
        C13702E.t(floatBuffer, "node locations");
        C13702E.H(floatBuffer.isDirect(), "direct buffer");
        C13702E.H(floatBuffer.limit() % 3 == 0, "limit a multiple of 3");
        appendNodes(nativeId(), floatBuffer.limit() / 3, floatBuffer);
    }

    public void appendTetras(IndexBuffer indexBuffer) {
        if (indexBuffer.getBuffer().isDirect()) {
            if (indexBuffer.size() % 4 == 0) {
                long nativeId = nativeId();
                int size = indexBuffer.size() / 4;
                Buffer buffer = indexBuffer.getBuffer();
                if (buffer instanceof ByteBuffer) {
                    appendTetras(nativeId, size, (ByteBuffer) buffer);
                    return;
                } else if (buffer instanceof ShortBuffer) {
                    appendTetras(nativeId, size, (ShortBuffer) buffer);
                    return;
                } else {
                    if (buffer instanceof IntBuffer) {
                        appendTetras(nativeId, size, (IntBuffer) buffer);
                        return;
                    }
                    throw new IllegalArgumentException(buffer.getClass().getSimpleName());
                }
            }
            throw new IllegalArgumentException("The number of indices must be a multiple of 4.");
        }
        throw new IllegalArgumentException("The buffer must be direct.");
    }

    public void applyForce(Vector3f vector3f) {
        C13702E.d(vector3f, "force");
        addForce(nativeId(), vector3f);
    }

    public void applyRotation(Quaternion quaternion) {
        C13702E.t(quaternion, Key.ROTATION);
        applyPhysicsRotation(nativeId(), quaternion);
    }

    public void applyScale(Vector3f vector3f) {
        C13702E.d(vector3f, "factors");
        applyPhysicsScale(nativeId(), vector3f);
    }

    public void applyTransform(Transform transform) {
        C13702E.t(transform, "transform");
        applyPhysicsTransform(nativeId(), transform);
    }

    public void applyTranslation(Vector3f vector3f) {
        C13702E.d(vector3f, "offset");
        applyPhysicsTranslate(nativeId(), vector3f);
    }

    @Override
    public BoundingBox boundingBox(BoundingBox boundingBox) {
        if (boundingBox == null) {
            boundingBox = new BoundingBox();
        }
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        getBounds(nativeId(), vector3f, vector3f2);
        boundingBox.setMinMax(vector3f, vector3f2);
        return boundingBox;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        PhysicsSoftBody physicsSoftBody = (PhysicsSoftBody) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        SoftBodyWorldInfo softBodyWorldInfo = (SoftBodyWorldInfo) cloner.clone(physicsSoftBody.worldInfo);
        this.worldInfo = softBodyWorldInfo;
        long createEmpty = createEmpty(softBodyWorldInfo.nativeId());
        setNativeId(createEmpty);
        logger2.log(Level.FINE, "Created {0}.", this);
        this.config = new SoftBodyConfig(this);
        initUserPointer();
        cloneIgnoreList(cloner, physicsSoftBody);
        copyPcoProperties(physicsSoftBody);
        this.config.copyAll(physicsSoftBody.config);
        this.material = (SoftBodyMaterial) cloner.clone(physicsSoftBody.material);
        FloatBuffer copyLocations = physicsSoftBody.copyLocations(null);
        appendNodes(copyLocations);
        physicsSoftBody.copyNormals(copyLocations);
        setNormals(copyLocations);
        physicsSoftBody.copyVelocities(copyLocations);
        setVelocities(copyLocations);
        setMasses(physicsSoftBody.copyMasses(null));
        appendFaces(IndexBuffer.wrapIndexBuffer(physicsSoftBody.copyFaces(null)));
        appendLinks(IndexBuffer.wrapIndexBuffer(physicsSoftBody.copyLinks(null)));
        appendLinks(IndexBuffer.wrapIndexBuffer(physicsSoftBody.copyTetras(null)));
        int countClusters = physicsSoftBody.countClusters();
        for (int i10 = 0; i10 < countClusters; i10++) {
            IntBuffer listNodesInCluster = physicsSoftBody.listNodesInCluster(i10, null);
            appendCluster(createEmpty, listNodesInCluster.capacity(), listNodesInCluster);
            for (Cluster cluster : Cluster.values()) {
                set(cluster, i10, physicsSoftBody.get(cluster, i10));
            }
        }
        finishClusters(createEmpty);
        cloneJoints(cloner, physicsSoftBody);
    }

    public Vector3f clusterCenter(int i10, Vector3f vector3f) {
        C13702E.i(i10, "cluster index", 0, countClusters() - 1);
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getClusterCenter(nativeId(), i10, vector3f);
        return vector3f;
    }

    public FloatBuffer copyClusterCenters(FloatBuffer floatBuffer) {
        if (floatBuffer != null && !floatBuffer.isDirect()) {
            throw new IllegalArgumentException("The buffer must be direct.");
        }
        int countClusters = countClusters() * 3;
        FloatBuffer d10 = d.d(countClusters, floatBuffer);
        if (countClusters != 0) {
            getClustersPositions(nativeId(), d10);
        }
        return d10;
    }

    public FloatBuffer copyClusterMasses(FloatBuffer floatBuffer) {
        if (floatBuffer != null && !floatBuffer.isDirect()) {
            throw new IllegalArgumentException("The buffer must be direct.");
        }
        int countClusters = countClusters();
        FloatBuffer d10 = d.d(countClusters, floatBuffer);
        if (countClusters != 0) {
            getClustersMasses(nativeId(), d10);
        }
        return d10;
    }

    public FloatBuffer copyClusterVelocities(FloatBuffer floatBuffer) {
        if (floatBuffer != null && !floatBuffer.isDirect()) {
            throw new IllegalArgumentException("The buffer must be direct.");
        }
        int countClusters = countClusters() * 3;
        FloatBuffer d10 = d.d(countClusters, floatBuffer);
        if (countClusters != 0) {
            getClustersLinearVelocities(nativeId(), d10);
        }
        return d10;
    }

    public IntBuffer copyFaces(IntBuffer intBuffer) {
        int countFaces = countFaces() * 3;
        if (intBuffer == null) {
            intBuffer = BufferUtils.createIntBuffer(countFaces);
        }
        if (countFaces != 0) {
            getFacesIndexes(nativeId(), intBuffer);
        }
        return intBuffer;
    }

    public IntBuffer copyLinks(IntBuffer intBuffer) {
        int countLinks = countLinks() * 2;
        if (intBuffer == null) {
            intBuffer = BufferUtils.createIntBuffer(countLinks);
        }
        if (countLinks != 0) {
            getLinksIndexes(nativeId(), intBuffer);
        }
        return intBuffer;
    }

    public FloatBuffer copyLocations(FloatBuffer floatBuffer) {
        if (floatBuffer != null && !floatBuffer.isDirect()) {
            throw new IllegalArgumentException("The buffer must be direct.");
        }
        int countNodes = countNodes() * 3;
        FloatBuffer d10 = d.d(countNodes, floatBuffer);
        if (countNodes != 0) {
            getNodesPositions(nativeId(), d10);
        }
        return d10;
    }

    public FloatBuffer copyMasses(FloatBuffer floatBuffer) {
        if (floatBuffer != null && !floatBuffer.isDirect()) {
            throw new IllegalArgumentException("The buffer must be direct.");
        }
        int countNodes = countNodes();
        FloatBuffer d10 = d.d(countNodes, floatBuffer);
        if (countNodes != 0) {
            getMasses(nativeId(), d10);
        }
        return d10;
    }

    public FloatBuffer copyNormals(FloatBuffer floatBuffer) {
        if (floatBuffer != null && !floatBuffer.isDirect()) {
            throw new IllegalArgumentException("The buffer must be direct.");
        }
        int countNodes = countNodes() * 3;
        FloatBuffer d10 = d.d(countNodes, floatBuffer);
        if (countNodes != 0) {
            getNodesNormals(nativeId(), d10);
        }
        return d10;
    }

    public IntBuffer copyTetras(IntBuffer intBuffer) {
        int countTetras = countTetras() * 4;
        if (intBuffer == null) {
            intBuffer = BufferUtils.createIntBuffer(countTetras);
        }
        if (countTetras != 0) {
            getTetrasIndexes(nativeId(), intBuffer);
        }
        return intBuffer;
    }

    public FloatBuffer copyVelocities(FloatBuffer floatBuffer) {
        if (floatBuffer != null && !floatBuffer.isDirect()) {
            throw new IllegalArgumentException("The buffer must be direct.");
        }
        int countNodes = countNodes() * 3;
        FloatBuffer d10 = d.d(countNodes, floatBuffer);
        if (countNodes != 0) {
            getNodesVelocities(nativeId(), d10);
        }
        return d10;
    }

    public final int countClusters() {
        return getClusterCount(nativeId());
    }

    public final int countFaces() {
        return getNbFaces(nativeId());
    }

    public final int countLinks() {
        return getNbLinks(nativeId());
    }

    public final int countNodes() {
        return getNbNodes(nativeId());
    }

    public int countNodesInCluster(int i10) {
        C13702E.i(i10, "cluster index", 0, countClusters() - 1);
        return countNodesInCluster(nativeId(), i10);
    }

    public final int countPinnedNodes() {
        return getNbPinnedNodes(nativeId());
    }

    public final int countTetras() {
        return getNbTetras(nativeId());
    }

    public boolean cutLink(int i10, int i11, float f10) {
        int countNodes = countNodes() - 1;
        C13702E.i(i10, "node index 0", 0, countNodes);
        C13702E.i(i11, "node index 1", 0, countNodes);
        return cutLink(nativeId(), i10, i11, f10);
    }

    public void destroySoftBody() {
        if (hasAssignedNativeObject()) {
            logger2.log(Level.FINE, "Destroying {0}.", this);
            unassignNativeObject();
        }
        this.material = null;
        this.config = null;
    }

    public void generateBendingConstraints(int i10, SoftBodyMaterial softBodyMaterial) {
        C13702E.i(i10, "number of hops", 2, Integer.MAX_VALUE);
        generateBendingConstraints(nativeId(), i10, softBodyMaterial.nativeId());
    }

    public void generateClusters() {
        generateClusters(nativeId(), 0, 8192);
    }

    public float get(Cluster cluster, int i10) {
        C13702E.i(i10, "cluster index", 0, countClusters() - 1);
        long nativeId = nativeId();
        switch (AnonymousClass1.$SwitchMap$com$jme3$bullet$objects$infos$Cluster[cluster.ordinal()]) {
            case 1:
                return getClusterAngularDamping(nativeId, i10);
            case 2:
                return getClusterLinearDamping(nativeId, i10);
            case 3:
                return getClusterMatching(nativeId, i10);
            case 4:
                return getClusterMaxSelfImpulse(nativeId, i10);
            case 5:
                return getClusterNodeDamping(nativeId, i10);
            case 6:
                return getClusterSelfImpulse(nativeId, i10);
            default:
                throw new IllegalArgumentException(cluster.toString());
        }
    }

    @Override
    public Vector3f getGravity(Vector3f vector3f) {
        return getWorldInfo().copyGravity(vector3f);
    }

    @Override
    public float getMass() {
        return getTotalMass(nativeId());
    }

    @Override
    public Vector3f getPhysicsLocation(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getPhysicsLocation(nativeId(), vector3f);
        return vector3f;
    }

    @Override
    public Vec3d getPhysicsLocationDp(Vec3d vec3d) {
        if (vec3d == null) {
            vec3d = new Vec3d();
        }
        getPhysicsLocationDp(nativeId(), vec3d);
        return vec3d;
    }

    @Override
    public Quaternion getPhysicsRotation(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        quaternion.loadIdentity();
        return quaternion;
    }

    @Override
    public Quatd getPhysicsRotationDp(Quatd quatd) {
        return quatd == null ? new Quatd() : quatd.set(0.0d, 0.0d, 0.0d, 1.0d);
    }

    @Override
    public Matrix3f getPhysicsRotationMatrix(Matrix3f matrix3f) {
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        matrix3f.loadIdentity();
        return matrix3f;
    }

    @Override
    public Matrix3d getPhysicsRotationMatrixDp(Matrix3d matrix3d) {
        return matrix3d == null ? new Matrix3d() : matrix3d.makeIdentity();
    }

    @Override
    public Vector3f getScale(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(1.0f, 1.0f, 1.0f);
        return vector3f;
    }

    public SoftBodyConfig getSoftConfig() {
        return this.config;
    }

    public SoftBodyMaterial getSoftMaterial() {
        if (this.material == null) {
            this.material = new SoftBodyMaterial(this);
        }
        return this.material;
    }

    public SoftBodyWorldInfo getWorldInfo() {
        return this.worldInfo;
    }

    public void initDefault() {
        initDefault(nativeId());
    }

    public boolean isCollisionAllowed(long j10) {
        C13702E.x(j10, "collision object ID");
        return isCollisionAllowed(nativeId(), j10);
    }

    public final boolean isEmpty() {
        return countNodes() == 0 && countFaces() == 0 && countLinks() == 0 && countTetras() == 0 && countJoints() == 0 && countClusters() == 0;
    }

    public boolean isWorldInfoProtected() {
        return this.isWorldInfoProtected;
    }

    public IntBuffer listNodesInCluster(int i10, IntBuffer intBuffer) {
        C13702E.i(i10, "cluster index", 0, countClusters() - 1);
        int countNodesInCluster = countNodesInCluster(i10);
        if (intBuffer == null) {
            intBuffer = BufferUtils.createIntBuffer(countNodesInCluster);
        }
        listNodesInCluster(nativeId(), i10, intBuffer);
        return intBuffer;
    }

    public float margin() {
        return getMargin(nativeId());
    }

    public void newEmptySoftBody() {
        destroySoftBody();
        setNativeId(createEmpty(this.worldInfo.nativeId()));
        logger2.log(Level.FINE, "Created {0}.", this);
        this.config = new SoftBodyConfig(this);
        initUserPointer();
    }

    public Vector3f nodeLocation(int i10, Vector3f vector3f) {
        C13702E.i(i10, "node index", 0, countNodes() - 1);
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getNodeLocation(nativeId(), i10, vector3f);
        return vector3f;
    }

    public float nodeMass(int i10) {
        C13702E.i(i10, "node index", 0, countNodes() - 1);
        return getMass(nativeId(), i10);
    }

    public Vector3f nodeNormal(int i10, Vector3f vector3f) {
        C13702E.i(i10, "node index", 0, countNodes() - 1);
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getNodeNormal(nativeId(), i10, vector3f);
        return vector3f;
    }

    public Vector3f nodeVelocity(int i10, Vector3f vector3f) {
        C13702E.i(i10, "node index", 0, countNodes() - 1);
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getNodeVelocity(nativeId(), i10, vector3f);
        return vector3f;
    }

    public void randomizeConstraints() {
        randomizeConstraints(nativeId());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.worldInfo = (SoftBodyWorldInfo) capsule.readSavable(tagWorldInfo, null);
        newEmptySoftBody();
        super.read(jmeImporter);
        readPcoProperties(capsule);
        this.isWorldInfoProtected = capsule.readBoolean(tagIsWorldInfoProtected, false);
        this.config = (SoftBodyConfig) capsule.readSavable(tagConfig, null);
        this.material = (SoftBodyMaterial) capsule.readSavable(tagMaterial, null);
        appendNodes(BufferUtils.createFloatBuffer(capsule.readFloatArray(tagNodeLocations, new float[0])));
        setMasses(BufferUtils.createFloatBuffer(capsule.readFloatArray(tagNodeMasses, new float[0])));
        setNormals(BufferUtils.createFloatBuffer(capsule.readFloatArray(tagNodeNormals, new float[0])));
        setVelocities(BufferUtils.createFloatBuffer(capsule.readFloatArray(tagNodeVelocities, new float[0])));
        appendFaces(IndexBuffer.wrapIndexBuffer(BufferUtils.createIntBuffer(capsule.readIntArray(tagFaceIndices, new int[0]))));
        appendLinks(IndexBuffer.wrapIndexBuffer(BufferUtils.createIntBuffer(capsule.readIntArray(tagLinkIndices, new int[0]))));
        appendTetras(IndexBuffer.wrapIndexBuffer(BufferUtils.createIntBuffer(capsule.readIntArray(tagTetraIndices, new int[0]))));
        long nativeId = nativeId();
        int readInt = capsule.readInt(tagNumClusters, 0);
        for (int i10 = 0; i10 < readInt; i10++) {
            int[] readIntArray = capsule.readIntArray(tagIndices + i10, new int[0]);
            appendCluster(nativeId, readIntArray.length, BufferUtils.createIntBuffer(readIntArray));
            for (Cluster cluster : Cluster.values()) {
                set(cluster, i10, capsule.readFloat(cluster.toString() + i10, cluster.defValue()));
            }
        }
        finishClusters(nativeId);
        setRestingLengthScale(capsule.readFloat(tagRestLengthScale, 0.0f));
        setPhysicsLocation((Vector3f) capsule.readSavable(tagPhysicsLocation, new Vector3f()));
        readJoints(capsule);
    }

    public void releaseAllClusters() {
        releaseClusters(nativeId());
    }

    public void releaseCluster(int i10) {
        C13702E.i(i10, "cluster index", 0, countClusters() - 1);
        releaseCluster(nativeId(), i10);
    }

    public void resetRestingLengths() {
        resetLinkRestLengths(nativeId());
    }

    public float restingLengthsScale() {
        return getRestLengthScale(nativeId());
    }

    public void set(Cluster cluster, int i10, float f10) {
        C13702E.i(i10, "cluster index", 0, countClusters() - 1);
        long nativeId = nativeId();
        switch (AnonymousClass1.$SwitchMap$com$jme3$bullet$objects$infos$Cluster[cluster.ordinal()]) {
            case 1:
                setClusterAngularDamping(nativeId, i10, f10);
                return;
            case 2:
                setClusterLinearDamping(nativeId, i10, f10);
                return;
            case 3:
                setClusterMatching(nativeId, i10, f10);
                return;
            case 4:
                setClusterMaxSelfImpulse(nativeId, i10, f10);
                return;
            case 5:
                setClusterNodeDamping(nativeId, i10, f10);
                return;
            case 6:
                setClusterSelfImpulse(nativeId, i10, f10);
                return;
            default:
                throw new IllegalArgumentException(cluster.toString());
        }
    }

    @Override
    public void setDebugMeshNormals(EnumC13714j enumC13714j) {
        C13702E.t(enumC13714j, "new setting");
        int i10 = AnonymousClass1.$SwitchMap$jme3utilities$MeshNormals[enumC13714j.ordinal()];
        if (i10 == 1 || i10 == 2) {
            super.setDebugMeshNormals(enumC13714j);
            return;
        }
        throw new IllegalArgumentException("normals = " + ((Object) enumC13714j));
    }

    @Override
    public void setGravity(Vector3f vector3f) {
        C13702E.d(vector3f, "acceleration");
        SoftBodyWorldInfo softBodyWorldInfo = new SoftBodyWorldInfo();
        softBodyWorldInfo.copyAll(this.worldInfo);
        softBodyWorldInfo.setGravity(vector3f);
        setWorldInfo(softBodyWorldInfo);
    }

    public final void setMargin(float f10) {
        C13702E.E(f10, "margin");
        setMargin(nativeId(), f10);
    }

    @Override
    public void setMass(float f10) {
        C13702E.E(f10, "total mass");
        setMassByCurrent(f10);
    }

    public void setMassByArea(float f10) {
        C13702E.E(f10, "total mass");
        setTotalMass(nativeId(), f10, true);
    }

    public void setMassByCurrent(float f10) {
        C13702E.E(f10, "total mass");
        setTotalMass(nativeId(), f10, false);
    }

    public void setMassFromDensity(float f10) {
        C13702E.E(f10, "density");
        setTotalDensity(nativeId(), f10);
    }

    public void setMasses(FloatBuffer floatBuffer) {
        C13702E.t(floatBuffer, "masses");
        if (floatBuffer.isDirect()) {
            setMasses(nativeId(), floatBuffer);
            return;
        }
        throw new IllegalArgumentException("The buffer must be direct.");
    }

    public void setNodeMass(int i10, float f10) {
        C13702E.i(i10, "node index", 0, countNodes() - 1);
        C13702E.p(f10, "mass");
        setMass(nativeId(), i10, f10);
    }

    public void setNodeVelocity(int i10, Vector3f vector3f) {
        C13702E.i(i10, "node index", 0, countNodes() - 1);
        C13702E.d(vector3f, "velocity");
        setNodeVelocity(nativeId(), i10, vector3f);
    }

    public void setNormals(FloatBuffer floatBuffer) {
        C13702E.t(floatBuffer, "normals");
        if (floatBuffer.isDirect()) {
            setNormals(nativeId(), floatBuffer);
            return;
        }
        throw new IllegalArgumentException("The buffer must be direct.");
    }

    @Override
    public void setPhysicsLocation(Vector3f vector3f) {
        C13702E.d(vector3f, "location");
        setPhysicsLocation(nativeId(), vector3f);
    }

    public void setPhysicsLocationDp(Vec3d vec3d) {
        C13702E.t(vec3d, "location");
        setPhysicsLocationDp(nativeId(), vec3d);
    }

    public void setPose(boolean z10, boolean z11) {
        setPose(nativeId(), z10, z11);
    }

    public void setProtectWorldInfo(boolean z10) {
        this.isWorldInfoProtected = z10;
    }

    public void setRestingLengthScale(float f10) {
        setRestLengthScale(nativeId(), f10);
    }

    public void setVelocities(FloatBuffer floatBuffer) {
        C13702E.t(floatBuffer, "velocities");
        if (floatBuffer.isDirect()) {
            setVelocities(nativeId(), floatBuffer);
            return;
        }
        throw new IllegalArgumentException("The buffer must be direct.");
    }

    public void setVelocity(Vector3f vector3f) {
        C13702E.d(vector3f, "velocity");
        setVelocity(nativeId(), vector3f);
    }

    public void setVolumeDensity(float f10) {
        setVolumeDensity(nativeId(), f10);
    }

    public void setVolumeMass(float f10) {
        setVolumeMass(nativeId(), f10);
    }

    public void setWindVelocity(Vector3f vector3f) {
        C13702E.d(vector3f, "velocity");
        setWindVelocity(nativeId(), vector3f);
    }

    public void setWorldInfo(SoftBodyWorldInfo softBodyWorldInfo) {
        if (!isInWorld()) {
            logger2.warning("The body is not in any space.");
        }
        setSoftBodyWorldInfo(nativeId(), softBodyWorldInfo.nativeId());
        this.worldInfo = softBodyWorldInfo;
    }

    public float volume() {
        return getVolume(nativeId());
    }

    public Vector3f windVelocity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getWindVelocity(nativeId(), vector3f);
        return vector3f;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.isWorldInfoProtected, tagIsWorldInfoProtected, false);
        capsule.write(restingLengthsScale(), tagRestLengthScale, 0.0f);
        capsule.write(getPhysicsLocation(null), tagPhysicsLocation, (Savable) null);
        FloatBuffer copyLocations = copyLocations(null);
        capsule.write(d.v(copyLocations, 0, copyLocations.capacity()), tagNodeLocations, (float[]) null);
        FloatBuffer copyMasses = copyMasses(null);
        capsule.write(d.v(copyMasses, 0, copyMasses.capacity()), tagNodeMasses, (float[]) null);
        FloatBuffer copyNormals = copyNormals(null);
        capsule.write(d.v(copyNormals, 0, copyNormals.capacity()), tagNodeNormals, (float[]) null);
        FloatBuffer copyVelocities = copyVelocities(null);
        capsule.write(d.v(copyVelocities, 0, copyVelocities.capacity()), tagNodeVelocities, (float[]) null);
        IntBuffer copyFaces = copyFaces(null);
        capsule.write(d.w(copyFaces, 0, copyFaces.capacity()), tagFaceIndices, (int[]) null);
        IntBuffer copyLinks = copyLinks(null);
        capsule.write(d.w(copyLinks, 0, copyLinks.capacity()), tagLinkIndices, (int[]) null);
        IntBuffer copyTetras = copyTetras(null);
        capsule.write(d.w(copyTetras, 0, copyTetras.capacity()), tagTetraIndices, (int[]) null);
        int countClusters = countClusters();
        capsule.write(countClusters, tagNumClusters, 0);
        for (int i10 = 0; i10 < countClusters; i10++) {
            IntBuffer listNodesInCluster = listNodesInCluster(i10, null);
            capsule.write(d.w(listNodesInCluster, 0, listNodesInCluster.capacity()), tagIndices + i10, (int[]) null);
            Cluster[] values = Cluster.values();
            int length = values.length;
            for (int i11 = 0; i11 < length; i11++) {
                Cluster cluster = values[i11];
                capsule.write(get(cluster, i10), cluster.toString() + i10, cluster.defValue());
            }
        }
        capsule.write(this.worldInfo, tagWorldInfo, (Savable) null);
        capsule.write(this.config, tagConfig, (Savable) null);
        capsule.write(this.material, tagMaterial, (Savable) null);
        writeJoints(capsule);
    }

    public void generateClusters(int i10, int i11) {
        C13702E.i(i10, "k", 1, countNodes());
        C13702E.F(i11, "maximum number of iterations");
        generateClusters(nativeId(), i10, i11);
    }

    public void addVelocity(Vector3f vector3f, int i10) {
        C13702E.d(vector3f, "velocity");
        C13702E.i(i10, "node index", 0, countNodes() - 1);
        addVelocity(nativeId(), vector3f, i10);
    }

    public void applyForce(Vector3f vector3f, int i10) {
        C13702E.d(vector3f, "force");
        C13702E.i(i10, "node index", 0, countNodes() - 1);
        addForce(nativeId(), vector3f, i10);
    }
}
