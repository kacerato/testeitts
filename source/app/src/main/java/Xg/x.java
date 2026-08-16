package Xg;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

public class x {

    public class a implements e {
        @Override
        public boolean a(q face) {
            return face.d();
        }

        @Override
        public int b(A input, q face, int vertexNumber) {
            return face.e(vertexNumber);
        }
    }

    public class b implements e {
        @Override
        public boolean a(q face) {
            return face.b();
        }

        @Override
        public int b(A input, q face, int vertexNumber) {
            return face.c(vertexNumber);
        }
    }

    public class c implements i {
        @Override
        public float get(int index) {
            return 0.0f;
        }

        @Override
        public int getDimensions() {
            return 0;
        }

        @Override
        public float getW() {
            return 0.0f;
        }

        @Override
        public float getX() {
            return 0.0f;
        }

        @Override
        public float getY() {
            return 0.0f;
        }

        @Override
        public float getZ() {
            return 0.0f;
        }
    }

    public class d implements i {
        @Override
        public float get(int index) {
            return 0.0f;
        }

        @Override
        public int getDimensions() {
            return 0;
        }

        @Override
        public float getW() {
            return 0.0f;
        }

        @Override
        public float getX() {
            return 0.0f;
        }

        @Override
        public float getY() {
            return 0.0f;
        }

        @Override
        public float getZ() {
            return 0.0f;
        }
    }

    public interface e {
        boolean a(q face);

        int b(A input, q face, int vertexNumber);
    }

    public static void a(A input, q face, D output) {
        Set<String> E10 = input.E(face);
        if (E10 != null) {
            output.z(E10);
        }
        String d10 = input.d(face);
        if (d10 != null) {
            output.g(d10);
        }
    }

    public static void b(A input, o output) {
        int a10 = output.a();
        for (int i10 = 0; i10 < input.a(); i10++) {
            output.m(input.n(i10));
        }
        int h10 = output.h();
        for (int i11 = 0; i11 < input.h(); i11++) {
            output.D(input.v(i11));
        }
        int x10 = output.x();
        for (int i12 = 0; i12 < input.x(); i12++) {
            output.q(input.o(i12));
        }
        for (int i13 = 0; i13 < input.getNumFaces(); i13++) {
            q b10 = input.b(i13);
            a(input, b10, output);
            output.A(s.f(b10, a10, h10, x10));
        }
    }

    public static void c(A input, D output) {
        for (int i10 = 0; i10 < input.a(); i10++) {
            output.m(input.n(i10));
        }
        for (int i11 = 0; i11 < input.h(); i11++) {
            output.D(input.v(i11));
        }
        for (int i12 = 0; i12 < input.x(); i12++) {
            output.q(input.o(i12));
        }
    }

    public static o d(A input) {
        return (o) e(input, z.a());
    }

    public static <T extends D> T e(A a10, T t10) {
        return (T) o(i(l(p(a10))), t10);
    }

    public static String f(A obj) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Obj:\n");
        sb2.append("    mtlFileNames     : " + ((Object) obj.k()) + "\n");
        sb2.append("    numVertices      : " + obj.a() + "\n");
        sb2.append("    numTexCoords     : " + obj.h() + "\n");
        sb2.append("    numNormals       : " + obj.x() + "\n");
        sb2.append("    numFaces         : " + obj.getNumFaces() + "\n");
        sb2.append("    numGroups        : " + obj.e() + "\n");
        for (int i10 = 0; i10 < obj.e(); i10++) {
            t i11 = obj.i(i10);
            sb2.append("        Group " + i10 + ":\n");
            sb2.append("            name    : " + i11.getName() + "\n");
            sb2.append("            numFaces: " + i11.getNumFaces() + "\n");
        }
        sb2.append("    numMaterialGroups: " + obj.t() + "\n");
        for (int i12 = 0; i12 < obj.t(); i12++) {
            t f10 = obj.f(i12);
            sb2.append("        MaterialGroup " + i12 + ":\n");
            sb2.append("            name    : " + f10.getName() + "\n");
            sb2.append("            numFaces: " + f10.getNumFaces() + "\n");
        }
        return sb2.toString();
    }

    public static o g(A input, t inputGroup, List<Integer> vertexIndexMapping) {
        return (o) h(input, inputGroup, vertexIndexMapping, z.a());
    }

    public static <T extends D> T h(A input, t inputGroup, List<Integer> vertexIndexMapping, T output) {
        int i10;
        output.l(input.k());
        int[] iArr = new int[input.a()];
        int[] iArr2 = new int[input.h()];
        int[] iArr3 = new int[input.x()];
        Arrays.fill(iArr, -1);
        Arrays.fill(iArr2, -1);
        Arrays.fill(iArr3, -1);
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i11 < inputGroup.getNumFaces()) {
            q b10 = inputGroup.b(i11);
            f a10 = s.a(b10);
            a(input, b10, output);
            int i15 = 0;
            while (i15 < b10.a()) {
                int f10 = b10.f(i15);
                int i16 = i13;
                try {
                    if (iArr[f10] == -1) {
                        iArr[f10] = i12;
                        output.m(input.n(f10));
                        i12++;
                    }
                    a10.i(i15, iArr[f10]);
                } catch (Exception unused) {
                }
                i15++;
                i13 = i16;
            }
            int i17 = i13;
            if (b10.d()) {
                i13 = i17;
                int i18 = 0;
                while (i18 < b10.a()) {
                    int e10 = b10.e(i18);
                    int i19 = i12;
                    try {
                        if (iArr2[e10] == -1) {
                            iArr2[e10] = i13;
                            output.D(input.v(e10));
                            i13++;
                        }
                        a10.h(i18, iArr2[e10]);
                    } catch (Exception unused2) {
                    }
                    i18++;
                    i12 = i19;
                }
                i10 = i12;
            } else {
                i10 = i12;
                i13 = i17;
            }
            if (b10.b()) {
                for (int i20 = 0; i20 < b10.a(); i20++) {
                    int c10 = b10.c(i20);
                    try {
                        if (iArr3[c10] == -1) {
                            iArr3[c10] = i14;
                            output.q(input.o(c10));
                            i14++;
                        }
                        a10.g(i20, iArr3[c10]);
                    } catch (Exception unused3) {
                    }
                }
            }
            output.A(a10);
            i11++;
            i12 = i10;
        }
        if (vertexIndexMapping != null) {
            for (int i21 = 0; i21 < i12; i21++) {
                vertexIndexMapping.add(-1);
            }
            for (int i22 = 0; i22 < input.a(); i22++) {
                int i23 = iArr[i22];
                if (i23 != -1) {
                    vertexIndexMapping.set(i23, Integer.valueOf(i22));
                }
            }
        }
        return output;
    }

    public static o i(A input) {
        return (o) j(input, null, z.a());
    }

    public static <T extends D> T j(A input, List<Integer> indexMapping, T output) {
        k(input, new b(), indexMapping, output);
        return output;
    }

    public static void k(A input, e propertyIndexAccessor, List<Integer> indexMapping, D output) {
        output.l(input.k());
        c(input, output);
        int[] iArr = new int[input.a()];
        Arrays.fill(iArr, -1);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < input.getNumFaces(); i10++) {
            q b10 = input.b(i10);
            a(input, b10, output);
            if (propertyIndexAccessor.a(b10)) {
                f fVar = null;
                for (int i11 = 0; i11 < b10.a(); i11++) {
                    int f10 = b10.f(i11);
                    int b11 = propertyIndexAccessor.b(input, b10, i11);
                    int i12 = iArr[f10];
                    if (i12 == -1 || i12 == b11) {
                        iArr[f10] = b11;
                    } else {
                        i n10 = input.n(f10);
                        int a10 = input.a() + arrayList.size();
                        arrayList.add(n10);
                        output.m(n10);
                        if (fVar == null) {
                            fVar = s.a(b10);
                        }
                        fVar.i(i11, a10);
                        if (indexMapping != null) {
                            Integer num = indexMapping.get(f10);
                            num.intValue();
                            indexMapping.add(num);
                        }
                    }
                }
                if (fVar != null) {
                    b10 = fVar;
                }
            }
            output.A(b10);
        }
    }

    public static o l(A input) {
        return (o) m(input, null, z.a());
    }

    public static <T extends D> T m(A input, List<Integer> indexMapping, T output) {
        k(input, new a(), indexMapping, output);
        return output;
    }

    public static o n(A input) {
        return (o) o(input, z.a());
    }

    public static <T extends D> T o(A input, T output) {
        output.l(input.k());
        for (int i10 = 0; i10 < input.a(); i10++) {
            output.m(input.n(i10));
        }
        int[] iArr = new int[input.a()];
        int[] iArr2 = new int[input.a()];
        boolean z10 = false;
        boolean z11 = false;
        for (int i11 = 0; i11 < input.getNumFaces(); i11++) {
            q b10 = input.b(i11);
            for (int i12 = 0; i12 < b10.a(); i12++) {
                int f10 = b10.f(i12);
                if (b10.d()) {
                    iArr[f10] = b10.e(i12);
                    z10 = true;
                }
                if (b10.b()) {
                    iArr2[f10] = b10.c(i12);
                    z11 = true;
                }
            }
        }
        if (z10) {
            for (int i13 = 0; i13 < input.a(); i13++) {
                try {
                    output.D(input.v(iArr[i13]));
                } catch (Exception unused) {
                    output.D(new c());
                }
            }
        }
        if (z11) {
            for (int i14 = 0; i14 < input.a(); i14++) {
                try {
                    output.q(input.o(iArr2[i14]));
                } catch (Exception unused2) {
                    output.q(new d());
                }
            }
        }
        for (int i15 = 0; i15 < input.getNumFaces(); i15++) {
            q b11 = input.b(i15);
            a(input, b11, output);
            f a10 = s.a(b11);
            if (b11.d()) {
                for (int i16 = 0; i16 < b11.a(); i16++) {
                    a10.h(i16, a10.f(i16));
                }
            }
            if (b11.b()) {
                for (int i17 = 0; i17 < b11.a(); i17++) {
                    a10.g(i17, a10.f(i17));
                }
            }
            output.A(a10);
        }
        return output;
    }

    public static o p(A input) {
        return (o) q(input, z.a());
    }

    public static <T extends D> T q(A input, T output) {
        output.l(input.k());
        c(input, output);
        for (int i10 = 0; i10 < input.getNumFaces(); i10++) {
            q b10 = input.b(i10);
            a(input, b10, output);
            if (b10.a() == 3) {
                output.A(b10);
            } else {
                int i11 = 0;
                while (i11 < b10.a() - 2) {
                    int i12 = i11 + 1;
                    output.A(s.b(b10, 0, i12, i11 + 2));
                    i11 = i12;
                }
            }
        }
        return output;
    }
}
