package lf;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.BufferUtils;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13702E;

public class C14115b extends Mesh {

    public static final int f96374d = 3;

    public static final Logger f96375e = Logger.getLogger(C14115b.class.getName());

    public static final boolean f96376f = false;

    public int f96377b;

    public int f96378c;

    public C14115b() {
    }

    public void a(int i10, int i11, Vector3f vector3f) {
        C13702E.i(i10, "x index", 0, this.f96378c - 1);
        C13702E.i(i11, "z index", 0, this.f96377b - 1);
        C13702E.t(vector3f, "desired location");
        jf.d.p(getFloatBuffer(VertexBuffer.Type.Position), (i11 + (this.f96377b * i10)) * 3, vector3f);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f96377b = capsule.readInt("xLines", 12);
        this.f96378c = capsule.readInt("zLines", 12);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f96377b, "xLines", 12);
        capsule.write(this.f96378c, "zLines", 12);
    }

    public C14115b(int i10, int i11, float f10) {
        C13702E.i(i10, "X lines", 2, Integer.MAX_VALUE);
        C13702E.i(i11, "Z lines", 2, Integer.MAX_VALUE);
        C13702E.E(f10, "line spacing");
        this.f96377b = i10;
        this.f96378c = i11;
        int i12 = i10 * i11;
        int i13 = i12 * 3;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i13);
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        for (int i14 = 0; i14 < i11; i14++) {
            float f11 = 2.0f;
            float f12 = ((((i14 * 2) - i11) + 1) * f10) / 2.0f;
            int i15 = 0;
            while (i15 < i10) {
                createFloatBuffer.put(f12).put(0.0f).put(((((i15 * 2) - i10) + 1) * f10) / f11);
                i15++;
                f11 = 2.0f;
            }
        }
        createFloatBuffer.flip();
        FloatBuffer createFloatBuffer2 = BufferUtils.createFloatBuffer(i13);
        setBuffer(VertexBuffer.Type.Normal, 3, createFloatBuffer2);
        for (int i16 = 0; i16 < i12; i16++) {
            createFloatBuffer2.put(0.0f).put(1.0f).put(0.0f);
        }
        createFloatBuffer2.flip();
        int i17 = i10 - 1;
        int i18 = i11 - 1;
        IndexBuffer createIndexBuffer = IndexBuffer.createIndexBuffer(i12, i17 * 2 * i18 * 3);
        VertexBuffer.Format format = createIndexBuffer.getFormat();
        Buffer buffer = createIndexBuffer.getBuffer();
        setBuffer(VertexBuffer.Type.Index, 1, format, buffer);
        for (int i19 = 0; i19 < i17; i19++) {
            for (int i20 = 0; i20 < i18; i20++) {
                int i21 = (i10 * i20) + i19;
                int i22 = i21 + 1;
                int i23 = i21 + i10;
                int i24 = i22 + i10;
                if ((i20 + i19) % 2 == 0) {
                    createIndexBuffer.put(i21);
                    createIndexBuffer.put(i22);
                    createIndexBuffer.put(i23);
                    createIndexBuffer.put(i24);
                    createIndexBuffer.put(i23);
                    createIndexBuffer.put(i22);
                } else {
                    createIndexBuffer.put(i21);
                    createIndexBuffer.put(i22);
                    createIndexBuffer.put(i24);
                    createIndexBuffer.put(i24);
                    createIndexBuffer.put(i23);
                    createIndexBuffer.put(i21);
                }
            }
        }
        buffer.flip();
        updateBound();
        setDynamic();
    }
}
