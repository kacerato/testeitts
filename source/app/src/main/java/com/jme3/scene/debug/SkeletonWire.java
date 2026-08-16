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
import java.nio.ShortBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import jme3utilities.debug.h;

public class SkeletonWire extends Mesh {
    static final boolean $assertionsDisabled = false;
    private Map<Integer, Float> boneLengths;
    private int numConnections;
    private Skeleton skeleton;

    public SkeletonWire(Skeleton skeleton) {
        this(skeleton, null);
    }

    private void countConnections(Bone bone) {
        Iterator<Bone> it = bone.getChildren().iterator();
        while (it.hasNext()) {
            Bone next = it.next();
            this.numConnections++;
            countConnections(next);
        }
    }

    private void writeConnections(ShortBuffer shortBuffer, Bone bone) {
        Iterator<Bone> it = bone.getChildren().iterator();
        while (it.hasNext()) {
            Bone next = it.next();
            shortBuffer.put((short) this.skeleton.getBoneIndex(bone));
            shortBuffer.put((short) this.skeleton.getBoneIndex(next));
            writeConnections(shortBuffer, next);
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.numConnections = capsule.readInt("numConnections", 1);
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
            Vector3f modelSpacePosition = bone.getModelSpacePosition();
            floatBuffer.put(modelSpacePosition.getX()).put(modelSpacePosition.getY()).put(modelSpacePosition.getZ());
            if (this.boneLengths != null) {
                Vector3f add = modelSpacePosition.add(bone.getModelSpaceRotation().mult(Vector3f.UNIT_Y.mult(this.boneLengths.get(Integer.valueOf(i10)).floatValue())));
                floatBuffer.put(add.getX()).put(add.getY()).put(add.getZ());
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
        capsule.write(this.numConnections, "numConnections", 1);
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

    public SkeletonWire(Skeleton skeleton, Map<Integer, Float> map) {
        this.skeleton = skeleton;
        int i10 = 0;
        for (Bone bone : skeleton.getRoots()) {
            countConnections(bone);
        }
        setMode(Mesh.Mode.Lines);
        int boneCount = skeleton.getBoneCount();
        if (map != null) {
            this.boneLengths = map;
            boneCount *= 2;
        }
        VertexBuffer vertexBuffer = new VertexBuffer(VertexBuffer.Type.Position);
        vertexBuffer.setupData(VertexBuffer.Usage.Stream, 3, VertexBuffer.Format.Float, BufferUtils.createFloatBuffer(boneCount * 3));
        setBuffer(vertexBuffer);
        VertexBuffer vertexBuffer2 = new VertexBuffer(VertexBuffer.Type.Index);
        ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(map != null ? boneCount : this.numConnections * 2);
        vertexBuffer2.setupData(VertexBuffer.Usage.Static, 2, VertexBuffer.Format.UnsignedShort, createShortBuffer);
        setBuffer(vertexBuffer2);
        if (map != null) {
            while (i10 < boneCount) {
                createShortBuffer.put((short) i10);
                i10++;
            }
        } else {
            Bone[] roots = skeleton.getRoots();
            int length = roots.length;
            while (i10 < length) {
                writeConnections(createShortBuffer, roots[i10]);
                i10++;
            }
        }
        createShortBuffer.flip();
        updateCounts();
    }

    public SkeletonWire() {
    }
}
