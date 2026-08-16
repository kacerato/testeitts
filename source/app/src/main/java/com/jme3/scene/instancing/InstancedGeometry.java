package com.jme3.scene.instancing;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingVolume;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResults;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Quaternion;
import com.jme3.renderer.Camera;
import com.jme3.scene.Geometry;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.function.BiFunction;

public class InstancedGeometry extends Geometry {
    private static final int INSTANCE_SIZE = 16;
    private static BiFunction<Camera, Geometry, Boolean> instanceCullingFunction = new DefaultInstanceCullingFunction();
    private VertexBuffer[] allInstanceData;
    private Camera cam;
    private int firstUnusedIndex;
    private Geometry[] geometries;
    private VertexBuffer[] globalInstanceData;
    private int numVisibleInstances;
    private VertexBuffer transformInstanceData;

    public static class DefaultInstanceCullingFunction implements BiFunction<Camera, Geometry, Boolean> {
        @Override
        public Boolean apply(Camera camera, Geometry geometry) {
            BoundingVolume worldBound = geometry.getWorldBound();
            int planeState = camera.getPlaneState();
            camera.setPlaneState(0);
            Camera.FrustumIntersect contains = camera.contains(worldBound);
            camera.setPlaneState(planeState);
            return Boolean.valueOf(contains == Camera.FrustumIntersect.Outside);
        }
    }

    public InstancedGeometry() {
        this.geometries = new Geometry[1];
        this.firstUnusedIndex = 0;
        this.numVisibleInstances = 0;
        setIgnoreTransform(true);
        setBatchHint(Spatial.BatchHint.Never);
        setMaxNumInstances(1);
    }

    public static BiFunction<Camera, Geometry, Boolean> getInstanceCullingFunction() {
        return instanceCullingFunction;
    }

    public static void setInstanceCullingFunction(BiFunction<Camera, Geometry, Boolean> biFunction) {
        instanceCullingFunction = biFunction;
    }

    private void swap(int i10, int i11) {
        Geometry[] geometryArr = this.geometries;
        Geometry geometry = geometryArr[i10];
        geometryArr[i10] = geometryArr[i11];
        geometryArr[i11] = geometry;
        Geometry geometry2 = geometryArr[i10];
        if (geometry2 != null) {
            InstancedNode.setGeometryStartIndex2(geometry2, i10);
        }
        Geometry geometry3 = this.geometries[i11];
        if (geometry3 != null) {
            InstancedNode.setGeometryStartIndex2(geometry3, i11);
        }
    }

    private void updateAllInstanceData() {
        ArrayList arrayList = new ArrayList();
        VertexBuffer vertexBuffer = this.transformInstanceData;
        if (vertexBuffer != null) {
            arrayList.add(vertexBuffer);
        }
        VertexBuffer[] vertexBufferArr = this.globalInstanceData;
        if (vertexBufferArr != null) {
            arrayList.addAll(Arrays.asList(vertexBufferArr));
        }
        this.allInstanceData = (VertexBuffer[]) arrayList.toArray(new VertexBuffer[arrayList.size()]);
    }

    private void updateInstance(Matrix4f matrix4f, float[] fArr, int i10, Matrix3f matrix3f, Quaternion quaternion) {
        matrix4f.toRotationMatrix(matrix3f);
        matrix3f.invertLocal();
        quaternion.fromRotationMatrix(matrix3f);
        fArr[i10] = matrix4f.m00;
        fArr[i10 + 1] = matrix4f.m10;
        fArr[i10 + 2] = matrix4f.m20;
        fArr[i10 + 3] = quaternion.getX();
        fArr[i10 + 4] = matrix4f.m01;
        fArr[i10 + 5] = matrix4f.m11;
        fArr[i10 + 6] = matrix4f.m21;
        fArr[i10 + 7] = quaternion.getY();
        fArr[i10 + 8] = matrix4f.m02;
        fArr[i10 + 9] = matrix4f.m12;
        fArr[i10 + 10] = matrix4f.m22;
        fArr[i10 + 11] = quaternion.getZ();
        fArr[i10 + 12] = matrix4f.m03;
        fArr[i10 + 13] = matrix4f.m13;
        fArr[i10 + 14] = matrix4f.m23;
        fArr[i10 + 15] = quaternion.getW();
    }

    public void addInstance(Geometry geometry) {
        if (geometry == null) {
            throw new IllegalArgumentException("geometry cannot be null");
        }
        if (this.firstUnusedIndex + 1 >= this.geometries.length) {
            setMaxNumInstances(getMaxNumInstances() * 2);
        }
        int i10 = this.firstUnusedIndex;
        this.firstUnusedIndex = i10 + 1;
        this.geometries[i10] = geometry;
        InstancedNode.setGeometryStartIndex2(geometry, i10);
        setBoundRefresh();
    }

    @Override
    public boolean checkCulling(Camera camera) {
        this.cam = camera;
        return super.checkCulling(camera);
    }

    public void cleanup() {
        BufferUtils.destroyDirectBuffer(this.transformInstanceData.getData());
        this.transformInstanceData = null;
        this.allInstanceData = null;
        this.geometries = null;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.globalInstanceData = (VertexBuffer[]) cloner.clone(this.globalInstanceData);
        this.transformInstanceData = (VertexBuffer) cloner.clone(this.transformInstanceData);
        this.allInstanceData = (VertexBuffer[]) cloner.clone(this.allInstanceData);
        this.geometries = (Geometry[]) cloner.clone(this.geometries);
    }

    @Override
    public int collideWith(Collidable collidable, CollisionResults collisionResults) {
        return 0;
    }

    public void deleteInstance(Geometry geometry) {
        int i10;
        int geometryStartIndex2 = InstancedNode.getGeometryStartIndex2(geometry);
        InstancedNode.setGeometryStartIndex2(geometry, -1);
        this.geometries[geometryStartIndex2] = null;
        int i11 = this.firstUnusedIndex;
        if (geometryStartIndex2 == i11 - 1) {
            this.firstUnusedIndex = i11 - 1;
            do {
                Geometry[] geometryArr = this.geometries;
                int i12 = this.firstUnusedIndex;
                if (geometryArr[i12] != null) {
                    break;
                }
                i10 = i12 - 1;
                this.firstUnusedIndex = i10;
            } while (i10 >= 0);
            this.firstUnusedIndex++;
        }
        setBoundRefresh();
    }

    public VertexBuffer[] getAllInstanceData() {
        return this.allInstanceData;
    }

    public Geometry[] getGeometries() {
        return this.geometries;
    }

    public VertexBuffer[] getGlobalUserInstanceData() {
        return this.globalInstanceData;
    }

    public int getMaxNumInstances() {
        return this.geometries.length;
    }

    public int getNumInstances() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            Geometry[] geometryArr = this.geometries;
            if (i10 >= geometryArr.length) {
                return i11;
            }
            if (geometryArr[i10] != null) {
                i11++;
            }
            i10++;
        }
    }

    public int getNumVisibleInstances() {
        return this.numVisibleInstances;
    }

    public VertexBuffer getTransformUserInstanceData() {
        return this.transformInstanceData;
    }

    public boolean isEmpty() {
        return getNumInstances() == 0;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        Savable[] readSavableArray = jmeImporter.getCapsule(this).readSavableArray("geometries", null);
        this.geometries = new Geometry[readSavableArray.length];
        for (int i10 = 0; i10 < readSavableArray.length; i10++) {
            this.geometries[i10] = (Geometry) readSavableArray[i10];
        }
        updateAllInstanceData();
    }

    public void setGlobalUserInstanceData(VertexBuffer[] vertexBufferArr) {
        this.globalInstanceData = vertexBufferArr;
        updateAllInstanceData();
    }

    public final void setMaxNumInstances(int i10) {
        if (i10 < 1) {
            throw new IllegalArgumentException("maxNumInstances must be 1 or higher");
        }
        Geometry[] geometryArr = this.geometries;
        Geometry[] geometryArr2 = new Geometry[i10];
        this.geometries = geometryArr2;
        if (geometryArr != null) {
            System.arraycopy(geometryArr, 0, geometryArr2, 0, geometryArr.length);
        }
        VertexBuffer vertexBuffer = this.transformInstanceData;
        if (vertexBuffer != null) {
            BufferUtils.destroyDirectBuffer(vertexBuffer.getData());
            this.transformInstanceData.updateData(BufferUtils.createFloatBuffer(this.geometries.length * 16));
        } else if (vertexBuffer == null) {
            VertexBuffer vertexBuffer2 = new VertexBuffer(VertexBuffer.Type.InstanceData);
            this.transformInstanceData = vertexBuffer2;
            vertexBuffer2.setInstanced(true);
            this.transformInstanceData.setupData(VertexBuffer.Usage.Stream, 16, VertexBuffer.Format.Float, BufferUtils.createFloatBuffer(this.geometries.length * 16));
            updateAllInstanceData();
        }
    }

    public void setTransformUserInstanceData(VertexBuffer vertexBuffer) {
        this.transformInstanceData = vertexBuffer;
        updateAllInstanceData();
    }

    public void updateInstances() {
        updateInstances(this.cam);
    }

    @Override
    public void updateWorldBound() {
        this.refreshFlags &= -3;
        BoundingVolume boundingVolume = null;
        for (int i10 = 0; i10 < this.firstUnusedIndex; i10++) {
            Geometry geometry = this.geometries[i10];
            if (geometry != null) {
                if (boundingVolume != null) {
                    boundingVolume.mergeLocal(geometry.getWorldBound());
                } else if (geometry.getWorldBound() != null) {
                    boundingVolume = geometry.getWorldBound().clone(this.worldBound);
                }
            }
        }
        if (boundingVolume == null) {
            boundingVolume = new BoundingBox(getWorldTranslation(), 0.0f, 0.0f, 0.0f);
        }
        this.worldBound = boundingVolume;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.geometries, "geometries", (Savable[]) null);
    }

    public void updateInstances(Camera camera) {
        BiFunction<Camera, Geometry, Boolean> biFunction;
        FloatBuffer floatBuffer = (FloatBuffer) this.transformInstanceData.getData();
        floatBuffer.limit(floatBuffer.capacity());
        int i10 = 0;
        floatBuffer.position(0);
        TempVars tempVars = TempVars.get();
        float[] fArr = tempVars.matrixWrite;
        int i11 = 0;
        while (true) {
            int i12 = this.firstUnusedIndex;
            if (i10 < i12) {
                Geometry[] geometryArr = this.geometries;
                Geometry geometry = geometryArr[i10];
                if (geometry == null) {
                    geometry = geometryArr[i12 - 1];
                    if (geometry != null) {
                        swap(i10, i12 - 1);
                        while (true) {
                            Geometry[] geometryArr2 = this.geometries;
                            int i13 = this.firstUnusedIndex;
                            if (geometryArr2[i13 - 1] != null) {
                                break;
                            } else {
                                this.firstUnusedIndex = i13 - 1;
                            }
                        }
                    } else {
                        throw new AssertionError();
                    }
                }
                if (camera == null || (biFunction = instanceCullingFunction) == null || !biFunction.apply(camera, geometry).booleanValue()) {
                    updateInstance(geometry.getWorldMatrix(), fArr, 0, tempVars.tempMat3, tempVars.quat1);
                    floatBuffer.put(fArr);
                } else {
                    i11++;
                }
                i10++;
            } else {
                tempVars.release();
                floatBuffer.flip();
                this.numVisibleInstances = this.firstUnusedIndex - i11;
                if (floatBuffer.limit() / 16 == this.numVisibleInstances) {
                    this.transformInstanceData.updateData(floatBuffer);
                    return;
                }
                throw new AssertionError();
            }
        }
    }

    public InstancedGeometry(String str) {
        super(str);
        this.geometries = new Geometry[1];
        this.firstUnusedIndex = 0;
        this.numVisibleInstances = 0;
        setIgnoreTransform(true);
        setBatchHint(Spatial.BatchHint.Never);
        setMaxNumInstances(1);
    }
}
