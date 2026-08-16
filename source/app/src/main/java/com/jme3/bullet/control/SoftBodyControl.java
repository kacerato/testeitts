package com.jme3.bullet.control;

import com.jme3.bullet.PhysicsSoftSpace;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.bullet.util.NativeSoftBodyUtil;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.BufferUtils;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.logging.Logger;
import jf.f;
import p000if.C13702E;
import p000if.C13720p;
import p000if.C13723s;

public class SoftBodyControl extends AbstractPhysicsControl {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(SoftBodyControl.class.getName());
    private static final String tagBody = "body";
    private static final String tagGeometry = "geometry";
    private static final String tagMergeVertices = "mergeVertices";
    private static final String tagUpdateNormals = "updateNormals";
    private static final String tagUseTriangles = "useTriangles";
    private PhysicsSoftBody body;
    private Geometry geometry;
    private IntBuffer indexMap;
    private boolean mergeVertices;
    private boolean updateNormals;
    private UseTriangles useTriangles;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bullet$control$UseTriangles;
        static final int[] $SwitchMap$com$jme3$scene$Mesh$Mode;

        static {
            int[] iArr = new int[Mesh.Mode.values().length];
            $SwitchMap$com$jme3$scene$Mesh$Mode = iArr;
            try {
                iArr[Mesh.Mode.Lines.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.LineLoop.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.LineStrip.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.Triangles.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.TriangleFan.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.TriangleStrip.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[UseTriangles.values().length];
            $SwitchMap$com$jme3$bullet$control$UseTriangles = iArr2;
            try {
                iArr2[UseTriangles.FacesAndLinks.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$bullet$control$UseTriangles[UseTriangles.FacesOnly.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$jme3$bullet$control$UseTriangles[UseTriangles.Ignore.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$jme3$bullet$control$UseTriangles[UseTriangles.LinksOnly.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public SoftBodyControl() {
        this.mergeVertices = true;
        this.updateNormals = true;
        this.geometry = null;
        this.indexMap = null;
        this.body = null;
        this.useTriangles = UseTriangles.FacesOnly;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x001e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void appendFromGeometry() {
        IndexBuffer indicesAsList;
        IndexBuffer indexBuffer;
        Mesh mesh = this.geometry.getMesh();
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.Position);
        int vertexCount = mesh.getVertexCount();
        switch (AnonymousClass1.$SwitchMap$com$jme3$scene$Mesh$Mode[mesh.getMode().ordinal()]) {
            case 1:
            case 2:
            case 3:
                indicesAsList = mesh.getIndicesAsList();
                indexBuffer = null;
                if (this.mergeVertices) {
                    this.indexMap = null;
                } else {
                    IntBuffer generateIndexMap = NativeSoftBodyUtil.generateIndexMap(floatBuffer);
                    this.indexMap = generateIndexMap;
                    floatBuffer = NativeSoftBodyUtil.mapVertexData(generateIndexMap, floatBuffer, 3);
                    if (indicesAsList != null) {
                        indicesAsList = NativeSoftBodyUtil.mapIndices(this.indexMap, indicesAsList, null);
                    }
                    if (indexBuffer != null) {
                        indexBuffer = NativeSoftBodyUtil.mapIndices(this.indexMap, indexBuffer, null);
                    }
                }
                this.body.appendNodes(floatBuffer);
                if (indicesAsList != null) {
                    this.body.appendLinks(indicesAsList);
                }
                if (indexBuffer != null) {
                    this.body.appendFaces(indexBuffer);
                }
                Transform worldTransform = this.geometry.getWorldTransform();
                if (isApplyPhysicsLocal()) {
                    worldTransform = f.i(worldTransform, getSpatial().getWorldTransform().invert(), null);
                }
                this.body.applyTransform(worldTransform);
                return;
            case 4:
            case 5:
            case 6:
                int i10 = AnonymousClass1.$SwitchMap$com$jme3$bullet$control$UseTriangles[this.useTriangles.ordinal()];
                if (i10 == 1) {
                    IndexBuffer indicesAsList2 = mesh.getIndicesAsList();
                    IndexBuffer P10 = C13720p.P(indicesAsList2, vertexCount);
                    indexBuffer = indicesAsList2;
                    indicesAsList = P10;
                } else if (i10 == 2) {
                    indexBuffer = mesh.getIndicesAsList();
                    indicesAsList = null;
                } else if (i10 == 3) {
                    indicesAsList = null;
                    indexBuffer = null;
                } else {
                    if (i10 != 4) {
                        throw new IllegalStateException("useTriangles = " + ((Object) this.useTriangles));
                    }
                    indicesAsList = C13720p.P(mesh.getIndicesAsList(), vertexCount);
                    indexBuffer = null;
                }
                if (this.mergeVertices) {
                }
                this.body.appendNodes(floatBuffer);
                if (indicesAsList != null) {
                }
                if (indexBuffer != null) {
                }
                Transform worldTransform2 = this.geometry.getWorldTransform();
                if (isApplyPhysicsLocal()) {
                }
                this.body.applyTransform(worldTransform2);
                return;
            default:
                throw new IllegalStateException(mesh.getMode().name());
        }
    }

    @Override
    public void addPhysics() {
        getPhysicsSpace().addCollisionObject(this.body);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.geometry = (Geometry) cloner.clone(this.geometry);
        this.body = (PhysicsSoftBody) cloner.clone(this.body);
        IntBuffer intBuffer = this.indexMap;
        if (intBuffer != null) {
            SoftBodyControl softBodyControl = (SoftBodyControl) obj;
            int limit = intBuffer.limit();
            this.indexMap = BufferUtils.createIntBuffer(limit);
            for (int i10 = 0; i10 < limit; i10++) {
                this.indexMap.put(softBodyControl.indexMap.get(i10));
            }
        }
    }

    @Override
    public void createSpatialData(Spatial spatial) {
        PhysicsSoftBody physicsSoftBody = new PhysicsSoftBody();
        this.body = physicsSoftBody;
        physicsSoftBody.setUserObject(spatial);
        Geometry geometry = C13723s.B(spatial).get(0);
        this.geometry = geometry;
        if (geometry.getMesh().getBuffer(VertexBuffer.Type.Normal) == null) {
            this.updateNormals = false;
        }
        appendFromGeometry();
    }

    public PhysicsSoftBody getBody() {
        return this.body;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.body = (PhysicsSoftBody) capsule.readSavable("body", null);
        this.geometry = (Geometry) capsule.readSavable(tagGeometry, null);
        this.mergeVertices = capsule.readBoolean(tagMergeVertices, false);
        this.updateNormals = capsule.readBoolean(tagUpdateNormals, false);
        this.useTriangles = (UseTriangles) capsule.readEnum(tagUseTriangles, UseTriangles.class, UseTriangles.FacesOnly);
        if (this.body != null) {
            this.body.setUserObject(getSpatial());
        }
    }

    @Override
    public void removePhysics() {
        getPhysicsSpace().removeCollisionObject(this.body);
    }

    @Override
    public void removeSpatialData(Spatial spatial) {
        this.body.setUserObject(null);
        this.body = null;
    }

    @Override
    public void setPhysicsLocation(Vector3f vector3f) {
        C13702E.d(vector3f, "location");
        this.body.setPhysicsLocation(vector3f);
    }

    @Override
    public void setPhysicsRotation(Quaternion quaternion) {
    }

    @Override
    public void setPhysicsSpace(PhysicsSpace physicsSpace) {
        if (physicsSpace != null && !(physicsSpace instanceof PhysicsSoftSpace)) {
            throw new IllegalArgumentException("The PhysicsSpace must be a PhysicsSoftSpace or null.");
        }
        super.setPhysicsSpace(physicsSpace);
    }

    @Override
    public void update(float f10) {
        if (isEnabled()) {
            Spatial spatial = getSpatial();
            Transform invert = this.geometry.getWorldTransform().invert();
            if (isApplyPhysicsLocal()) {
                invert = f.i(spatial.getWorldTransform(), invert, null);
            }
            Mesh mesh = this.geometry.getMesh();
            NativeSoftBodyUtil.updateMesh(this.body, this.indexMap, mesh, false, this.updateNormals, invert);
            spatial.updateModelBound();
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.body, "body", (Savable) null);
        capsule.write(this.geometry, tagGeometry, (Savable) null);
        capsule.write(this.mergeVertices, tagMergeVertices, false);
        capsule.write(this.updateNormals, tagUpdateNormals, false);
        capsule.write(this.useTriangles, tagUseTriangles, UseTriangles.FacesOnly);
    }

    public SoftBodyControl(boolean z10, boolean z11, boolean z12) {
        this(z10, z11, z12, UseTriangles.FacesOnly);
    }

    public SoftBodyControl(boolean z10, boolean z11, boolean z12, UseTriangles useTriangles) {
        this.mergeVertices = true;
        this.updateNormals = true;
        this.geometry = null;
        this.indexMap = null;
        this.body = null;
        this.useTriangles = UseTriangles.FacesOnly;
        C13702E.t(useTriangles, "use triangles");
        super.setApplyPhysicsLocal(z10);
        this.mergeVertices = z12;
        this.updateNormals = z11;
        this.useTriangles = useTriangles;
    }
}
