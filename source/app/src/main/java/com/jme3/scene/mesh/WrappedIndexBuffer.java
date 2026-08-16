package com.jme3.scene.mesh;

import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.nio.Buffer;

public class WrappedIndexBuffer extends VirtualIndexBuffer {

    private final IndexBuffer f81629ib;

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
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.Lines.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.LineLoop.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.LineStrip.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.Triangles.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.TriangleStrip.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.TriangleFan.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public WrappedIndexBuffer(Mesh mesh) {
        super(mesh.getVertexCount(), mesh.getMode());
        this.f81629ib = mesh.getIndexBuffer();
        switch (AnonymousClass1.$SwitchMap$com$jme3$scene$Mesh$Mode[this.meshMode.ordinal()]) {
            case 1:
                this.numIndices = mesh.getTriangleCount();
                return;
            case 2:
            case 3:
            case 4:
                this.numIndices = mesh.getTriangleCount() * 2;
                return;
            case 5:
            case 6:
            case 7:
                this.numIndices = mesh.getTriangleCount() * 3;
                return;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public static void convertToList(Mesh mesh) {
        IndexBuffer indicesAsList = mesh.getIndicesAsList();
        IndexBuffer createIndexBuffer = IndexBuffer.createIndexBuffer(mesh.getVertexCount(), indicesAsList.size());
        for (int i10 = 0; i10 < indicesAsList.size(); i10++) {
            createIndexBuffer.put(i10, indicesAsList.get(i10));
        }
        VertexBuffer.Type type = VertexBuffer.Type.Index;
        mesh.clearBuffer(type);
        int i11 = AnonymousClass1.$SwitchMap$com$jme3$scene$Mesh$Mode[mesh.getMode().ordinal()];
        if (i11 == 3 || i11 == 4) {
            mesh.setMode(Mesh.Mode.Lines);
        } else if (i11 == 6 || i11 == 7) {
            mesh.setMode(Mesh.Mode.Triangles);
        }
        mesh.setBuffer(type, 3, createIndexBuffer.getFormat(), createIndexBuffer.getBuffer());
    }

    @Override
    public int get(int i10) {
        return this.f81629ib.get(super.get(i10));
    }

    @Override
    public Buffer getBuffer() {
        return this.f81629ib.getBuffer();
    }
}
