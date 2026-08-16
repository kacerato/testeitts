package l8;

import d8.j;
import e8.C13044a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import k8.C13950c;
import k8.InterfaceC13948a;

public class C14061e extends i {

    public static final String f96195b = "jpcTestMethod189468498484";

    public static final String f96196c = "jpcTestMethod189468498484()";

    private boolean e(C13950c javaCode, d8.e co, InterfaceC13948a jpcListener) {
        int i10;
        if (co.f84382b.contains("cannot be resolved or is not a field")) {
            b("The error info:" + co.f84382b);
            b("The error text:" + co.f84381a);
            String replace = co.f84382b.replace(" cannot be resolved or is not a field", "");
            while (replace.endsWith(" ")) {
                replace = replace.substring(0, replace.length() - 1);
            }
            String trim = javaCode.e(co.f84383c).trim();
            if (!co.f84381a.contains(trim)) {
                throw new RuntimeException("INVALID LINE NUMBER");
            }
            b("the error line: " + trim);
            String[] split = co.f84381a.split("\n");
            if (split.length >= 2) {
                String str = "";
                for (int i11 = 0; i11 < split.length - 1; i11++) {
                    if (i11 != 0) {
                        break;
                    }
                    for (String e10 = javaCode.e(co.f84383c + i11); e10.startsWith(" "); e10 = e10.substring(1)) {
                        str = str + " ";
                    }
                }
                b("From Java text:" + trim);
                if (trim != null && !trim.trim().isEmpty()) {
                    String str2 = split[split.length - 1];
                    b("Info L:" + str2);
                    int indexOf = str2.indexOf("^");
                    int i12 = indexOf;
                    while (true) {
                        i10 = i12 + 1;
                        if (str2.length() <= i10 || str2.charAt(i10) != '^') {
                            break;
                        }
                        i12 = i10;
                    }
                    b("Info start:" + indexOf + " end:" + i12);
                    if (trim.length() < indexOf) {
                        throw new RuntimeException("Cant substring firstIndex[" + indexOf + "] and lastIndex[" + i10 + " taken from infoLine[" + str2 + "] at textContent[" + trim + "] for error[" + co.f84381a + "] and info [" + co.f84382b + "] at co.line[" + co.f84383c + "]");
                    }
                    String substring = trim.substring(0, indexOf);
                    String substring2 = trim.length() < i10 ? "" : trim.substring(i10);
                    b("Start Text:" + substring);
                    b("End Text:" + substring2);
                    String str3 = substring + "jpcTestMethod189468498484()" + substring2;
                    b("Test line:" + str3);
                    C13950c clone = javaCode.clone();
                    clone.h(co.f84383c, str3);
                    List<d8.e> a10 = jpcListener.a(clone.d());
                    if (a10 != null && !a10.isEmpty()) {
                        Iterator<d8.e> it = a10.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            d8.e next = it.next();
                            if (next.f84383c == co.f84383c) {
                                if (next.f84382b.startsWith("The method jpcTestMethod189468498484() is undefined for the type ")) {
                                    b("GET METHOD OUTPUT " + next.h());
                                    String replace2 = next.f84382b.replace("The method jpcTestMethod189468498484() is undefined for the type ", "");
                                    b("Type: " + replace2);
                                    C13044a g10 = g(replace, replace2, null);
                                    if (g10 != null && g10.f85392b.f85397b) {
                                        javaCode.h(co.f84383c, substring + g10.f85392b.f85396a + "()" + substring2);
                                        return true;
                                    }
                                } else if (next.f84382b.startsWith("The left-hand side of an assignment must be a variable")) {
                                    b("SET METHOD OUTPUT " + next.h());
                                    return h(clone, next, jpcListener, str, replace, javaCode);
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override
    public boolean a(C13950c javaCode, List<d8.e> compillerOutputs, InterfaceC13948a jpcListener) {
        HashSet hashSet = new HashSet();
        boolean z10 = false;
        for (int i10 = 0; i10 < compillerOutputs.size(); i10++) {
            d8.e eVar = compillerOutputs.get(i10);
            if (eVar.f84382b != null && eVar.f84381a != null && !hashSet.contains(Integer.valueOf(eVar.f84383c))) {
                try {
                    if (e(javaCode, eVar, jpcListener)) {
                        z10 = true;
                        hashSet.add(Integer.valueOf(eVar.f84383c));
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return z10;
    }

    public final boolean c(String code, InterfaceC13948a jpcListener, int line) {
        for (d8.e eVar : jpcListener.a(code)) {
            if (eVar.f84383c == line) {
                b("GET METHOD ERROR: " + eVar.h());
                if (eVar.d()) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean d(C13950c jc2, String tab, InterfaceC13948a jpcListener, int line, String attributeName, C13950c finalCode) {
        Iterator<d8.e> it = jpcListener.a(jc2.d()).iterator();
        while (true) {
            if (!it.hasNext()) {
                return false;
            }
            d8.e next = it.next();
            if (next.f84383c == line) {
                b("SM CHECK CLASS TYPE OUTPUT: " + next.h());
                if (next.f84382b.contains(" is undefined for the type ")) {
                    String[] split = next.f84382b.replace(" is undefined for the type ", "---").split("---");
                    String str = split[split.length - 1];
                    b("Type: " + str);
                    C13044a g10 = g(attributeName, str, null);
                    if (g10 != null && g10.f85393c.f85397b) {
                        String[] split2 = next.f84381a.split("\n");
                        if (split2.length >= 2) {
                            String str2 = "";
                            for (int i10 = 0; i10 < split2.length - 1; i10++) {
                                String e10 = jc2.e(next.f84383c + i10);
                                while (e10.startsWith(" ")) {
                                    e10 = e10.substring(1);
                                }
                                b("L:" + e10);
                                str2 = i10 > 0 ? str2 + "\n" + e10 : str2 + e10;
                            }
                            finalCode.h(next.f84383c, tab + str2.replace("jpcTestMethod189468498484", g10.f85393c.f85396a));
                            return true;
                        }
                    }
                } else if (next.f84382b.contains(" cannot be resolved or is not a field") && e(jc2, next, jpcListener) && d(jc2, tab, jpcListener, line, attributeName, finalCode)) {
                    return true;
                }
            }
        }
    }

    public final boolean f(d8.e co, C13950c jc2, String tab, InterfaceC13948a jpcListener, String attributeName, C13950c finalCode) {
        String[] split = co.f84381a.split("\n");
        if (split.length < 2) {
            return false;
        }
        String str = "";
        for (int i10 = 0; i10 < split.length - 1; i10++) {
            String e10 = jc2.e(co.f84383c + i10);
            while (e10.startsWith(" ")) {
                e10 = e10.substring(1);
            }
            b("L:" + e10);
            str = i10 > 0 ? str + "\n" + e10 : str + e10;
        }
        int lastIndexOf = split[split.length - 1].lastIndexOf("^") + 1;
        String substring = str.substring(lastIndexOf);
        b("SM afterLastParathenses: " + substring);
        String str2 = str.substring(0, lastIndexOf) + ")" + substring;
        b("SM NEW TEXt: " + str2);
        jc2.h(co.f84383c, tab + str2);
        return d(jc2, tab, jpcListener, co.f84383c, attributeName, finalCode);
    }

    public final C13044a g(String attributeName, String type, String fullName) {
        Class superclass;
        if (fullName != null && !fullName.startsWith("JAVARuntime")) {
            return null;
        }
        for (int i10 = 0; i10 < j.k0(); i10++) {
            e8.c j02 = j.j0(i10);
            String replace = j02.b().replace("$", ".");
            if (replace.startsWith("JAVARuntime.")) {
                replace = replace.substring(12);
            }
            if (replace.equals(type) || j02.b().replace("$", ".").equals(type)) {
                C13044a f10 = j02.e().f(attributeName);
                if (f10 != null) {
                    return f10;
                }
                Class a10 = j02.a();
                if (a10 != null && a10 != Object.class && (superclass = a10.getSuperclass()) != null && superclass != Object.class && a10 != superclass) {
                    return g(attributeName, superclass.getSimpleName(), superclass.getName());
                }
                return null;
            }
        }
        return null;
    }

    public final boolean h(C13950c jc2, d8.e co, InterfaceC13948a jpcListener, String tab, String attributeName, C13950c finalCode) {
        String[] split = co.f84381a.split("\n");
        if (split.length >= 2) {
            String str = "";
            for (int i10 = 0; i10 < split.length - 1; i10++) {
                String e10 = jc2.e(co.f84383c + i10);
                while (e10.startsWith(" ")) {
                    e10 = e10.substring(1);
                }
                b("L:" + e10);
                str = i10 > 0 ? str + "\n" + e10 : str + e10;
            }
            b("SM From Java text:" + str);
            String str2 = split[split.length - 1];
            b("SM Info L:" + str2);
            int indexOf = str2.indexOf("^");
            int lastIndexOf = str2.lastIndexOf("^");
            b("SM Info start:" + indexOf + " end:" + lastIndexOf);
            String substring = str.substring(lastIndexOf + 1);
            while (true) {
                if (!substring.startsWith(" ") && !substring.startsWith("=")) {
                    break;
                }
                substring = substring.substring(1);
            }
            String str3 = str.substring(0, lastIndexOf) + substring;
            b("SM Text without last parentheses:" + str3);
            jc2.h(co.f84383c, tab + str3);
            for (d8.e eVar : jpcListener.a(jc2.d())) {
                if (eVar.f84383c == co.f84383c) {
                    b("LAST SET METHOD OUTPUT " + eVar.h());
                    return f(eVar, jc2, tab, jpcListener, attributeName, finalCode);
                }
            }
        }
        return false;
    }
}
