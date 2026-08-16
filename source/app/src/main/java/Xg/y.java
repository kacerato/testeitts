package Xg;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class y {
    public static void a(A input, OutputStream outputStream) throws IOException {
        b(input, new OutputStreamWriter(outputStream));
    }

    public static void b(A input, Writer writer) throws IOException {
        List<String> k10 = input.k();
        if (!k10.isEmpty()) {
            writer.write("mtllib ");
            for (int i10 = 0; i10 < k10.size(); i10++) {
                if (i10 > 0) {
                    writer.write(" ");
                }
                writer.write(k10.get(i10));
            }
            writer.write("\n");
        }
        for (int i11 = 0; i11 < input.a(); i11++) {
            writer.write("v " + j.f(input.n(i11)) + "\n");
        }
        for (int i12 = 0; i12 < input.h(); i12++) {
            writer.write("vt " + j.f(input.v(i12)) + "\n");
        }
        for (int i13 = 0; i13 < input.x(); i13++) {
            writer.write("vn " + j.f(input.o(i13)) + "\n");
        }
        boolean z10 = true;
        for (int i14 = 0; i14 < input.getNumFaces(); i14++) {
            q b10 = input.b(i14);
            Set<String> E10 = input.E(b10);
            if (E10 != null) {
                boolean equals = E10.equals(Collections.singleton("default"));
                if (!z10 || !equals) {
                    writer.write("g ");
                    Iterator<String> it = E10.iterator();
                    while (it.hasNext()) {
                        writer.write(it.next());
                        writer.write(" ");
                    }
                    writer.write("\n");
                }
                z10 = false;
            }
            String d10 = input.d(b10);
            if (d10 != null) {
                writer.write("usemtl " + d10 + "\n");
            }
            writer.write(s.e(b10) + "\n");
        }
        writer.flush();
    }
}
