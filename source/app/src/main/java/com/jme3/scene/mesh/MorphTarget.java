package com.jme3.scene.mesh;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.scene.VertexBuffer;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.EnumMap;
import java.util.Map;

public class MorphTarget implements Savable {
    private final EnumMap<VertexBuffer.Type, FloatBuffer> buffers = new EnumMap<>(VertexBuffer.Type.class);
    private String name;

    public MorphTarget() {
    }

    public FloatBuffer getBuffer(VertexBuffer.Type type) {
        return this.buffers.get(type);
    }

    public EnumMap<VertexBuffer.Type, FloatBuffer> getBuffers() {
        return this.buffers;
    }

    public String getName() {
        return this.name;
    }

    public int getNumBuffers() {
        return this.buffers.size();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        for (VertexBuffer.Type type : VertexBuffer.Type.values()) {
            FloatBuffer readFloatBuffer = capsule.readFloatBuffer(type.name(), null);
            if (readFloatBuffer != null) {
                setBuffer(type, readFloatBuffer);
            }
        }
        this.name = capsule.readString("morphName", null);
    }

    public void setBuffer(VertexBuffer.Type type, FloatBuffer floatBuffer) {
        this.buffers.put((EnumMap<VertexBuffer.Type, FloatBuffer>) type, (VertexBuffer.Type) floatBuffer);
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        for (Map.Entry<VertexBuffer.Type, FloatBuffer> entry : this.buffers.entrySet()) {
            capsule.write(entry.getValue().asReadOnlyBuffer(), entry.getKey().name(), (FloatBuffer) null);
        }
        capsule.write(this.name, "morphName", (String) null);
    }

    public MorphTarget(String str) {
        this.name = str;
    }
}
