package Xg;

public class s {
    public static f a(q face) {
        int[] iArr;
        int[] iArr2 = new int[face.a()];
        for (int i10 = 0; i10 < face.a(); i10++) {
            iArr2[i10] = face.f(i10);
        }
        int[] iArr3 = null;
        if (face.d()) {
            iArr = new int[face.a()];
            for (int i11 = 0; i11 < face.a(); i11++) {
                iArr[i11] = face.e(i11);
            }
        } else {
            iArr = null;
        }
        if (face.b()) {
            iArr3 = new int[face.a()];
            for (int i12 = 0; i12 < face.a(); i12++) {
                iArr3[i12] = face.c(i12);
            }
        }
        return new f(iArr2, iArr, iArr3);
    }

    public static f b(q face, int... n10) {
        int[] iArr;
        int[] iArr2 = new int[n10.length];
        for (int i10 = 0; i10 < n10.length; i10++) {
            iArr2[i10] = face.f(n10[i10]);
        }
        int[] iArr3 = null;
        if (face.d()) {
            iArr = new int[n10.length];
            for (int i11 = 0; i11 < n10.length; i11++) {
                iArr[i11] = face.e(n10[i11]);
            }
        } else {
            iArr = null;
        }
        if (face.b()) {
            iArr3 = new int[n10.length];
            for (int i12 = 0; i12 < n10.length; i12++) {
                iArr3[i12] = face.c(n10[i12]);
            }
        }
        return new f(iArr2, iArr, iArr3);
    }

    public static q c(int[] v10, int[] vt, int[] vn2) {
        return d(v10, vt, vn2);
    }

    public static f d(int[] v10, int[] vt, int[] vn2) {
        return new f(v10, vt, vn2);
    }

    public static String e(q face) {
        StringBuilder sb2 = new StringBuilder("f ");
        for (int i10 = 0; i10 < face.a(); i10++) {
            if (i10 > 0) {
                sb2.append(" ");
            }
            sb2.append(face.f(i10) + 1);
            if (face.d() || face.b()) {
                sb2.append("/");
            }
            if (face.d()) {
                sb2.append(face.e(i10) + 1);
            }
            if (face.b()) {
                sb2.append("/");
                sb2.append(face.c(i10) + 1);
            }
        }
        return sb2.toString();
    }

    public static f f(q face, int verticesOffset, int texCoordsOffset, int normalsOffset) {
        int[] iArr;
        int[] iArr2 = new int[face.a()];
        for (int i10 = 0; i10 < face.a(); i10++) {
            iArr2[i10] = face.f(i10) + verticesOffset;
        }
        int[] iArr3 = null;
        if (face.d()) {
            iArr = new int[face.a()];
            for (int i11 = 0; i11 < face.a(); i11++) {
                iArr[i11] = face.e(i11) + texCoordsOffset;
            }
        } else {
            iArr = null;
        }
        if (face.b()) {
            iArr3 = new int[face.a()];
            for (int i12 = 0; i12 < face.a(); i12++) {
                iArr3[i12] = face.c(i12) + normalsOffset;
            }
        }
        return new f(iArr2, iArr, iArr3);
    }
}
