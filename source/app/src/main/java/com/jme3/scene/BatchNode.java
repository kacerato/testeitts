package com.jme3.scene;

import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResults;
import com.jme3.material.Material;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.SafeArrayList;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BatchNode extends GeometryGroupNode {
    private static final Logger logger = Logger.getLogger(BatchNode.class.getName());
    protected SafeArrayList<Batch> batches;
    protected Map<Geometry, Batch> batchesByGeom;
    int maxVertCount;
    boolean needsFullRebatch;
    private float[] tmpFloat;
    private float[] tmpFloatN;
    private float[] tmpFloatT;
    boolean useTangents;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$scene$Mesh$Mode;

        static {
            int[] iArr = new int[Mesh.Mode.values().length];
            $SwitchMap$com$jme3$scene$Mesh$Mode = iArr;
            try {
                iArr[Mesh.Mode.Points.ordinal()] = 1;
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
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.Lines.ordinal()] = 4;
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
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.Triangles.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public class Batch implements JmeCloneable {
        Geometry geometry;

        public Batch() {
        }

        @Override
        public void cloneFields(Cloner cloner, Object obj) {
            this.geometry = (Geometry) cloner.clone(this.geometry);
        }

        public final Geometry getGeometry() {
            return this.geometry;
        }

        public void updateGeomList(List<Geometry> list) {
            for (Geometry geometry : list) {
                if (!BatchNode.this.isBatch(geometry)) {
                    BatchNode.this.batchesByGeom.put(geometry, this);
                }
            }
        }

        @Override
        public Batch jmeClone() {
            try {
                return (Batch) super.clone();
            } catch (CloneNotSupportedException unused) {
                throw new AssertionError();
            }
        }
    }

    public BatchNode() {
        this.batches = new SafeArrayList<>(Batch.class);
        this.batchesByGeom = new HashMap();
        this.maxVertCount = 0;
        this.useTangents = false;
        this.needsFullRebatch = true;
    }

    private void doCopyBuffer(FloatBuffer floatBuffer, int i10, FloatBuffer floatBuffer2, int i11) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        int i12 = i10 * i11;
        for (int i13 = 0; i13 < floatBuffer.limit() / i11; i13++) {
            int i14 = i13 * i11;
            vector3f.f81611x = floatBuffer.get(i14);
            vector3f.f81612y = floatBuffer.get(i14 + 1);
            vector3f.f81613z = floatBuffer.get(i14 + 2);
            int i15 = i14 + i12;
            floatBuffer2.put(i15, vector3f.f81611x);
            floatBuffer2.put(i15 + 1, vector3f.f81612y);
            floatBuffer2.put(i15 + 2, vector3f.f81613z);
        }
        tempVars.release();
    }

    private void doTransforms(FloatBuffer floatBuffer, FloatBuffer floatBuffer2, FloatBuffer floatBuffer3, FloatBuffer floatBuffer4, FloatBuffer floatBuffer5, FloatBuffer floatBuffer6, int i10, int i11, Matrix4f matrix4f) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        Vector3f vector3f2 = tempVars.vect2;
        Vector3f vector3f3 = tempVars.vect3;
        int i12 = i11 - i10;
        int i13 = i12 * 3;
        int i14 = i12 * 4;
        int i15 = i10 * 3;
        int i16 = i10 * 4;
        floatBuffer.rewind();
        floatBuffer.get(this.tmpFloat, 0, i13);
        if (floatBuffer2 != null) {
            floatBuffer2.rewind();
            floatBuffer2.get(this.tmpFloatN, 0, i13);
        }
        if (floatBuffer3 != null) {
            floatBuffer3.rewind();
            floatBuffer3.get(this.tmpFloatT, 0, i14);
        }
        int i17 = 0;
        int i18 = 0;
        while (i17 < i13) {
            int i19 = i17 + 1;
            int i20 = i17 + 2;
            float[] fArr = this.tmpFloat;
            int i21 = i14;
            vector3f.f81611x = fArr[i17];
            vector3f.f81612y = fArr[i19];
            vector3f.f81613z = fArr[i20];
            matrix4f.mult(vector3f, vector3f);
            float[] fArr2 = this.tmpFloat;
            fArr2[i17] = vector3f.f81611x;
            fArr2[i19] = vector3f.f81612y;
            fArr2[i20] = vector3f.f81613z;
            if (floatBuffer2 != null) {
                float[] fArr3 = this.tmpFloatN;
                vector3f2.f81611x = fArr3[i17];
                vector3f2.f81612y = fArr3[i19];
                vector3f2.f81613z = fArr3[i20];
                matrix4f.multNormal(vector3f2, vector3f2);
                float[] fArr4 = this.tmpFloatN;
                fArr4[i17] = vector3f2.f81611x;
                fArr4[i19] = vector3f2.f81612y;
                fArr4[i20] = vector3f2.f81613z;
            }
            i17 += 3;
            if (floatBuffer3 != null) {
                int i22 = i18 + 1;
                int i23 = i18 + 2;
                Vector3f vector3f4 = vector3f;
                float[] fArr5 = this.tmpFloatT;
                vector3f3.f81611x = fArr5[i18];
                vector3f3.f81612y = fArr5[i22];
                vector3f3.f81613z = fArr5[i23];
                matrix4f.multNormal(vector3f3, vector3f3);
                float[] fArr6 = this.tmpFloatT;
                fArr6[i18] = vector3f3.f81611x;
                fArr6[i22] = vector3f3.f81612y;
                fArr6[i23] = vector3f3.f81613z;
                i18 += 4;
                vector3f = vector3f4;
                vector3f2 = vector3f2;
            }
            i14 = i21;
        }
        int i24 = i14;
        tempVars.release();
        floatBuffer4.position(i15);
        floatBuffer4.put(this.tmpFloat, 0, i13);
        if (floatBuffer2 != null) {
            floatBuffer5.position(i15);
            floatBuffer5.put(this.tmpFloatN, 0, i13);
        }
        if (floatBuffer3 != null) {
            floatBuffer6.position(i16);
            floatBuffer6.put(this.tmpFloatT, 0, i24);
        }
    }

    private Batch findBatchByMaterial(Material material) {
        for (Batch batch : this.batches.getArray()) {
            if (batch.geometry.getMaterial().contentEquals(material)) {
                return batch;
            }
        }
        return null;
    }

    private void gatherGeometries(Map<Material, List<Geometry>> map, Spatial spatial, boolean z10) {
        if (!(spatial instanceof Geometry)) {
            if (spatial instanceof Node) {
                for (Spatial spatial2 : ((Node) spatial).getChildren()) {
                    if (!(spatial2 instanceof BatchNode)) {
                        gatherGeometries(map, spatial2, z10);
                    }
                }
                return;
            }
            return;
        }
        if (isBatch(spatial) || spatial.getBatchHint() == Spatial.BatchHint.Never) {
            return;
        }
        Geometry geometry = (Geometry) spatial;
        if (this.maxVertCount < geometry.getVertexCount()) {
            this.maxVertCount = geometry.getVertexCount();
        }
        if (!geometry.isGrouped() || z10) {
            if (geometry.getMaterial() == null) {
                throw new IllegalStateException("No material is set for Geometry: " + geometry.getName() + " please set a material before batching");
            }
            List<Geometry> list = map.get(geometry.getMaterial());
            if (list == null) {
                for (Map.Entry<Material, List<Geometry>> entry : map.entrySet()) {
                    if (geometry.getMaterial().contentEquals(entry.getKey())) {
                        list = entry.getValue();
                    }
                }
            }
            if (list == null) {
                list = new ArrayList<>();
                map.put(geometry.getMaterial(), list);
            }
            geometry.setTransformRefresh();
            list.add(geometry);
        }
    }

    private FloatBuffer getFloatBuffer(VertexBuffer vertexBuffer) {
        if (vertexBuffer == null) {
            return null;
        }
        return (FloatBuffer) vertexBuffer.getData();
    }

    private void initTempFloatArrays() {
        int i10 = this.maxVertCount;
        this.tmpFloat = new float[i10 * 3];
        this.tmpFloatN = new float[i10 * 3];
        if (this.useTangents) {
            this.tmpFloatT = new float[i10 * 4];
        }
    }

    private void mergeGeometries(Mesh mesh, List<Geometry> list) {
        int i10;
        Iterator<Geometry> it;
        Mesh.Mode mode;
        int i11;
        Mesh mesh2 = mesh;
        int length = VertexBuffer.Type.values().length;
        int[] iArr = new int[length];
        VertexBuffer.Format[] formatArr = new VertexBuffer.Format[length];
        boolean[] zArr = new boolean[VertexBuffer.Type.values().length];
        Iterator<Geometry> it2 = list.iterator();
        int i12 = -1;
        Mesh.Mode mode2 = null;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (it2.hasNext()) {
            Geometry next = it2.next();
            int vertexCount = i13 + next.getVertexCount();
            int triangleCount = i14 + next.getTriangleCount();
            i15 = Math.min(i15, next.getMesh().getNumLodLevels());
            switch (AnonymousClass1.$SwitchMap$com$jme3$scene$Mesh$Mode[next.getMesh().getMode().ordinal()]) {
                case 1:
                    mode = Mesh.Mode.Points;
                    i11 = 1;
                    break;
                case 2:
                case 3:
                case 4:
                    mode = Mesh.Mode.Lines;
                    i11 = 2;
                    break;
                case 5:
                case 6:
                case 7:
                    mode = Mesh.Mode.Triangles;
                    i11 = 3;
                    break;
                default:
                    throw new UnsupportedOperationException();
            }
            VertexBuffer[] array = next.getMesh().getBufferList().getArray();
            Iterator<Geometry> it3 = it2;
            int length2 = array.length;
            int i16 = 0;
            while (i16 < length2) {
                VertexBuffer vertexBuffer = array[i16];
                int i17 = length2;
                int i18 = iArr[vertexBuffer.getBufferType().ordinal()];
                VertexBuffer[] vertexBufferArr = array;
                int i19 = triangleCount;
                if (vertexBuffer.getBufferType() != VertexBuffer.Type.Index && i18 != 0 && i18 != vertexBuffer.getNumComponents()) {
                    throw new UnsupportedOperationException("The geometry " + ((Object) next) + " buffer " + ((Object) vertexBuffer.getBufferType()) + " has different number of components than the rest of the meshes (this: " + vertexBuffer.getNumComponents() + ", expected: " + i18 + ")");
                }
                iArr[vertexBuffer.getBufferType().ordinal()] = vertexBuffer.getNumComponents();
                formatArr[vertexBuffer.getBufferType().ordinal()] = vertexBuffer.getFormat();
                zArr[vertexBuffer.getBufferType().ordinal()] = vertexBuffer.isNormalized();
                i16++;
                array = vertexBufferArr;
                length2 = i17;
                triangleCount = i19;
            }
            int i20 = triangleCount;
            i12 = Math.max(i12, next.getMesh().getMaxNumWeights());
            if (mode2 != null && mode2 != mode) {
                throw new UnsupportedOperationException("Cannot combine different primitive types: " + ((Object) mode2) + " != " + ((Object) mode));
            }
            iArr[VertexBuffer.Type.Index.ordinal()] = i11;
            mode2 = mode;
            it2 = it3;
            i13 = vertexCount;
            i14 = i20;
        }
        mesh2.setMaxNumWeights(i12);
        mesh2.setMode(mode2);
        if (i13 >= 65536) {
            formatArr[VertexBuffer.Type.Index.ordinal()] = VertexBuffer.Format.UnsignedInt;
        } else {
            formatArr[VertexBuffer.Type.Index.ordinal()] = VertexBuffer.Format.UnsignedShort;
        }
        int i21 = 0;
        while (i21 < length) {
            if (iArr[i21] != 0) {
                Buffer createBuffer = i21 == VertexBuffer.Type.Index.ordinal() ? VertexBuffer.createBuffer(formatArr[i21], iArr[i21], i14) : VertexBuffer.createBuffer(formatArr[i21], iArr[i21], i13);
                VertexBuffer vertexBuffer2 = new VertexBuffer(VertexBuffer.Type.values()[i21]);
                vertexBuffer2.setupData(VertexBuffer.Usage.Dynamic, iArr[i21], formatArr[i21], createBuffer);
                vertexBuffer2.setNormalized(zArr[i21]);
                mesh2.setBuffer(vertexBuffer2);
            }
            i21++;
        }
        Iterator<Geometry> it4 = list.iterator();
        int i22 = 0;
        int i23 = 0;
        while (it4.hasNext()) {
            Geometry next2 = it4.next();
            Mesh mesh3 = next2.getMesh();
            if (!isBatch(next2)) {
                next2.associateWithGroupNode(this, i22);
            }
            int vertexCount2 = mesh3.getVertexCount();
            int triangleCount2 = mesh3.getTriangleCount();
            int i24 = 0;
            while (i24 < length) {
                VertexBuffer buffer = mesh3.getBuffer(VertexBuffer.Type.values()[i24]);
                VertexBuffer buffer2 = mesh2.getBuffer(VertexBuffer.Type.values()[i24]);
                if (buffer2 != null) {
                    if (VertexBuffer.Type.Index.ordinal() == i24) {
                        int i25 = iArr[i24];
                        IndexBuffer indicesAsList = mesh3.getIndicesAsList();
                        IndexBuffer indexBuffer = mesh.getIndexBuffer();
                        for (int i26 = 0; i26 < triangleCount2; i26++) {
                            int i27 = 0;
                            while (i27 < i25) {
                                indexBuffer.put(((i23 + i26) * i25) + i27, indicesAsList.get((i26 * i25) + i27) + i22);
                                i27++;
                                it4 = it4;
                                length = length;
                            }
                        }
                    } else {
                        i10 = length;
                        it = it4;
                        if (VertexBuffer.Type.Position.ordinal() == i24) {
                            doCopyBuffer((FloatBuffer) buffer.getData(), i22, (FloatBuffer) buffer2.getData(), 3);
                        } else if (VertexBuffer.Type.Normal.ordinal() == i24 || VertexBuffer.Type.Tangent.ordinal() == i24) {
                            doCopyBuffer((FloatBuffer) buffer.getData(), i22, (FloatBuffer) buffer2.getData(), iArr[i24]);
                            if (VertexBuffer.Type.Tangent.ordinal() == i24) {
                                this.useTangents = true;
                                i24++;
                                mesh2 = mesh;
                                it4 = it;
                                length = i10;
                            }
                        } else {
                            if (buffer == null) {
                                throw new IllegalArgumentException("Geometry " + next2.getName() + " has no " + ((Object) buffer2.getBufferType()) + " buffer whereas other geoms have. all geometries should have the same types of buffers.\n Try to use GeometryBatchFactory.alignBuffer() on the BatchNode before batching");
                            }
                            buffer.copyElements(0, buffer2, i22, vertexCount2);
                        }
                        i24++;
                        mesh2 = mesh;
                        it4 = it;
                        length = i10;
                    }
                }
                i10 = length;
                it = it4;
                i24++;
                mesh2 = mesh;
                it4 = it;
                length = i10;
            }
            i22 += vertexCount2;
            i23 += triangleCount2;
            mesh2 = mesh;
            it4 = it4;
            length = length;
        }
    }

    private void unbatchSubGraph(Spatial spatial) {
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                unbatchSubGraph(it.next());
            }
        } else if (spatial instanceof Geometry) {
            Geometry geometry = (Geometry) spatial;
            if (geometry.isGrouped()) {
                geometry.unassociateFromGroupNode();
            }
        }
    }

    public void batch() {
        doBatch();
        for (Batch batch : this.batches.getArray()) {
            batch.geometry.setIgnoreTransform(true);
            batch.geometry.setUserData(UserData.JME_PHYSICSIGNORE, Boolean.TRUE);
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.batches = (SafeArrayList) cloner.clone(this.batches);
        this.tmpFloat = (float[]) cloner.clone(this.tmpFloat);
        this.tmpFloatN = (float[]) cloner.clone(this.tmpFloatN);
        this.tmpFloatT = (float[]) cloner.clone(this.tmpFloatT);
        HashMap hashMap = new HashMap();
        for (Map.Entry<Geometry, Batch> entry : this.batchesByGeom.entrySet()) {
            hashMap.put((Geometry) cloner.clone(entry.getKey()), (Batch) cloner.clone(entry.getValue()));
        }
        this.batchesByGeom = hashMap;
    }

    @Override
    public int collideWith(Collidable collidable, CollisionResults collisionResults) {
        int i10 = 0;
        for (Spatial spatial : this.children.getArray()) {
            if (!isBatch(spatial)) {
                i10 += spatial.collideWith(collidable, collisionResults);
            }
        }
        return i10;
    }

    @Override
    public Spatial detachChildAt(int i10) {
        Spatial detachChildAt = super.detachChildAt(i10);
        if (detachChildAt instanceof Node) {
            unbatchSubGraph(detachChildAt);
        }
        return detachChildAt;
    }

    public void doBatch() {
        Batch batch;
        HashMap hashMap = new HashMap();
        int i10 = this.maxVertCount;
        this.maxVertCount = 0;
        gatherGeometries(hashMap, this, this.needsFullRebatch);
        if (this.needsFullRebatch) {
            for (Batch batch2 : this.batches.getArray()) {
                batch2.geometry.removeFromParent();
            }
            this.batches.clear();
            this.batchesByGeom.clear();
        }
        int i11 = 0;
        for (Map.Entry<Material, List<Geometry>> entry : hashMap.entrySet()) {
            Mesh mesh = new Mesh();
            Material key = entry.getKey();
            List<Geometry> value = entry.getValue();
            i11 += value.size();
            String str = this.name + "-batch" + this.batches.size();
            if (this.needsFullRebatch) {
                batch = new Batch();
            } else {
                batch = findBatchByMaterial(key);
                if (batch != null) {
                    value.add(0, batch.geometry);
                    str = batch.geometry.getName();
                    batch.geometry.removeFromParent();
                } else {
                    batch = new Batch();
                }
            }
            mergeGeometries(mesh, value);
            mesh.setDynamic();
            batch.updateGeomList(value);
            Geometry geometry = new Geometry(str);
            batch.geometry = geometry;
            geometry.setMaterial(key);
            attachChild(batch.geometry);
            batch.geometry.setMesh(mesh);
            batch.geometry.getMesh().updateCounts();
            batch.geometry.updateModelBound();
            this.batches.add(batch);
        }
        if (this.batches.size() > 0) {
            this.needsFullRebatch = false;
        }
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Batched {0} geometries in {1} batches.", new Object[]{Integer.valueOf(i11), Integer.valueOf(this.batches.size())});
        }
        if (i10 != this.maxVertCount) {
            initTempFloatArrays();
        }
    }

    public Material getMaterial() {
        if (this.batches.isEmpty()) {
            return null;
        }
        return this.batches.iterator().next().geometry.getMaterial();
    }

    public Matrix4f getTransformMatrix(Geometry geometry) {
        return geometry.cachedWorldMat;
    }

    public final boolean isBatch(Spatial spatial) {
        for (Batch batch : this.batches.getArray()) {
            if (batch.geometry == spatial) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void onGeometryUnassociated(Geometry geometry) {
        setNeedsFullRebatch(true);
    }

    @Override
    public void onMaterialChange(Geometry geometry) {
        throw new UnsupportedOperationException("Cannot set the material of a batched geometry, change the material of the parent BatchNode.");
    }

    @Override
    public void onMeshChange(Geometry geometry) {
        throw new UnsupportedOperationException("Cannot set the mesh of a batched geometry");
    }

    @Override
    public void onTransformChange(Geometry geometry) {
        updateSubBatch(geometry);
    }

    @Override
    public void setMaterial(Material material) {
        throw new UnsupportedOperationException("Unsupported for now, please set the material on the geoms before batching");
    }

    public void setNeedsFullRebatch(boolean z10) {
        this.needsFullRebatch = z10;
    }

    public void updateSubBatch(Geometry geometry) {
        Batch batch = this.batchesByGeom.get(geometry);
        if (batch != null) {
            Mesh mesh = batch.geometry.getMesh();
            Mesh mesh2 = geometry.getMesh();
            VertexBuffer.Type type = VertexBuffer.Type.Position;
            VertexBuffer buffer = mesh.getBuffer(type);
            VertexBuffer.Type type2 = VertexBuffer.Type.Normal;
            VertexBuffer buffer2 = mesh.getBuffer(type2);
            VertexBuffer.Type type3 = VertexBuffer.Type.Tangent;
            VertexBuffer buffer3 = mesh.getBuffer(type3);
            VertexBuffer buffer4 = mesh2.getBuffer(type);
            VertexBuffer buffer5 = mesh2.getBuffer(type2);
            VertexBuffer buffer6 = mesh2.getBuffer(type3);
            FloatBuffer floatBuffer = getFloatBuffer(buffer);
            FloatBuffer floatBuffer2 = getFloatBuffer(buffer2);
            FloatBuffer floatBuffer3 = getFloatBuffer(buffer3);
            FloatBuffer floatBuffer4 = getFloatBuffer(buffer4);
            FloatBuffer floatBuffer5 = getFloatBuffer(buffer5);
            FloatBuffer floatBuffer6 = getFloatBuffer(buffer6);
            Matrix4f transformMatrix = getTransformMatrix(geometry);
            int i10 = geometry.startIndex;
            doTransforms(floatBuffer4, floatBuffer5, floatBuffer6, floatBuffer, floatBuffer2, floatBuffer3, i10, i10 + geometry.getVertexCount(), transformMatrix);
            buffer.updateData(floatBuffer);
            if (buffer2 != null) {
                buffer2.updateData(floatBuffer2);
            }
            if (buffer3 != null) {
                buffer3.updateData(floatBuffer3);
            }
            batch.geometry.updateModelBound();
        }
    }

    @Override
    public Node clone(boolean z10) {
        BatchNode batchNode = (BatchNode) super.clone(z10);
        if (this.batches.size() > 0) {
            Iterator<Batch> it = this.batches.iterator();
            while (it.hasNext()) {
                Batch next = it.next();
                int i10 = 0;
                while (true) {
                    if (i10 >= batchNode.children.size()) {
                        break;
                    }
                    if (batchNode.children.get(i10).getName().equals(next.geometry.getName())) {
                        batchNode.children.remove(i10);
                        break;
                    }
                    i10++;
                }
            }
            batchNode.needsFullRebatch = true;
            batchNode.batches = new SafeArrayList<>(Batch.class);
            batchNode.batchesByGeom = new HashMap();
            batchNode.batch();
        }
        return batchNode;
    }

    public BatchNode(String str) {
        super(str);
        this.batches = new SafeArrayList<>(Batch.class);
        this.batchesByGeom = new HashMap();
        this.maxVertCount = 0;
        this.useTangents = false;
        this.needsFullRebatch = true;
    }
}
