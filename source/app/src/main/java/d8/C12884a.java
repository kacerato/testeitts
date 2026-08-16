package d8;

import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import java.util.List;

public class C12884a {

    public interface InterfaceC1572a {
        void a(String className, JavaMetaInfo jmi, int line);
    }

    public interface b {
        String a(String className, JavaMetaInfo jmi, int line);
    }

    public static void a(String code, JavaMetaInfo javaMetaInfo) {
        b(code, javaMetaInfo, null);
    }

    public static void b(String code, JavaMetaInfo javaMetaInfo, InterfaceC1572a listener) {
        int c10;
        javaMetaInfo.referencedClasses.clear();
        String str = javaMetaInfo.f72515e;
        String[] split = e(g(code)).split("\n");
        int i10 = 0;
        while (true) {
            List<JavaMetaInfo> list = j.f84415r;
            if (i10 >= list.size()) {
                return;
            }
            JavaMetaInfo javaMetaInfo2 = list.get(i10);
            if (!javaMetaInfo2.f72515e.equals(str) && javaMetaInfo2 != javaMetaInfo && (c10 = c(split, javaMetaInfo2.f72515e)) >= 0) {
                javaMetaInfo.referencedClasses.add(javaMetaInfo2.f72515e);
                if (listener != null) {
                    listener.a(javaMetaInfo2.f72515e, javaMetaInfo2, c10);
                }
            }
            i10++;
        }
    }

    public static int c(String[] lines, String className) {
        int i10;
        boolean z10 = false;
        for (int i11 = 0; i11 < lines.length; i11++) {
            String f10 = f(lines[i11].replaceAll("//.*", ""));
            int i12 = 0;
            while (i12 < f10.length()) {
                if (!z10 && i12 + 1 < f10.length()) {
                    i10 = i12 + 2;
                    if (f10.substring(i12, i10).equals("/*")) {
                        z10 = true;
                        i12 = i10;
                    }
                }
                if (z10) {
                    i10 = i12 + 1;
                    if (i10 < f10.length()) {
                        int i13 = i12 + 2;
                        if (f10.substring(i12, i13).equals("*/")) {
                            z10 = false;
                            i12 = i13;
                        }
                    }
                    i12 = i10;
                } else {
                    i12++;
                }
            }
            if (!z10) {
                for (String str : f10.split("[\\s(){};.,]+")) {
                    if (str.equals(className)) {
                        return i11;
                    }
                }
            }
        }
        return -1;
    }

    public static String d(String code, JavaMetaInfo javaMetaInfo, b listener) {
        int c10;
        String a10;
        javaMetaInfo.referencedClasses.clear();
        String str = javaMetaInfo.f72515e;
        String e10 = e(g(code));
        String[] split = e10.split("\n");
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<JavaMetaInfo> list = j.f84415r;
            if (i10 >= list.size()) {
                break;
            }
            JavaMetaInfo javaMetaInfo2 = list.get(i10);
            if (!javaMetaInfo2.f72515e.equals(str) && javaMetaInfo2 != javaMetaInfo && (c10 = c(split, javaMetaInfo2.f72515e)) >= 0) {
                javaMetaInfo.referencedClasses.add(javaMetaInfo2.f72515e);
                if (listener != null && (a10 = listener.a(javaMetaInfo2.f72515e, javaMetaInfo2, c10)) != null) {
                    split[c10] = split[c10].replace(javaMetaInfo2.f72515e, a10);
                    z10 = true;
                }
            }
            i10++;
        }
        if (!z10) {
            return e10;
        }
        String str2 = "";
        for (String str3 : split) {
            str2 = str2 + str3 + "\n";
        }
        return str2;
    }

    public static String e(String input) {
        int i10;
        StringBuilder sb2 = new StringBuilder();
        int length = input.length();
        int i11 = 0;
        boolean z10 = false;
        while (i11 < length) {
            if (!z10 && (i10 = i11 + 1) < length && input.charAt(i11) == '/' && input.charAt(i10) == '*') {
                z10 = true;
            } else if (z10 && (i10 = i11 + 1) < length && input.charAt(i11) == '*' && input.charAt(i10) == '/') {
                z10 = false;
            } else {
                if (!z10) {
                    sb2.append(input.charAt(i11));
                }
                i11++;
            }
            i11 = i10;
            i11++;
        }
        return sb2.toString();
    }

    public static String f(String line) {
        StringBuilder sb2 = new StringBuilder();
        int indexOf = line.indexOf("//");
        if (indexOf != -1) {
            sb2.append(line.substring(0, indexOf).trim());
            sb2.append("\n");
        } else {
            sb2.append(line);
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public static String g(String input) {
        return input.replaceAll(Tm.d.f25538e, "");
    }
}
