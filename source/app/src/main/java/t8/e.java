package t8;

import k8.C13950c;

public class e {
    public static String a(C13950c javaCode) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < javaCode.f(); i10++) {
            String e10 = javaCode.e(i10);
            if (!e10.trim().replaceAll("\\s+", " ").startsWith("import ")) {
                sb2.append(e10);
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }
}
