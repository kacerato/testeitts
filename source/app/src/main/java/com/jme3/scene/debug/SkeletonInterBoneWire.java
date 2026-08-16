package com.jme3.scene.debug;

import com.jme3.animation.Bone;
import com.jme3.animation.Skeleton;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import jme3utilities.debug.h;

public class SkeletonInterBoneWire extends Mesh {
    static final boolean $assertionsDisabled = false;
    private static final int POINT_AMOUNT = 10;
    private Map<Integer, Float> boneLengths;
    private int connectionsAmount;
    private Skeleton skeleton;

    public SkeletonInterBoneWire(Skeleton skeleton, Map<Integer, Float> map) {
        this.skeleton = skeleton;
        for (Bone bone : skeleton.getRoots()) {
            countConnections(bone);
        }
        setMode(Mesh.Mode.Points);
        this.boneLengths = map;
        VertexBuffer vertexBuffer = new VertexBuffer(VertexBuffer.Type.Position);
        vertexBuffer.setupData(VertexBuffer.Usage.Stream, 3, VertexBuffer.Format.Float, BufferUtils.createFloatBuffer(this.connectionsAmount * 30));
        setBuffer(vertexBuffer);
        updateCounts();
    }

    private void countConnections(Bone bone) {
        Iterator<Bone> it = bone.getChildren().iterator();
        while (it.hasNext()) {
            Bone next = it.next();
            this.connectionsAmount++;
            countConnections(next);
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.connectionsAmount = capsule.readInt("connectionsAmount", 1);
        this.skeleton = (Skeleton) capsule.readSavable(h.f94091E, null);
        int[] readIntArray = capsule.readIntArray("blKeys", null);
        float[] readFloatArray = capsule.readFloatArray("blValues", null);
        if (readIntArray == null) {
            this.boneLengths = null;
            return;
        }
        int length = readIntArray.length;
        this.boneLengths = new HashMap(length);
        for (int i10 = 0; i10 < length; i10++) {
            this.boneLengths.put(Integer.valueOf(readIntArray[i10]), Float.valueOf(readFloatArray[i10]));
        }
    }

    public void updateGeometry() {
        VertexBuffer.Type type = VertexBuffer.Type.Position;
        VertexBuffer buffer = getBuffer(type);
        FloatBuffer floatBuffer = getFloatBuffer(type);
        floatBuffer.clear();
        for (int i10 = 0; i10 < this.skeleton.getBoneCount(); i10++) {
            Bone bone = this.skeleton.getBone(i10);
            Vector3f add = bone.getModelSpacePosition().add(bone.getModelSpaceRotation().mult(Vector3f.UNIT_Y.mult(this.boneLengths.get(Integer.valueOf(i10)).floatValue())));
            Iterator<Bone> it = bone.getChildren().iterator();
            while (it.hasNext()) {
                Vector3f subtract = it.next().getModelSpacePosition().subtract(add);
                subtract.normalizeLocal().multLocal(subtract.length() / 10.0f);
                Vector3f m1292clone = add.m1292clone();
                for (int i11 = 0; i11 < 10; i11++) {
                    floatBuffer.put(m1292clone.getX()).put(m1292clone.getY()).put(m1292clone.getZ());
                    m1292clone.addLocal(subtract);
                }
            }
        }
        floatBuffer.flip();
        buffer.updateData(floatBuffer);
        updateBound();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.connectionsAmount, "connectionsAmount", 1);
        capsule.write(this.skeleton, h.f94091E, (Savable) null);
        Map<Integer, Float> map = this.boneLengths;
        if (map != null) {
            int size = map.size();
            int[] iArr = new int[size];
            float[] fArr = new float[size];
            int i10 = 0;
            for (Map.Entry<Integer, Float> entry : this.boneLengths.entrySet()) {
                iArr[i10] = entry.getKey().intValue();
                fArr[i10] = entry.getValue().floatValue();
                i10++;
            }
            capsule.write(iArr, "blKeys", (int[]) null);
            capsule.write(fArr, "blValues", (float[]) null);
        }
    }

    public SkeletonInterBoneWire() {
    }
}
