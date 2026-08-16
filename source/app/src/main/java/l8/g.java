package l8;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import k8.C13950c;
import k8.InterfaceC13948a;
import org.openjdk.tools.doclint.DocLint;

public class g extends i {

    public final Set<Integer> f96198b = new HashSet();

    private boolean c(C13950c javaCode, InterfaceC13948a jpcListener) {
        boolean e10 = e(javaCode, jpcListener, "&&", "==", "equals");
        if (e(javaCode, jpcListener, "&&", "!=", "notEquals")) {
            return true;
        }
        return e10;
    }

    private boolean d(C13950c javaCode, d8.e co, String op, String method, String originalOP) {
        b("The error info:" + co.f84382b);
        b("The error text:" + co.f84381a);
        String[] split = co.f84382b.replace("The operator " + op + " is undefined for the argument type(s) ", "").split(DocLint.SEPARATOR);
        if (split != null && split.length > 0) {
            for (int i10 = 0; i10 < split.length; i10++) {
                for (String str = split[i10]; str.contains(" "); str = str.replace(" ", "")) {
                }
            }
            String str2 = split[0];
            String str3 = split[1];
            if (str3 != null && !str3.isEmpty()) {
                while (str3.startsWith(" ")) {
                    str3 = str3.substring(1);
                }
                while (str3.endsWith(" ")) {
                    str3 = str3.substring(0, str3.length() - 1);
                }
            }
            if ((str3 == null || str3.isEmpty() || !str3.equals("null")) && (str2.equals(SerializableShaderEntry.f81157k) || str2.equals("java.lang.String"))) {
                b("String Class found ");
                b("the error line:");
                String[] split2 = co.f84381a.split("\n");
                if (split2.length >= 2) {
                    String str4 = "";
                    String str5 = str4;
                    for (int i11 = 0; i11 < split2.length - 1; i11++) {
                        String e10 = javaCode.e(co.f84383c + i11);
                        while (e10.startsWith(" ")) {
                            if (i11 == 0) {
                                str5 = str5 + " ";
                            }
                            e10 = e10.substring(1);
                        }
                        b("L:" + e10);
                        str4 = i11 > 0 ? str4 + "\n" + e10 : str4 + e10;
                    }
                    b("From Java text:" + str4);
                    String str6 = split2[split2.length - 1];
                    b("Info L:" + str6);
                    int indexOf = str6.indexOf("^");
                    int lastIndexOf = str6.lastIndexOf("^");
                    b("Info start:" + indexOf + " end:" + lastIndexOf);
                    String substring = str4.substring(indexOf, lastIndexOf + 1 + (originalOP.length() - op.length()));
                    b("Middle Text:" + substring);
                    String str7 = "StringOperations." + method + "(" + substring.replace(originalOP, ", ") + ")";
                    b("New Middle Text:" + str7);
                    String replace = str4.replace(substring, str7);
                    for (int i12 = 0; i12 < split2.length - 1; i12++) {
                        javaCode.h(co.f84383c + i12, "");
                    }
                    javaCode.h(co.f84383c, str5 + replace);
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public boolean a(C13950c javaCode, List<d8.e> compillerOutputs, InterfaceC13948a jpcListener) {
        boolean z10 = false;
        boolean z11 = true;
        while (z11) {
            z11 = c(javaCode, jpcListener);
            if (z11) {
                z10 = true;
            }
        }
        return z10;
    }

    public final boolean e(C13950c javaCode, InterfaceC13948a jpcListener, String TEST_EQUALS, String cop, String method) {
        boolean z10 = false;
        if (javaCode.d().contains(cop)) {
            String d10 = javaCode.d();
            List<d8.e> a10 = jpcListener.a(javaCode.d().replace(cop, TEST_EQUALS));
            javaCode.i(d10);
            for (d8.e eVar : a10) {
                if (!this.f96198b.contains(Integer.valueOf(eVar.f84383c))) {
                    b("COMPILE OUTPUT " + eVar.h());
                    String str = eVar.f84382b;
                    if (str != null) {
                        if (str.startsWith("The operator " + TEST_EQUALS + " is undefined for the argument type(s) ") && d(javaCode, eVar, TEST_EQUALS, method, cop)) {
                            this.f96198b.add(Integer.valueOf(eVar.f84383c));
                            z10 = true;
                        }
                    }
                }
            }
        }
        return z10;
    }
}
