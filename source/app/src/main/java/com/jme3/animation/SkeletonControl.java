package com.jme3.animation;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.MatParamOverride;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix4f;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.RendererException;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.control.AbstractControl;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.shader.VarType;
import com.jme3.util.SafeArrayList;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import jme3utilities.debug.h;

@Deprecated
public class SkeletonControl extends AbstractControl implements Cloneable, JmeCloneable {
    static final boolean $assertionsDisabled = false;
    private MatParamOverride boneMatricesParam;
    private MatParamOverride numberOfBonesParam;
    private transient Matrix4f[] offsetMatrices;
    private Skeleton skeleton;
    private SafeArrayList<Geometry> targets = new SafeArrayList<>(Geometry.class);
    private boolean wasMeshUpdated = false;
    private transient boolean hwSkinningDesired = true;
    private transient boolean hwSkinningEnabled = false;
    private transient boolean hwSkinningTested = false;
    private transient boolean hwSkinningSupported = false;

    public SkeletonControl() {
    }

    private void applySkinning(Mesh mesh, Matrix4f[] matrix4fArr) {
        float[] fArr;
        int i10;
        VertexBuffer vertexBuffer;
        VertexBuffer vertexBuffer2;
        FloatBuffer floatBuffer;
        IndexBuffer indexBuffer;
        TempVars tempVars;
        int i11;
        int maxNumWeights = mesh.getMaxNumWeights();
        if (maxNumWeights <= 0) {
            throw new IllegalStateException("Max weights per vert is incorrectly set!");
        }
        int i12 = 4 - maxNumWeights;
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.Position);
        FloatBuffer floatBuffer2 = (FloatBuffer) buffer.getData();
        floatBuffer2.rewind();
        VertexBuffer buffer2 = mesh.getBuffer(VertexBuffer.Type.Normal);
        FloatBuffer floatBuffer3 = (FloatBuffer) buffer2.getData();
        floatBuffer3.rewind();
        IndexBuffer wrapIndexBuffer = IndexBuffer.wrapIndexBuffer(mesh.getBuffer(VertexBuffer.Type.BoneIndex).getData());
        FloatBuffer floatBuffer4 = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.BoneWeight).getData();
        floatBuffer4.rewind();
        float[] array = floatBuffer4.array();
        TempVars tempVars2 = TempVars.get();
        float[] fArr2 = tempVars2.skinPositions;
        float[] fArr3 = tempVars2.skinNormals;
        int ceil = ((int) FastMath.ceil(floatBuffer2.limit() / fArr2.length)) - 1;
        int i13 = 0;
        int i14 = 0;
        while (ceil >= 0) {
            int min = Math.min(fArr2.length, floatBuffer2.remaining());
            floatBuffer2.get(fArr2, i13, min);
            floatBuffer3.get(fArr3, i13, min);
            int i15 = (min / 3) - 1;
            int i16 = i13;
            while (i15 >= 0) {
                float f10 = 0.0f;
                if (array[i14] == 0.0f) {
                    i16 += 3;
                    i14 += 4;
                    fArr = array;
                    i10 = maxNumWeights;
                    vertexBuffer = buffer;
                    vertexBuffer2 = buffer2;
                    floatBuffer = floatBuffer3;
                    indexBuffer = wrapIndexBuffer;
                    tempVars = tempVars2;
                    i11 = ceil;
                } else {
                    float f11 = fArr3[i16];
                    int i17 = i16 + 1;
                    float f12 = fArr2[i16];
                    float f13 = fArr3[i17];
                    int i18 = i16 + 2;
                    float f14 = fArr2[i17];
                    float f15 = fArr3[i18];
                    float f16 = fArr2[i18];
                    float f17 = 0.0f;
                    float f18 = 0.0f;
                    float f19 = 0.0f;
                    float f20 = 0.0f;
                    int i19 = maxNumWeights - 1;
                    float f21 = 0.0f;
                    while (i19 >= 0) {
                        float f22 = array[i14];
                        int i20 = i14 + 1;
                        Matrix4f matrix4f = matrix4fArr[wrapIndexBuffer.get(i14)];
                        float f23 = matrix4f.m00;
                        float[] fArr4 = array;
                        float f24 = matrix4f.m01;
                        int i21 = maxNumWeights;
                        float f25 = matrix4f.m02;
                        IndexBuffer indexBuffer2 = wrapIndexBuffer;
                        f21 += ((f23 * f12) + (f24 * f14) + (f25 * f16) + matrix4f.m03) * f22;
                        float f26 = matrix4f.m10;
                        VertexBuffer vertexBuffer3 = buffer2;
                        float f27 = matrix4f.m11;
                        VertexBuffer vertexBuffer4 = buffer;
                        float f28 = matrix4f.m12;
                        TempVars tempVars3 = tempVars2;
                        f18 += ((f26 * f12) + (f27 * f14) + (f28 * f16) + matrix4f.m13) * f22;
                        float f29 = matrix4f.m20;
                        int i22 = ceil;
                        float f30 = matrix4f.m21;
                        FloatBuffer floatBuffer5 = floatBuffer3;
                        float f31 = matrix4f.m22;
                        f20 += ((f29 * f12) + (f30 * f14) + (f31 * f16) + matrix4f.m23) * f22;
                        f10 += ((f23 * f11) + (f24 * f13) + (f25 * f15)) * f22;
                        f17 += ((f26 * f11) + (f27 * f13) + (f28 * f15)) * f22;
                        f19 += ((f29 * f11) + (f30 * f13) + (f31 * f15)) * f22;
                        i19--;
                        i14 = i20;
                        array = fArr4;
                        maxNumWeights = i21;
                        wrapIndexBuffer = indexBuffer2;
                        buffer2 = vertexBuffer3;
                        buffer = vertexBuffer4;
                        tempVars2 = tempVars3;
                        ceil = i22;
                        floatBuffer3 = floatBuffer5;
                    }
                    fArr = array;
                    i10 = maxNumWeights;
                    vertexBuffer = buffer;
                    vertexBuffer2 = buffer2;
                    floatBuffer = floatBuffer3;
                    indexBuffer = wrapIndexBuffer;
                    tempVars = tempVars2;
                    i11 = ceil;
                    i14 += i12;
                    fArr3[i16] = f10;
                    int i23 = i16 + 1;
                    fArr2[i16] = f21;
                    fArr3[i23] = f17;
                    int i24 = i16 + 2;
                    fArr2[i23] = f18;
                    fArr3[i24] = f19;
                    i16 += 3;
                    fArr2[i24] = f20;
                }
                i15--;
                array = fArr;
                maxNumWeights = i10;
                wrapIndexBuffer = indexBuffer;
                buffer2 = vertexBuffer2;
                buffer = vertexBuffer;
                tempVars2 = tempVars;
                ceil = i11;
                floatBuffer3 = floatBuffer;
            }
            floatBuffer2.position(floatBuffer2.position() - min);
            floatBuffer2.put(fArr2, 0, min);
            floatBuffer3.position(floatBuffer3.position() - min);
            floatBuffer3.put(fArr3, 0, min);
            ceil--;
            i13 = 0;
            array = array;
            maxNumWeights = maxNumWeights;
        }
        tempVars2.release();
        buffer.updateData(floatBuffer2);
        buffer2.updateData(floatBuffer3);
    }

    private void applySkinningTangents(Mesh mesh, Matrix4f[] matrix4fArr, VertexBuffer vertexBuffer) {
        int i10;
        float[] fArr;
        VertexBuffer vertexBuffer2;
        int i11;
        FloatBuffer floatBuffer;
        FloatBuffer floatBuffer2;
        IndexBuffer indexBuffer;
        TempVars tempVars;
        int i12;
        int i13;
        int maxNumWeights = mesh.getMaxNumWeights();
        if (maxNumWeights <= 0) {
            throw new IllegalStateException("Max weights per vert is incorrectly set!");
        }
        int i14 = 4 - maxNumWeights;
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.Position);
        FloatBuffer floatBuffer3 = (FloatBuffer) buffer.getData();
        floatBuffer3.rewind();
        VertexBuffer buffer2 = mesh.getBuffer(VertexBuffer.Type.Normal);
        FloatBuffer floatBuffer4 = buffer2 == null ? null : (FloatBuffer) buffer2.getData();
        if (floatBuffer4 != null) {
            floatBuffer4.rewind();
        }
        FloatBuffer floatBuffer5 = (FloatBuffer) vertexBuffer.getData();
        floatBuffer5.rewind();
        IndexBuffer wrapIndexBuffer = IndexBuffer.wrapIndexBuffer(mesh.getBuffer(VertexBuffer.Type.BoneIndex).getData());
        FloatBuffer floatBuffer6 = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.BoneWeight).getData();
        floatBuffer6.rewind();
        float[] array = floatBuffer6.array();
        TempVars tempVars2 = TempVars.get();
        float[] fArr2 = tempVars2.skinPositions;
        float[] fArr3 = tempVars2.skinNormals;
        float[] fArr4 = tempVars2.skinTangents;
        int ceil = ((int) FastMath.ceil(floatBuffer3.limit() / fArr2.length)) - 1;
        int i15 = 0;
        while (ceil >= 0) {
            int i16 = i15;
            int min = Math.min(fArr2.length, floatBuffer3.remaining());
            VertexBuffer vertexBuffer3 = buffer2;
            int min2 = Math.min(fArr4.length, floatBuffer5.remaining());
            floatBuffer3.get(fArr2, 0, min);
            if (floatBuffer4 != null) {
                floatBuffer4.get(fArr3, 0, min);
            }
            floatBuffer5.get(fArr4, 0, min2);
            int i17 = (min / 3) - 1;
            int i18 = 0;
            int i19 = 0;
            while (i17 >= 0) {
                float f10 = 0.0f;
                if (array[i16] == 0.0f) {
                    i19 += 4;
                    i18 += 3;
                    i16 += 4;
                    fArr = array;
                    i10 = maxNumWeights;
                    vertexBuffer2 = buffer;
                    i11 = min2;
                    floatBuffer = floatBuffer4;
                    floatBuffer2 = floatBuffer5;
                    indexBuffer = wrapIndexBuffer;
                    tempVars = tempVars2;
                    i12 = ceil;
                    i13 = min;
                } else {
                    float f11 = fArr3[i18];
                    int i20 = i18 + 1;
                    float f12 = fArr2[i18];
                    float f13 = fArr3[i20];
                    int i21 = i18 + 2;
                    float f14 = fArr2[i20];
                    float f15 = fArr3[i21];
                    float f16 = fArr2[i21];
                    float f17 = fArr4[i19];
                    float f18 = fArr4[i19 + 1];
                    float f19 = fArr4[i19 + 2];
                    int i22 = maxNumWeights - 1;
                    i10 = maxNumWeights;
                    int i23 = i16;
                    float f20 = 0.0f;
                    float f21 = 0.0f;
                    float f22 = 0.0f;
                    float f23 = 0.0f;
                    float f24 = 0.0f;
                    float f25 = 0.0f;
                    float f26 = 0.0f;
                    int i24 = i22;
                    float f27 = 0.0f;
                    while (i24 >= 0) {
                        float f28 = array[i23];
                        int i25 = i23 + 1;
                        Matrix4f matrix4f = matrix4fArr[wrapIndexBuffer.get(i23)];
                        float[] fArr5 = array;
                        float f29 = matrix4f.m00;
                        IndexBuffer indexBuffer2 = wrapIndexBuffer;
                        float f30 = matrix4f.m01;
                        VertexBuffer vertexBuffer4 = buffer;
                        float f31 = matrix4f.m02;
                        TempVars tempVars3 = tempVars2;
                        f20 += ((f29 * f12) + (f30 * f14) + (f31 * f16) + matrix4f.m03) * f28;
                        float f32 = matrix4f.m10;
                        int i26 = ceil;
                        float f33 = matrix4f.m11;
                        int i27 = min2;
                        float f34 = matrix4f.m12;
                        FloatBuffer floatBuffer7 = floatBuffer5;
                        f21 += ((f32 * f12) + (f33 * f14) + (f34 * f16) + matrix4f.m13) * f28;
                        float f35 = matrix4f.m20;
                        FloatBuffer floatBuffer8 = floatBuffer4;
                        float f36 = matrix4f.m21;
                        int i28 = min;
                        float f37 = matrix4f.m22;
                        f23 += ((f35 * f12) + (f36 * f14) + (f37 * f16) + matrix4f.m23) * f28;
                        f10 += ((f11 * f29) + (f13 * f30) + (f15 * f31)) * f28;
                        f27 += ((f11 * f32) + (f13 * f33) + (f15 * f34)) * f28;
                        f22 += ((f11 * f35) + (f13 * f36) + (f15 * f37)) * f28;
                        f24 += ((f29 * f17) + (f30 * f18) + (f31 * f19)) * f28;
                        f25 += ((f32 * f17) + (f33 * f18) + (f34 * f19)) * f28;
                        f26 += ((f35 * f17) + (f36 * f18) + (f37 * f19)) * f28;
                        i24--;
                        i23 = i25;
                        array = fArr5;
                        wrapIndexBuffer = indexBuffer2;
                        buffer = vertexBuffer4;
                        tempVars2 = tempVars3;
                        ceil = i26;
                        min2 = i27;
                        floatBuffer5 = floatBuffer7;
                        floatBuffer4 = floatBuffer8;
                        min = i28;
                    }
                    fArr = array;
                    vertexBuffer2 = buffer;
                    i11 = min2;
                    floatBuffer = floatBuffer4;
                    floatBuffer2 = floatBuffer5;
                    indexBuffer = wrapIndexBuffer;
                    tempVars = tempVars2;
                    i12 = ceil;
                    i13 = min;
                    fArr3[i18] = f10;
                    int i29 = i18 + 1;
                    fArr2[i18] = f20;
                    fArr3[i29] = f27;
                    int i30 = i18 + 2;
                    fArr2[i29] = f21;
                    fArr3[i30] = f22;
                    i18 += 3;
                    fArr2[i30] = f23;
                    fArr4[i19] = f24;
                    fArr4[i19 + 1] = f25;
                    fArr4[i19 + 2] = f26;
                    i19 += 4;
                    i16 = i23 + i14;
                }
                i17--;
                maxNumWeights = i10;
                array = fArr;
                wrapIndexBuffer = indexBuffer;
                buffer = vertexBuffer2;
                tempVars2 = tempVars;
                ceil = i12;
                min2 = i11;
                floatBuffer5 = floatBuffer2;
                floatBuffer4 = floatBuffer;
                min = i13;
            }
            float[] fArr6 = array;
            int i31 = maxNumWeights;
            VertexBuffer vertexBuffer5 = buffer;
            int i32 = min2;
            FloatBuffer floatBuffer9 = floatBuffer4;
            FloatBuffer floatBuffer10 = floatBuffer5;
            IndexBuffer indexBuffer3 = wrapIndexBuffer;
            TempVars tempVars4 = tempVars2;
            int i33 = ceil;
            int i34 = min;
            floatBuffer3.position(floatBuffer3.position() - i34);
            floatBuffer3.put(fArr2, 0, i34);
            if (floatBuffer9 != null) {
                floatBuffer4 = floatBuffer9;
                floatBuffer4.position(floatBuffer9.position() - i34);
                floatBuffer4.put(fArr3, 0, i34);
            } else {
                floatBuffer4 = floatBuffer9;
            }
            floatBuffer5 = floatBuffer10;
            floatBuffer5.position(floatBuffer10.position() - i32);
            floatBuffer5.put(fArr4, 0, i32);
            ceil = i33 - 1;
            i15 = i16;
            buffer2 = vertexBuffer3;
            maxNumWeights = i31;
            array = fArr6;
            wrapIndexBuffer = indexBuffer3;
            buffer = vertexBuffer5;
            tempVars2 = tempVars4;
        }
        VertexBuffer vertexBuffer6 = buffer2;
        tempVars2.release();
        buffer.updateData(floatBuffer3);
        if (vertexBuffer6 != null) {
            vertexBuffer6.updateData(floatBuffer4);
        }
        vertexBuffer.updateData(floatBuffer5);
    }

    private void controlRenderHardware() {
        Matrix4f[] computeSkinningMatrices = this.skeleton.computeSkinningMatrices();
        this.offsetMatrices = computeSkinningMatrices;
        this.boneMatricesParam.setValue(computeSkinningMatrices);
    }

    private void controlRenderSoftware() {
        resetToBind();
        this.offsetMatrices = this.skeleton.computeSkinningMatrices();
        this.numberOfBonesParam.setEnabled(false);
        this.boneMatricesParam.setEnabled(false);
        Iterator<Geometry> it = this.targets.iterator();
        while (it.hasNext()) {
            softwareSkinUpdate(it.next().getMesh(), this.offsetMatrices);
        }
    }

    private void findTargets(Geometry geometry) {
        Mesh mesh = geometry.getMesh();
        if (mesh == null || !mesh.isAnimated()) {
            return;
        }
        this.targets.add(geometry);
    }

    private void softwareSkinUpdate(Mesh mesh, Matrix4f[] matrix4fArr) {
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.Tangent);
        if (buffer == null) {
            applySkinning(mesh, matrix4fArr);
        } else {
            applySkinningTangents(mesh, matrix4fArr, buffer);
        }
    }

    private void switchToHardware() {
        this.numberOfBonesParam.setEnabled(true);
        this.boneMatricesParam.setEnabled(true);
        this.numberOfBonesParam.setValue(Integer.valueOf(((this.skeleton.getBoneCount() / 10) + 1) * 10));
        Iterator<Geometry> it = this.targets.iterator();
        while (it.hasNext()) {
            Mesh mesh = it.next().getMesh();
            if (mesh != null && mesh.isAnimated()) {
                mesh.prepareForAnim(false);
            }
        }
    }

    private void switchToSoftware() {
        this.numberOfBonesParam.setEnabled(false);
        this.boneMatricesParam.setEnabled(false);
        Iterator<Geometry> it = this.targets.iterator();
        while (it.hasNext()) {
            Mesh mesh = it.next().getMesh();
            if (mesh != null && mesh.isAnimated()) {
                mesh.prepareForAnim(true);
            }
        }
    }

    private boolean testHardwareSupported(RenderManager renderManager) {
        if (this.skeleton.getBoneCount() > 255) {
            return false;
        }
        switchToHardware();
        try {
            renderManager.preloadScene(this.spatial);
            return true;
        } catch (RendererException e10) {
            Logger.getLogger(SkeletonControl.class.getName()).log(Level.WARNING, "Could not enable HW skinning due to shader compile error:", (Throwable) e10);
            return false;
        }
    }

    private void updateTargetsAndMaterials(Spatial spatial) {
        this.targets.clear();
        if (spatial instanceof Node) {
            findTargets((Node) spatial);
        } else if (spatial instanceof Geometry) {
            findTargets((Geometry) spatial);
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.skeleton = (Skeleton) cloner.clone(this.skeleton);
        this.targets = (SafeArrayList) cloner.clone(this.targets);
        this.numberOfBonesParam = (MatParamOverride) cloner.clone(this.numberOfBonesParam);
        this.boneMatricesParam = (MatParamOverride) cloner.clone(this.boneMatricesParam);
    }

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
        if (this.wasMeshUpdated) {
            return;
        }
        updateTargetsAndMaterials(this.spatial);
        boolean z10 = this.hwSkinningDesired;
        if (z10 && !this.hwSkinningTested) {
            this.hwSkinningTested = true;
            boolean testHardwareSupported = testHardwareSupported(renderManager);
            this.hwSkinningSupported = testHardwareSupported;
            if (testHardwareSupported) {
                this.hwSkinningEnabled = true;
                Logger.getLogger(SkeletonControl.class.getName()).log(Level.INFO, "Hardware skinning engaged for {0}", this.spatial);
            } else {
                switchToSoftware();
            }
        } else if (z10 && this.hwSkinningSupported && !this.hwSkinningEnabled) {
            switchToHardware();
            this.hwSkinningEnabled = true;
        } else if (!z10 && this.hwSkinningEnabled) {
            switchToSoftware();
            this.hwSkinningEnabled = false;
        }
        if (this.hwSkinningEnabled) {
            controlRenderHardware();
        } else {
            controlRenderSoftware();
        }
        this.wasMeshUpdated = true;
    }

    @Override
    public void controlUpdate(float f10) {
        this.wasMeshUpdated = false;
    }

    public Node getAttachmentsNode(String str) {
        Bone bone = this.skeleton.getBone(str);
        if (bone == null) {
            throw new IllegalArgumentException("Given bone name does not exist in the skeleton.");
        }
        updateTargetsAndMaterials(this.spatial);
        Node attachmentsNode = bone.getAttachmentsNode(this.skeleton.getBoneIndex(bone), this.targets);
        Spatial spatial = this.spatial;
        (spatial instanceof Node ? (Node) spatial : spatial.getParent()).attachChild(attachmentsNode);
        return attachmentsNode;
    }

    public Skeleton getSkeleton() {
        return this.skeleton;
    }

    public Mesh[] getTargets() {
        Mesh[] meshArr = new Mesh[this.targets.size()];
        Iterator<Geometry> it = this.targets.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            meshArr[i10] = it.next().getMesh();
            i10++;
        }
        return meshArr;
    }

    public boolean isHardwareSkinningPreferred() {
        return this.hwSkinningDesired;
    }

    public boolean isHardwareSkinningUsed() {
        return this.hwSkinningEnabled;
    }

    @Override
    public Object jmeClone() {
        return super.jmeClone();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.skeleton = (Skeleton) capsule.readSavable(h.f94091E, null);
        this.numberOfBonesParam = (MatParamOverride) capsule.readSavable("numberOfBonesParam", null);
        this.boneMatricesParam = (MatParamOverride) capsule.readSavable("boneMatricesParam", null);
        if (this.numberOfBonesParam == null) {
            this.numberOfBonesParam = new MatParamOverride(VarType.Int, "NumberOfBones", null);
            this.boneMatricesParam = new MatParamOverride(VarType.Matrix4Array, "BoneMatrices", null);
            getSpatial().addMatParamOverride(this.numberOfBonesParam);
            getSpatial().addMatParamOverride(this.boneMatricesParam);
        }
    }

    public void resetToBind() {
        Iterator<Geometry> it = this.targets.iterator();
        while (it.hasNext()) {
            Mesh mesh = it.next().getMesh();
            if (mesh != null && mesh.isAnimated()) {
                Buffer data = mesh.getBuffer(VertexBuffer.Type.BoneWeight).getData();
                if (!mesh.getBuffer(VertexBuffer.Type.BoneIndex).getData().hasArray() || !data.hasArray()) {
                    mesh.prepareForAnim(true);
                }
                VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.BindPosePosition);
                VertexBuffer buffer2 = mesh.getBuffer(VertexBuffer.Type.BindPoseNormal);
                FloatBuffer floatBuffer = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.Position).getData();
                FloatBuffer floatBuffer2 = (FloatBuffer) buffer.getData();
                floatBuffer.clear();
                floatBuffer2.clear();
                if (buffer2 != null) {
                    FloatBuffer floatBuffer3 = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.Normal).getData();
                    FloatBuffer floatBuffer4 = (FloatBuffer) buffer2.getData();
                    floatBuffer3.clear();
                    floatBuffer4.clear();
                    floatBuffer3.put(floatBuffer4).clear();
                }
                VertexBuffer buffer3 = mesh.getBuffer(VertexBuffer.Type.BindPoseTangent);
                if (buffer3 != null) {
                    FloatBuffer floatBuffer5 = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.Tangent).getData();
                    FloatBuffer floatBuffer6 = (FloatBuffer) buffer3.getData();
                    floatBuffer5.clear();
                    floatBuffer6.clear();
                    floatBuffer5.put(floatBuffer6).clear();
                }
                floatBuffer.put(floatBuffer2).clear();
            }
        }
    }

    public void setHardwareSkinningPreferred(boolean z10) {
        this.hwSkinningDesired = z10;
    }

    @Override
    public void setSpatial(Spatial spatial) {
        Spatial spatial2 = this.spatial;
        super.setSpatial(spatial);
        updateTargetsAndMaterials(spatial);
        if (spatial2 != null) {
            spatial2.removeMatParamOverride(this.numberOfBonesParam);
            spatial2.removeMatParamOverride(this.boneMatricesParam);
        }
        if (spatial != null) {
            spatial.removeMatParamOverride(this.numberOfBonesParam);
            spatial.removeMatParamOverride(this.boneMatricesParam);
            spatial.addMatParamOverride(this.numberOfBonesParam);
            spatial.addMatParamOverride(this.boneMatricesParam);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.skeleton, h.f94091E, (Savable) null);
        capsule.write(this.numberOfBonesParam, "numberOfBonesParam", (Savable) null);
        capsule.write(this.boneMatricesParam, "boneMatricesParam", (Savable) null);
    }

    private void findTargets(Node node) {
        for (Spatial spatial : node.getChildren()) {
            if (spatial instanceof Geometry) {
                findTargets((Geometry) spatial);
            } else if (spatial instanceof Node) {
                findTargets((Node) spatial);
            }
        }
    }

    public SkeletonControl(Skeleton skeleton) {
        if (skeleton != null) {
            this.skeleton = skeleton;
            this.numberOfBonesParam = new MatParamOverride(VarType.Int, "NumberOfBones", null);
            this.boneMatricesParam = new MatParamOverride(VarType.Matrix4Array, "BoneMatrices", null);
            return;
        }
        throw new IllegalArgumentException("skeleton cannot be null");
    }
}
