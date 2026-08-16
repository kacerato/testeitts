package r9;

import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.scene.mesh.IndexIntBuffer;
import com.jme3.util.BufferUtils;
import java.nio.IntBuffer;

public class C15154a {

    public static final int f108721a = 3;

    public static final int f108722b = 2;

    public static final int f108723c = 3;

    public static final boolean f108724d = false;

    public static void a(PhysicsSoftBody softBody) {
        int countNodes = softBody.countNodes();
        softBody.appendNodes(BufferUtils.createFloatBuffer(softBody.getPhysicsLocation(null)));
        int countNodes2 = softBody.countNodes();
        int countFaces = softBody.countFaces();
        if (countFaces == 0) {
            throw new IllegalStateException("SoftBody n\u00e3o possui faces para gerar tetras.");
        }
        IndexBuffer b10 = b(countNodes2, countFaces * 4);
        IntBuffer copyFaces = softBody.copyFaces(null);
        int i10 = countFaces * 3;
        if (copyFaces.capacity() < i10) {
            throw new IllegalStateException(String.format("Buffer de faces inconsistente: esperado %d entradas, mas tem %d", Integer.valueOf(i10), Integer.valueOf(copyFaces.capacity())));
        }
        for (int i11 = 0; i11 < countFaces; i11++) {
            int i12 = i11 * 3;
            int i13 = copyFaces.get(i12);
            int i14 = copyFaces.get(i12 + 1);
            int i15 = copyFaces.get(i12 + 2);
            int countNodes3 = softBody.countNodes() - 1;
            if (i13 > countNodes3 || i14 > countNodes3 || i15 > countNodes3) {
                throw new IllegalStateException(String.format("Face %d usa \u00edndice inv\u00e1lido: [%d, %d, %d], m\u00e1ximo permitido \u00e9 %d", Integer.valueOf(i11), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15), Integer.valueOf(countNodes3)));
            }
            if (i13 == i14 || i14 == i15 || i15 == i13) {
                throw new IllegalStateException(String.format("Face %d gera tetra degenerado com v\u00e9rtices repetidos: [%d, %d, %d]", Integer.valueOf(i11), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15)));
            }
            int i16 = i11 * 4;
            b10.put(i16, i13);
            b10.put(i16 + 1, i14);
            b10.put(i16 + 2, i15);
            b10.put(i16 + 3, countNodes);
        }
        softBody.appendTetras(b10);
    }

    public static IndexBuffer b(int vertexCount, int indexCount) {
        return new IndexIntBuffer(BufferUtils.createIntBuffer(indexCount));
    }
}
