package com.jme3.anim;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.MatParamOverride;
import com.jme3.material.Material;
import com.jme3.renderer.Limits;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.RendererException;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.SceneGraphVisitorAdapter;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.control.AbstractControl;
import com.jme3.scene.mesh.MorphTarget;
import com.jme3.shader.VarType;
import com.jme3.util.BufferUtils;
import com.jme3.util.SafeArrayList;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MorphControl extends AbstractControl implements Savable {
    private static final int MAX_MORPH_BUFFERS = 14;
    private static final float MIN_WEIGHT = 0.005f;
    private static final String TAG_APPROXIMATE = "approximateTangents";
    private static final String TAG_TARGETS = "targets";
    private float[] tmpNormArray;
    private float[] tmpPosArray;
    private float[] tmpTanArray;
    private static final Logger logger = Logger.getLogger(MorphControl.class.getName());
    private static final VertexBuffer.Type[] bufferTypes = VertexBuffer.Type.values();
    private SafeArrayList<Geometry> targets = new SafeArrayList<>(Geometry.class);
    private TargetLocator targetLocator = new TargetLocator();
    private boolean approximateTangents = true;
    private MatParamOverride nullNumberOfBones = new MatParamOverride(VarType.Int, "NumberOfBones", null);

    public class TargetLocator extends SceneGraphVisitorAdapter {
        private TargetLocator() {
        }

        @Override
        public void visit(Geometry geometry) {
            Mesh mesh;
            if (geometry.getMaterial().getMaterialDef().getMaterialParam("MorphWeights") == null || (mesh = geometry.getMesh()) == null || !mesh.hasMorphTargets()) {
                return;
            }
            MorphControl.this.targets.add(geometry);
            if (mesh.getBuffer(VertexBuffer.Type.HWBoneIndex) != null || geometry.getLocalMatParamOverrides().contains(MorphControl.this.nullNumberOfBones)) {
                return;
            }
            geometry.addMatParamOverride(MorphControl.this.nullNumberOfBones);
        }
    }

    private void activateBuffer(Mesh mesh, int i10, int i11, FloatBuffer floatBuffer) {
        VertexBuffer.Type type = bufferTypes[i11 + i10];
        VertexBuffer buffer = mesh.getBuffer(type);
        if (buffer == null || buffer.getData() != floatBuffer) {
            mesh.setBuffer(type, 3, floatBuffer);
        }
    }

    private int bindMorphTargetBuffer(Mesh mesh, int i10, int i11, MorphTarget morphTarget) {
        int ordinal = VertexBuffer.Type.MorphTarget0.ordinal();
        if (i10 >= 1) {
            activateBuffer(mesh, i11, ordinal, morphTarget.getBuffer(VertexBuffer.Type.Position));
            i11++;
        }
        if (i10 >= 2) {
            activateBuffer(mesh, i11, ordinal, morphTarget.getBuffer(VertexBuffer.Type.Normal));
            i11++;
        }
        if (this.approximateTangents || i10 != 3) {
            return i11;
        }
        activateBuffer(mesh, i11, ordinal, morphTarget.getBuffer(VertexBuffer.Type.Tangent));
        return i11 + 1;
    }

    private float[] ensureCapacity(float[] fArr, int i10) {
        return (fArr == null || fArr.length < i10) ? new float[i10] : fArr;
    }

    private void ensureTmpArraysCapacity(int i10, int i11) {
        if (i11 >= 1) {
            this.tmpPosArray = ensureCapacity(this.tmpPosArray, i10);
        }
        if (i11 >= 2) {
            this.tmpNormArray = ensureCapacity(this.tmpNormArray, i10);
        }
        if (this.approximateTangents || i11 != 3) {
            return;
        }
        this.tmpTanArray = ensureCapacity(this.tmpTanArray, i10);
    }

    private int getMaxGPUTargets(RenderManager renderManager, Geometry geometry, Material material, int i10) {
        if (geometry.getNbSimultaneousGPUMorph() > -1) {
            return geometry.getNbSimultaneousGPUMorph();
        }
        int min = Math.min(geometry.getMesh().getMorphTargets().length * i10, Math.min(getRemainingBuffers(geometry.getMesh(), renderManager.getRenderer()), 14)) / i10;
        if (material.getParam("MorphWeights") == null) {
            material.setParam("MorphWeights", VarType.FloatArray, new float[min]);
        }
        material.setInt("NumberOfTargetsBuffers", i10);
        boolean z10 = false;
        while (!z10 && min > 0) {
            material.setInt("NumberOfMorphTargets", min);
            try {
                renderManager.preloadScene(this.spatial);
                z10 = true;
            } catch (RendererException unused) {
                Logger logger2 = logger;
                Level level = Level.FINE;
                if (logger2.isLoggable(level)) {
                    logger2.log(level, "{0}: failed at {1}", new Object[]{geometry.getName(), Integer.valueOf(min)});
                }
                min--;
            }
        }
        Logger logger3 = logger;
        Level level2 = Level.FINE;
        if (logger3.isLoggable(level2)) {
            logger3.log(level2, "{0}: {1}", new Object[]{geometry.getName(), Integer.valueOf(min)});
        }
        geometry.setNbSimultaneousGPUMorph(min);
        return min;
    }

    private int getRemainingBuffers(Mesh mesh, Renderer renderer) {
        int i10 = 0;
        for (VertexBuffer vertexBuffer : mesh.getBufferList().getArray()) {
            boolean z10 = vertexBuffer.getBufferType().ordinal() >= VertexBuffer.Type.MorphTarget0.ordinal() && vertexBuffer.getBufferType().ordinal() <= VertexBuffer.Type.MorphTarget9.ordinal();
            if (vertexBuffer.getBufferType() != VertexBuffer.Type.Index && !z10 && vertexBuffer.getUsage() != VertexBuffer.Usage.CpuOnly) {
                i10++;
            }
        }
        return renderer.getLimits().get(Limits.VertexAttributes).intValue() - i10;
    }

    private int getTargetNumBuffers(MorphTarget morphTarget) {
        int i10 = morphTarget.getBuffer(VertexBuffer.Type.Position) != null ? 1 : 0;
        if (morphTarget.getBuffer(VertexBuffer.Type.Normal) != null) {
            i10++;
        }
        return (this.approximateTangents || morphTarget.getBuffer(VertexBuffer.Type.Tangent) == null) ? i10 : i10 + 1;
    }

    private MorphTarget initCpuMorphTarget(Geometry geometry) {
        VertexBuffer.Type type;
        FloatBuffer buffer;
        MorphTarget morphTarget = new MorphTarget();
        MorphTarget morphTarget2 = geometry.getMesh().getMorphTargets()[0];
        VertexBuffer.Type type2 = VertexBuffer.Type.Position;
        FloatBuffer buffer2 = morphTarget2.getBuffer(type2);
        if (buffer2 != null) {
            morphTarget.setBuffer(type2, BufferUtils.createFloatBuffer(buffer2.capacity()));
        }
        VertexBuffer.Type type3 = VertexBuffer.Type.Normal;
        FloatBuffer buffer3 = morphTarget2.getBuffer(type3);
        if (buffer3 != null) {
            morphTarget.setBuffer(type3, BufferUtils.createFloatBuffer(buffer3.capacity()));
        }
        if (!this.approximateTangents && (buffer = morphTarget2.getBuffer((type = VertexBuffer.Type.Tangent))) != null) {
            morphTarget.setBuffer(type, BufferUtils.createFloatBuffer(buffer.capacity()));
        }
        return morphTarget;
    }

    private void mergeMorphTargets(int i10, float f10, MorphTarget morphTarget, boolean z10) {
        if (i10 >= 1) {
            mergeTargetBuffer(this.tmpPosArray, f10, morphTarget.getBuffer(VertexBuffer.Type.Position), z10);
        }
        if (i10 >= 2) {
            mergeTargetBuffer(this.tmpNormArray, f10, morphTarget.getBuffer(VertexBuffer.Type.Normal), z10);
        }
        if (this.approximateTangents || i10 != 3) {
            return;
        }
        mergeTargetBuffer(this.tmpTanArray, f10, morphTarget.getBuffer(VertexBuffer.Type.Tangent), z10);
    }

    private void mergeTargetBuffer(float[] fArr, float f10, FloatBuffer floatBuffer, boolean z10) {
        floatBuffer.rewind();
        for (int i10 = 0; i10 < floatBuffer.capacity(); i10++) {
            if (z10) {
                fArr[i10] = 0.0f;
            }
            fArr[i10] = fArr[i10] + (floatBuffer.get() * f10);
        }
    }

    private void writeCpuBuffer(int i10, MorphTarget morphTarget) {
        if (i10 >= 1) {
            FloatBuffer buffer = morphTarget.getBuffer(VertexBuffer.Type.Position);
            buffer.rewind();
            buffer.put(this.tmpPosArray, 0, buffer.capacity());
        }
        if (i10 >= 2) {
            FloatBuffer buffer2 = morphTarget.getBuffer(VertexBuffer.Type.Normal);
            buffer2.rewind();
            buffer2.put(this.tmpNormArray, 0, buffer2.capacity());
        }
        if (this.approximateTangents || i10 != 3) {
            return;
        }
        FloatBuffer buffer3 = morphTarget.getBuffer(VertexBuffer.Type.Tangent);
        buffer3.rewind();
        buffer3.put(this.tmpTanArray, 0, buffer3.capacity());
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.targets = (SafeArrayList) cloner.clone(this.targets);
        this.targetLocator = new TargetLocator();
        this.nullNumberOfBones = (MatParamOverride) cloner.clone(this.nullNumberOfBones);
        this.tmpPosArray = null;
        this.tmpNormArray = null;
        this.tmpTanArray = null;
    }

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
        Geometry[] geometryArr;
        Geometry[] geometryArr2;
        boolean z10;
        int i10;
        Geometry[] array = this.targets.getArray();
        int length = array.length;
        int i11 = 0;
        int i12 = 0;
        while (i12 < length) {
            Geometry geometry = array[i12];
            Mesh mesh = geometry.getMesh();
            if (geometry.isDirtyMorph()) {
                Material material = geometry.getMaterial();
                float[] morphState = geometry.getMorphState();
                MorphTarget[] morphTargets = mesh.getMorphTargets();
                int targetNumBuffers = getTargetNumBuffers(morphTargets[i11]);
                int maxGPUTargets = getMaxGPUTargets(renderManager, geometry, material, targetNumBuffers);
                float[] fArr = (float[]) material.getParam("MorphWeights").getValue();
                int i13 = i11;
                int i14 = i13;
                int i15 = i14;
                float f10 = 0.0f;
                while (i13 < morphTargets.length) {
                    float f11 = morphState[i13];
                    if (f11 >= 0.005f) {
                        if (i14 >= maxGPUTargets) {
                            f10 += f11;
                        } else {
                            i11 = bindMorphTargetBuffer(mesh, targetNumBuffers, i11, morphTargets[i13]);
                            fArr[i14] = morphState[i13];
                            i14++;
                            i15 = i13;
                        }
                    }
                    i13++;
                }
                if (i14 < fArr.length) {
                    while (i14 < fArr.length) {
                        fArr[i14] = 0.0f;
                        i14++;
                    }
                } else if (f10 > 0.0f) {
                    MorphTarget fallbackMorphTarget = geometry.getFallbackMorphTarget();
                    if (fallbackMorphTarget == null) {
                        fallbackMorphTarget = initCpuMorphTarget(geometry);
                        geometry.setFallbackMorphTarget(fallbackMorphTarget);
                    }
                    int i16 = i14 - 1;
                    float f12 = f10 + fArr[i16];
                    ensureTmpArraysCapacity(geometry.getVertexCount() * 3, targetNumBuffers);
                    int i17 = i15;
                    while (i17 < morphTargets.length) {
                        float f13 = morphState[i17];
                        if (f13 < 0.005f) {
                            geometryArr2 = array;
                        } else {
                            float f14 = f13 / f12;
                            MorphTarget morphTarget = geometry.getMesh().getMorphTargets()[i17];
                            geometryArr2 = array;
                            int i18 = i15;
                            if (i17 == i18) {
                                i15 = i18;
                                z10 = true;
                            } else {
                                i15 = i18;
                                z10 = false;
                            }
                            mergeMorphTargets(targetNumBuffers, f14, morphTarget, z10);
                        }
                        i17++;
                        array = geometryArr2;
                    }
                    geometryArr = array;
                    writeCpuBuffer(targetNumBuffers, fallbackMorphTarget);
                    bindMorphTargetBuffer(mesh, targetNumBuffers, i16 * targetNumBuffers, fallbackMorphTarget);
                    fArr[i16] = f12;
                    i10 = 0;
                    geometry.setDirtyMorph(false);
                }
                geometryArr = array;
                i10 = 0;
                geometry.setDirtyMorph(false);
            } else {
                geometryArr = array;
                i10 = i11;
            }
            i12++;
            i11 = i10;
            array = geometryArr;
        }
    }

    @Override
    public void controlUpdate(float f10) {
    }

    public boolean isApproximateTangents() {
        return this.approximateTangents;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.approximateTangents = capsule.readBoolean(TAG_APPROXIMATE, true);
        this.targets.addAll(capsule.readSavableArrayList(TAG_TARGETS, null));
    }

    public void setApproximateTangents(boolean z10) {
        this.approximateTangents = z10;
    }

    @Override
    public void setSpatial(Spatial spatial) {
        super.setSpatial(spatial);
        for (Geometry geometry : this.targets.getArray()) {
            geometry.removeMatParamOverride(this.nullNumberOfBones);
        }
        this.targets.clear();
        if (spatial != null) {
            spatial.depthFirstTraversal(this.targetLocator);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.approximateTangents, TAG_APPROXIMATE, true);
        capsule.writeSavableArrayList(new ArrayList(this.targets), TAG_TARGETS, null);
    }

    @Override
    public MorphControl jmeClone() {
        try {
            return (MorphControl) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
