package g8;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import h8.InterfaceC13434a;
import java.util.List;
import r8.C15153a;

public class C13300a extends h8.b {

    public static final List<String> f88172b = new C1623a();

    public class C1623a extends SteppedArrayList<String> {
        public C1623a() {
            add("import java.util.*;");
            add("import java.util.concurrent.*;");
            add("import java.util.concurrent.atomic.*;");
            add("import java.util.concurrent.locks.*;");
            add("import java.util.function.*;");
            add("import java.util.regex.*;");
            add("import java.util.stream.*;");
            add("import java.util.zip.*;");
            add("import java.text.*;");
            add("import java.net.*;");
            add("import java.math.*;");
            add("import java.io.*;");
            add("import java.nio.*;");
            add("import java.time.*;");
            add("import java.time.chrono.*;");
            add("import java.time.format.*;");
            add("import java.time.temporal.*;");
            add("import java.time.zone.*;");
        }
    }

    @Override
    public boolean a(C15153a totalCode, InterfaceC13434a jpcListener) {
        boolean c10 = c(totalCode, false);
        if (d(totalCode, c10)) {
            return true;
        }
        return c10;
    }

    public final boolean c(C15153a totalCode, boolean forceCheck) {
        StringBuilder sb2 = new StringBuilder();
        Mc.b bVar = new Mc.b();
        for (int i10 = 0; i10 < totalCode.g(); i10++) {
            String f10 = totalCode.f(i10);
            if (f10.trim().replaceAll("\\s+", " ").startsWith("import ")) {
                bVar.add(f10.replace("\n", ""));
            } else {
                sb2.append(f10);
                sb2.append("\n");
            }
        }
        int i11 = 0;
        boolean z10 = false;
        while (true) {
            List<String> list = f88172b;
            if (i11 >= list.size()) {
                break;
            }
            String str = list.get(i11);
            int i12 = 0;
            while (true) {
                if (i12 >= bVar.size()) {
                    bVar.add(str);
                    z10 = true;
                    break;
                }
                if (((String) bVar.get(i12)).contains(str)) {
                    break;
                }
                i12++;
            }
            i11++;
        }
        if (!z10) {
            return false;
        }
        if (!bVar.isEmpty()) {
            StringBuilder sb3 = new StringBuilder();
            for (int i13 = 0; i13 < bVar.size(); i13++) {
                String str2 = (String) bVar.get(i13);
                if (i13 > 0) {
                    sb3.append("\n");
                }
                sb3.append(str2);
            }
            totalCode.k(sb2.toString().replace("package JAVARuntime;", "package JAVARuntime;\n\n" + sb3.toString()));
        }
        return z10;
    }

    public final boolean d(C15153a totalCode, boolean forceCheck) {
        StringBuilder sb2 = new StringBuilder();
        Mc.b bVar = new Mc.b();
        for (int i10 = 0; i10 < totalCode.g(); i10++) {
            String f10 = totalCode.f(i10);
            if (f10.trim().replaceAll("\\s+", " ").startsWith("import ")) {
                bVar.add(f10.replace("\n", ""));
            } else {
                sb2.append(f10);
                sb2.append("\n");
            }
        }
        if (!bVar.isEmpty()) {
            StringBuilder sb3 = new StringBuilder();
            for (int i11 = 0; i11 < bVar.size(); i11++) {
                String str = (String) bVar.get(i11);
                if (i11 > 0) {
                    sb3.append("\n");
                }
                sb3.append(str);
            }
            totalCode.k(sb2.toString().replace("package JAVARuntime;", "package JAVARuntime;\n\n" + sb3.toString()));
        }
        return false;
    }
}
