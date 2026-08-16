package Xg;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import yd.C16175g;
import yd.C16181m;

public class l {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(k mtl, String line) throws IOException {
        LinkedList linkedList = new LinkedList(Arrays.asList(line.split("[ \t\n\r\f]+")));
        String str = (String) linkedList.poll();
        if (str.equalsIgnoreCase("illum")) {
            mtl.P2(Integer.valueOf(C.g((String) linkedList.poll())));
        }
        if (str.equalsIgnoreCase(C16175g.f130188e)) {
            Float[] f10 = C.f(linkedList, 3);
            mtl.T1(f10[0], f10[1], f10[2]);
            return;
        }
        if (str.equalsIgnoreCase(C16175g.f130189f)) {
            Float[] f11 = C.f(linkedList, 3);
            mtl.N1(f11[0], f11[1], f11[2]);
            return;
        }
        if (str.equalsIgnoreCase(C16175g.f130190g)) {
            Float[] f12 = C.f(linkedList, 3);
            mtl.R2(f12[0], f12[1], f12[2]);
            return;
        }
        if (str.equalsIgnoreCase(C16175g.f130191h)) {
            Float[] f13 = C.f(linkedList, 3);
            mtl.o1(f13[0], f13[1], f13[2]);
            return;
        }
        if (str.equalsIgnoreCase("Ke")) {
            Float[] f14 = C.f(linkedList, 3);
            mtl.J1(f14[0], f14[1], f14[2]);
            return;
        }
        if (str.equalsIgnoreCase("Tr")) {
            mtl.v2(Float.valueOf(1.0f - C.e((String) linkedList.poll())));
            return;
        }
        if (str.equalsIgnoreCase("sharpness")) {
            mtl.c2(Float.valueOf(C.e((String) linkedList.poll())));
            return;
        }
        if (str.equalsIgnoreCase("d")) {
            if ("-halo".equals((String) linkedList.peek())) {
                mtl.m2(Boolean.TRUE);
                linkedList.poll();
            }
            mtl.v2(Float.valueOf(C.e((String) linkedList.poll())));
            return;
        }
        if (str.equalsIgnoreCase("Ni")) {
            mtl.u2(Float.valueOf(C.e((String) linkedList.poll())));
            return;
        }
        if (str.equalsIgnoreCase(C16175g.f130193j)) {
            mtl.S2(Float.valueOf(C.e((String) linkedList.poll())));
            return;
        }
        if (str.equalsIgnoreCase("Pr")) {
            mtl.A2(Float.valueOf(C.e((String) linkedList.poll())));
            return;
        }
        if (str.equalsIgnoreCase("Pm")) {
            mtl.o2(Float.valueOf(C.e((String) linkedList.poll())));
            return;
        }
        if (str.equalsIgnoreCase("Ps")) {
            mtl.D2(Float.valueOf(C.e((String) linkedList.poll())));
            return;
        }
        if (str.equalsIgnoreCase("Pc")) {
            mtl.S1(Float.valueOf(C.e((String) linkedList.poll())));
            return;
        }
        if (str.equalsIgnoreCase("Pcr")) {
            mtl.E1(Float.valueOf(C.e((String) linkedList.poll())));
            return;
        }
        if (str.equalsIgnoreCase("aniso")) {
            mtl.N2(Float.valueOf(C.e((String) linkedList.poll())));
        } else if (str.equalsIgnoreCase("anisor")) {
            mtl.e2(Float.valueOf(C.e((String) linkedList.poll())));
        } else {
            e(mtl, str, linkedList);
        }
    }

    public static List<k> b(InputStream inputStream) throws IOException {
        return d(new BufferedReader(new InputStreamReader(inputStream)));
    }

    public static List<k> c(Reader reader) throws IOException {
        return reader instanceof BufferedReader ? d((BufferedReader) reader) : d(new BufferedReader(reader));
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0043, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<k> d(BufferedReader reader) throws IOException {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        C3325d c3325d = null;
        while (true) {
            String readLine = reader.readLine();
            if (readLine == null) {
                break;
            }
            String trim = readLine.trim();
            while (true) {
                z10 = false;
                if (!trim.endsWith(C16181m.f130232i)) {
                    break;
                }
                trim = trim.substring(0, trim.length() - 2);
                String readLine2 = reader.readLine();
                if (readLine2 == null) {
                    z10 = true;
                    break;
                }
                trim = trim + " " + readLine2;
            }
            if (z10) {
                break;
            }
            String trim2 = trim.trim();
            if (trim2.startsWith(C16175g.f130187d)) {
                C3325d c3325d2 = new C3325d(trim2.substring(6).trim());
                arrayList.add(c3325d2);
                c3325d = c3325d2;
            } else if (!trim2.startsWith(C16181m.f130230g) && !trim2.isEmpty()) {
                if (c3325d == null) {
                    throw new IOException("Missing newmtl statement before " + trim2);
                }
                a(c3325d, trim2);
            }
        }
    }

    public static void e(k mtl, String command, Queue<String> tokens) throws IOException {
        if (command.equalsIgnoreCase(C16175g.f130194k)) {
            mtl.r1(f(tokens));
            return;
        }
        if (command.equalsIgnoreCase(C16175g.f130195l)) {
            mtl.T2(f(tokens));
            return;
        }
        if (command.equalsIgnoreCase(C16175g.f130196m)) {
            mtl.J2(f(tokens));
            return;
        }
        if (command.equalsIgnoreCase(C16175g.f130198o)) {
            mtl.F2(f(tokens));
            return;
        }
        if (command.equalsIgnoreCase(C16175g.f130197n)) {
            mtl.Q1(f(tokens));
            return;
        }
        if (command.equalsIgnoreCase("bump") || command.equalsIgnoreCase("map_bump")) {
            mtl.A1(f(tokens));
            return;
        }
        if (command.equalsIgnoreCase("disp")) {
            mtl.v1(f(tokens));
            return;
        }
        if (command.equalsIgnoreCase("decal")) {
            mtl.s2(f(tokens));
            return;
        }
        if (command.equalsIgnoreCase("refl")) {
            mtl.O1().add(f(tokens));
            return;
        }
        if (command.equalsIgnoreCase("map_Pr")) {
            mtl.E2(f(tokens));
            return;
        }
        if (command.equalsIgnoreCase("map_Pm")) {
            mtl.O2(f(tokens));
            return;
        }
        if (command.equalsIgnoreCase("map_Ps")) {
            mtl.M1(f(tokens));
        } else if (command.equalsIgnoreCase("map_Ke")) {
            mtl.n1(f(tokens));
        } else if (command.equalsIgnoreCase("norm")) {
            mtl.L1(f(tokens));
        }
    }

    public static B f(Queue<String> tokens) throws IOException {
        h hVar = new h();
        while (!tokens.isEmpty()) {
            String poll = tokens.poll();
            if (poll.equalsIgnoreCase("-blendu")) {
                hVar.i(Boolean.valueOf(C.d(tokens.poll())));
            } else if (poll.equalsIgnoreCase("-blendv")) {
                hVar.l(Boolean.valueOf(C.d(tokens.poll())));
            } else if (poll.equalsIgnoreCase("-boost")) {
                hVar.d(Float.valueOf(C.e(tokens.poll())));
            } else if (poll.equalsIgnoreCase("-cc")) {
                hVar.k(Boolean.valueOf(C.d(tokens.poll())));
            } else if (poll.equalsIgnoreCase("-mm")) {
                hVar.b(Float.valueOf(C.e(tokens.poll())), Float.valueOf(C.e(tokens.poll())));
            } else if (poll.equalsIgnoreCase("-o")) {
                Float[] f10 = C.f(tokens, 3);
                hVar.c(f10[0], f10[1], f10[2]);
            } else if (poll.equalsIgnoreCase("-s")) {
                Float[] f11 = C.f(tokens, 3);
                hVar.a(f11[0], f11[1], f11[2]);
            } else if (poll.equalsIgnoreCase("-t")) {
                Float[] f12 = C.f(tokens, 3);
                hVar.g(f12[0], f12[1], f12[2]);
            } else if (poll.equalsIgnoreCase("-texres")) {
                hVar.s(Float.valueOf(C.e(tokens.poll())));
            } else if (poll.equalsIgnoreCase("-clamp")) {
                hVar.x(Boolean.valueOf(C.d(tokens.poll())));
            } else if (poll.equalsIgnoreCase("-bm")) {
                hVar.t(Float.valueOf(C.e(tokens.poll())));
            } else if (poll.equalsIgnoreCase("-imfchan")) {
                hVar.f(tokens.poll());
            } else if (poll.equalsIgnoreCase("-type")) {
                hVar.setType(tokens.poll());
            } else {
                hVar.h(poll);
            }
        }
        return hVar;
    }
}
