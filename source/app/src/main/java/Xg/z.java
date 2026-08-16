package Xg;

import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class z {
    public static o a() {
        return new e();
    }

    public static o b(IntBuffer indices, FloatBuffer vertices, FloatBuffer texCoords, FloatBuffer normals) {
        int capacity = indices.capacity() / 3;
        int capacity2 = vertices.capacity() / 3;
        o a10 = a();
        for (int i10 = 0; i10 < capacity2; i10++) {
            int i11 = i10 * 3;
            a10.y(vertices.get(i11), vertices.get(i11 + 1), vertices.get(i11 + 2));
        }
        if (texCoords != null) {
            int capacity3 = texCoords.capacity() / 2;
            for (int i12 = 0; i12 < capacity3; i12++) {
                int i13 = i12 * 2;
                a10.G(texCoords.get(i13), texCoords.get(i13 + 1));
            }
        }
        if (normals != null) {
            int capacity4 = normals.capacity() / 3;
            for (int i14 = 0; i14 < capacity4; i14++) {
                int i15 = i14 * 3;
                a10.r(normals.get(i15), normals.get(i15 + 1), normals.get(i15 + 2));
            }
        }
        for (int i16 = 0; i16 < capacity; i16++) {
            int i17 = i16 * 3;
            int[] iArr = {indices.get(i17), indices.get(i17 + 1), indices.get(i17 + 2)};
            int[] iArr2 = null;
            int[] iArr3 = texCoords != null ? iArr : null;
            if (normals != null) {
                iArr2 = iArr;
            }
            a10.w(iArr, iArr3, iArr2);
        }
        return a10;
    }
}
