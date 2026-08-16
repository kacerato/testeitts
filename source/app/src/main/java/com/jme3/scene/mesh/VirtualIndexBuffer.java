package com.jme3.scene.mesh;

import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.nio.Buffer;

public class VirtualIndexBuffer extends IndexBuffer {
    protected Mesh.Mode meshMode;
    protected int numIndices;
    protected int numVerts;
    protected int position = 0;

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
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.Hybrid.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public VirtualIndexBuffer(int i10, Mesh.Mode mode) {
        this.numIndices = 0;
        this.numVerts = i10;
        this.meshMode = mode;
        switch (AnonymousClass1.$SwitchMap$com$jme3$scene$Mesh$Mode[mode.ordinal()]) {
            case 1:
                this.numIndices = i10;
                return;
            case 2:
                this.numIndices = i10 * 2;
                return;
            case 3:
                this.numIndices = (i10 - 1) * 2;
                return;
            case 4:
                this.numIndices = i10;
                return;
            case 5:
                this.numIndices = (i10 - 2) * 3;
                return;
            case 6:
                this.numIndices = (i10 - 2) * 3;
                return;
            case 7:
                this.numIndices = i10;
                return;
            case 8:
                throw new UnsupportedOperationException();
            default:
                return;
        }
    }

    @Override
    public int get() {
        int i10 = get(this.position);
        this.position++;
        return i10;
    }

    @Override
    public Buffer getBuffer() {
        return null;
    }

    @Override
    public VertexBuffer.Format getFormat() {
        return VertexBuffer.Format.UnsignedInt;
    }

    @Override
    public IndexBuffer put(int i10, int i11) {
        throw new UnsupportedOperationException("Does not represent index buffer");
    }

    @Override
    public int remaining() {
        return this.numIndices - this.position;
    }

    @Override
    public void rewind() {
        this.position = 0;
    }

    @Override
    public int size() {
        return this.numIndices;
    }

    @Override
    public IndexBuffer put(int i10) {
        throw new UnsupportedOperationException("Does not represent index buffer");
    }

    @Override
    public int get(int i10) {
        Mesh.Mode mode = this.meshMode;
        if (mode == Mesh.Mode.Triangles || mode == Mesh.Mode.Lines || mode == Mesh.Mode.Points) {
            return i10;
        }
        if (mode == Mesh.Mode.LineStrip) {
            return (i10 + 1) / 2;
        }
        if (mode == Mesh.Mode.LineLoop) {
            if (i10 == this.numIndices - 1) {
                return 0;
            }
            return (i10 + 1) / 2;
        }
        if (mode == Mesh.Mode.TriangleStrip) {
            int i11 = i10 / 3;
            int i12 = i10 % 3;
            if (i11 % 2 != 1) {
                return i11 + i12;
            }
            if (i12 == 0) {
                return i11 + 1;
            }
            if (i12 == 1) {
                return i11;
            }
            if (i12 == 2) {
                return i11 + 2;
            }
            throw new AssertionError();
        }
        if (mode == Mesh.Mode.TriangleFan) {
            int i13 = i10 % 3;
            if (i13 == 0) {
                return 0;
            }
            return (i10 / 3) + i13;
        }
        throw new UnsupportedOperationException();
    }
}
