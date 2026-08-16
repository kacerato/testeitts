package Xg;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Iterator;
import yd.C16175g;

public class m {
    public static void a(StringBuilder sb2, String key, Boolean value, String separator) {
        if (value != null) {
            sb2.append(key);
            sb2.append(" ");
            if (value.booleanValue()) {
                sb2.append("on");
            } else {
                sb2.append("off");
            }
            sb2.append(separator);
        }
    }

    public static void b(StringBuilder sb2, String key, Object value, String separator) {
        if (value != null) {
            sb2.append(key);
            sb2.append(" ");
            sb2.append(value);
            sb2.append(separator);
        }
    }

    public static void c(StringBuilder sb2, String key, B options) {
        if (options != null) {
            sb2.append(key);
            sb2.append(" ");
            sb2.append(f(options));
            sb2.append("\n");
        }
    }

    public static void d(StringBuilder sb2, String key, i value, String separator) {
        if (value != null) {
            sb2.append(key);
            sb2.append(" ");
            sb2.append(j.f(value));
            sb2.append(separator);
        }
    }

    public static String e(k mtl) {
        StringBuilder sb2 = new StringBuilder("newmtl ");
        sb2.append(mtl.getName());
        sb2.append("\n");
        b(sb2, "illum", mtl.C1(), "\n");
        b(sb2, C16175g.f130193j, mtl.R1(), "\n");
        b(sb2, "Ni", mtl.d2(), "\n");
        Float m12 = mtl.m1();
        if (m12 != null) {
            sb2.append("d");
            sb2.append(" ");
            if (Boolean.TRUE.equals(mtl.L2())) {
                sb2.append("-halo");
                sb2.append(" ");
            }
            sb2.append((Object) m12);
            sb2.append("\n");
        }
        d(sb2, C16175g.f130188e, mtl.g2(), "\n");
        d(sb2, C16175g.f130189f, mtl.t2(), "\n");
        d(sb2, C16175g.f130190g, mtl.u1(), "\n");
        d(sb2, C16175g.f130191h, mtl.U1(), "\n");
        b(sb2, "sharpness", mtl.H2(), "\n");
        c(sb2, C16175g.f130194k, mtl.P1());
        c(sb2, C16175g.f130195l, mtl.C2());
        c(sb2, C16175g.f130196m, mtl.r2());
        c(sb2, C16175g.f130197n, mtl.a2());
        c(sb2, C16175g.f130198o, mtl.W1());
        c(sb2, "bump", mtl.b2());
        c(sb2, "disp", mtl.j2());
        c(sb2, "decal", mtl.s1());
        Iterator<B> it = mtl.O1().iterator();
        while (it.hasNext()) {
            c(sb2, "refl", it.next());
        }
        b(sb2, "Pr", mtl.i2(), "\n");
        c(sb2, "map_Pr", mtl.f2());
        b(sb2, "Pm", mtl.U2(), "\n");
        c(sb2, "map_Pm", mtl.G2());
        b(sb2, "Ps", mtl.q2(), "\n");
        c(sb2, "map_Ps", mtl.k2());
        b(sb2, "Pc", mtl.z1(), "\n");
        b(sb2, "Pcr", mtl.p1(), "\n");
        d(sb2, "Ke", mtl.x2(), "\n");
        c(sb2, "map_Ke", mtl.w2());
        b(sb2, "aniso", mtl.B1(), "\n");
        b(sb2, "anisor", mtl.Z1(), "\n");
        c(sb2, "norm", mtl.M2());
        return sb2.toString();
    }

    public static String f(B options) {
        StringBuilder sb2 = new StringBuilder();
        a(sb2, "-blendu", options.q(), " ");
        a(sb2, "-blendv", options.o(), " ");
        b(sb2, "-boost", options.r(), " ");
        d(sb2, "-mm", options.n(), " ");
        d(sb2, "-o", options.u(), " ");
        d(sb2, "-s", options.getS(), " ");
        d(sb2, "-t", options.j(), " ");
        b(sb2, "-texres", options.v(), " ");
        a(sb2, "-clamp", options.e(), " ");
        b(sb2, "-bm", options.m(), " ");
        b(sb2, "-imfchan", options.w(), " ");
        b(sb2, "-type", options.getType(), " ");
        sb2.append(options.getFileName());
        return sb2.toString();
    }

    public static void g(k mtl, Writer writer) throws IOException {
        writer.write(e(mtl));
        writer.flush();
    }

    public static void h(Iterable<? extends k> mtls, OutputStream outputStream) throws IOException {
        i(mtls, new OutputStreamWriter(outputStream));
    }

    public static void i(Iterable<? extends k> mtls, Writer writer) throws IOException {
        Iterator<? extends k> it = mtls.iterator();
        while (it.hasNext()) {
            g(it.next(), writer);
        }
    }
}
