package com.jme3.util;

import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class TangentUtils {
    private TangentUtils() {
    }

    public static Mesh genNormalLines(Mesh mesh, float f10) {
        FloatBuffer floatBuffer = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.Position).getData();
        FloatBuffer floatBuffer2 = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.Normal).getData();
        ColorRGBA colorRGBA = ColorRGBA.White;
        ColorRGBA colorRGBA2 = ColorRGBA.Blue;
        Mesh mesh2 = new Mesh();
        mesh2.setMode(Mesh.Mode.Lines);
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(floatBuffer.limit() * 2);
        FloatBuffer createFloatBuffer2 = BufferUtils.createFloatBuffer((floatBuffer.limit() / 3) * 8);
        for (int i10 = 0; i10 < floatBuffer.limit() / 3; i10++) {
            BufferUtils.populateFromBuffer(vector3f, floatBuffer, i10);
            BufferUtils.populateFromBuffer(vector3f2, floatBuffer2, i10);
            int i11 = i10 * 2;
            BufferUtils.setInBuffer(vector3f, createFloatBuffer, i11);
            BufferUtils.setInBuffer(colorRGBA, createFloatBuffer2, i11);
            vector3f2.multLocal(f10);
            vector3f2.addLocal(vector3f);
            int i12 = i11 + 1;
            BufferUtils.setInBuffer(vector3f2, createFloatBuffer, i12);
            BufferUtils.setInBuffer(colorRGBA2, createFloatBuffer2, i12);
        }
        mesh2.setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        mesh2.setBuffer(VertexBuffer.Type.Color, 4, createFloatBuffer2);
        mesh2.setStatic();
        return mesh2;
    }

    public static Mesh genTangentLines(Mesh mesh, float f10) {
        boolean z10;
        float f11;
        int i10;
        FloatBuffer floatBuffer = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.Position).getData();
        FloatBuffer floatBuffer2 = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.Normal).getData();
        VertexBuffer.Type type = VertexBuffer.Type.Tangent;
        FloatBuffer floatBuffer3 = (FloatBuffer) mesh.getBuffer(type).getData();
        VertexBuffer.Type type2 = VertexBuffer.Type.Binormal;
        FloatBuffer floatBuffer4 = mesh.getBuffer(type2) != null ? (FloatBuffer) mesh.getBuffer(type2).getData() : null;
        ColorRGBA colorRGBA = ColorRGBA.White;
        ColorRGBA colorRGBA2 = ColorRGBA.Red;
        ColorRGBA colorRGBA3 = ColorRGBA.Green;
        ColorRGBA colorRGBA4 = ColorRGBA.Blue;
        Mesh mesh2 = new Mesh();
        mesh2.setMode(Mesh.Mode.Lines);
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        Vector3f vector3f4 = new Vector3f();
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer((floatBuffer.limit() / 3) * 6);
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(floatBuffer.limit() * 4);
        FloatBuffer createFloatBuffer2 = BufferUtils.createFloatBuffer((floatBuffer.limit() / 3) * 16);
        boolean z11 = mesh.getBuffer(type).getNumComponents() == 4;
        float f12 = 1.0f;
        int i11 = 0;
        while (true) {
            FloatBuffer floatBuffer5 = floatBuffer4;
            if (i11 >= floatBuffer.limit() / 3) {
                mesh2.setBuffer(VertexBuffer.Type.Index, 1, createIntBuffer);
                mesh2.setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
                mesh2.setBuffer(VertexBuffer.Type.Color, 4, createFloatBuffer2);
                mesh2.setStatic();
                return mesh2;
            }
            BufferUtils.populateFromBuffer(vector3f, floatBuffer, i11);
            BufferUtils.populateFromBuffer(vector3f4, floatBuffer2, i11);
            if (z11) {
                int i12 = i11 * 4;
                z10 = z11;
                vector3f3.f81611x = floatBuffer3.get(i12);
                vector3f3.f81612y = floatBuffer3.get(i12 + 1);
                vector3f3.f81613z = floatBuffer3.get(i12 + 2);
                f11 = floatBuffer3.get(i12 + 3);
            } else {
                z10 = z11;
                BufferUtils.populateFromBuffer(vector3f3, floatBuffer3, i11);
                f11 = f12;
            }
            int i13 = i11 * 4;
            FloatBuffer floatBuffer6 = floatBuffer;
            int i14 = i11 * 6;
            createIntBuffer.put(i14, i13);
            FloatBuffer floatBuffer7 = floatBuffer2;
            FloatBuffer floatBuffer8 = floatBuffer3;
            int i15 = i13 + 1;
            createIntBuffer.put(i14 + 1, i15);
            createIntBuffer.put(i14 + 2, i13);
            int i16 = i11;
            int i17 = i13 + 2;
            createIntBuffer.put(i14 + 3, i17);
            createIntBuffer.put(i14 + 4, i13);
            int i18 = i13 + 3;
            createIntBuffer.put(i14 + 5, i18);
            BufferUtils.setInBuffer(vector3f, createFloatBuffer, i13);
            BufferUtils.setInBuffer(colorRGBA, createFloatBuffer2, i13);
            vector3f2.set(vector3f3);
            vector3f2.multLocal(f10);
            vector3f2.addLocal(vector3f);
            BufferUtils.setInBuffer(vector3f2, createFloatBuffer, i15);
            BufferUtils.setInBuffer(colorRGBA2, createFloatBuffer2, i15);
            if (floatBuffer5 == null) {
                vector3f4.cross(vector3f3, vector3f2);
                vector3f2.multLocal(-f11);
                vector3f2.normalizeLocal();
                floatBuffer4 = floatBuffer5;
                i10 = i16;
            } else {
                floatBuffer4 = floatBuffer5;
                i10 = i16;
                BufferUtils.populateFromBuffer(vector3f2, floatBuffer4, i10);
            }
            vector3f2.multLocal(f10);
            vector3f2.addLocal(vector3f);
            BufferUtils.setInBuffer(vector3f2, createFloatBuffer, i17);
            BufferUtils.setInBuffer(colorRGBA3, createFloatBuffer2, i17);
            vector3f2.set(vector3f4);
            vector3f2.multLocal(f10);
            vector3f2.addLocal(vector3f);
            BufferUtils.setInBuffer(vector3f2, createFloatBuffer, i18);
            BufferUtils.setInBuffer(colorRGBA4, createFloatBuffer2, i18);
            floatBuffer2 = floatBuffer7;
            floatBuffer3 = floatBuffer8;
            i11 = i10 + 1;
            floatBuffer = floatBuffer6;
            f12 = f11;
            z11 = z10;
        }
    }

    public static Mesh genTbnLines(Mesh mesh, float f10) {
        return mesh.getBuffer(VertexBuffer.Type.Tangent) == null ? genNormalLines(mesh, f10) : genTangentLines(mesh, f10);
    }

    public static void generateBindPoseTangentsIfNecessary(Mesh mesh) {
        VertexBuffer buffer;
        if (mesh.getBuffer(VertexBuffer.Type.BindPosePosition) == null || (buffer = mesh.getBuffer(VertexBuffer.Type.Tangent)) == null) {
            return;
        }
        VertexBuffer.Type type = VertexBuffer.Type.BindPoseTangent;
        VertexBuffer vertexBuffer = new VertexBuffer(type);
        vertexBuffer.setupData(VertexBuffer.Usage.CpuOnly, 4, VertexBuffer.Format.Float, BufferUtils.clone(buffer.getData()));
        if (mesh.getBuffer(type) != null) {
            mesh.clearBuffer(type);
        }
        mesh.setBuffer(vertexBuffer);
        buffer.setUsage(VertexBuffer.Usage.Stream);
    }
}
