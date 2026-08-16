package l8;

import android.provider.Telephony;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import k8.C13950c;
import k8.InterfaceC13948a;
import org.openjdk.tools.doclint.DocLint;
import ve.j;

@Deprecated
public class f extends i {

    public final Set<Integer> f96197b = new HashSet();

    @Override
    public boolean a(C13950c javaCode, List<d8.e> compillerOutputs, InterfaceC13948a jpcListener) {
        boolean z10 = false;
        boolean z11 = true;
        while (true) {
            if (!z10 && !z11) {
                break;
            }
            z10 = false;
            for (int i10 = 0; i10 < compillerOutputs.size(); i10++) {
                d8.e eVar = compillerOutputs.get(i10);
                if (eVar.f84382b != null && eVar.f84381a != null && n(javaCode, eVar, jpcListener)) {
                    z10 = true;
                }
            }
            if (z10) {
                compillerOutputs = jpcListener.a(javaCode.d());
                this.f96197b.clear();
            }
            z11 = false;
        }
        boolean z12 = true;
        while (true) {
            if (!z10 && !z12) {
                return z10;
            }
            z10 = d(javaCode, jpcListener) ? true : f(javaCode, jpcListener);
            z12 = false;
        }
    }

    public final void c(C13950c javaCode, InterfaceC13948a jpcListener) {
        String str;
        for (d8.e eVar : jpcListener.a(javaCode.d())) {
            if (!this.f96197b.contains(Integer.valueOf(eVar.f84383c)) && (str = eVar.f84382b) != null && str.startsWith("Syntax error, insert \") Statement\" to complete IfStatement")) {
                String[] split = eVar.f84381a.split("\n");
                int indexOf = split[split.length - 1].indexOf("^");
                String e10 = javaCode.e(eVar.f84383c);
                String str2 = "";
                while (e10.startsWith(" ")) {
                    str2 = str2 + " ";
                    e10 = e10.substring(1);
                }
                StringBuilder sb2 = new StringBuilder();
                int i10 = indexOf + 1;
                sb2.append(e10.substring(0, i10));
                sb2.append(")");
                sb2.append(e10.substring(i10));
                String sb3 = sb2.toString();
                javaCode.h(eVar.f84383c, str2 + sb3);
                this.f96197b.add(Integer.valueOf(eVar.f84383c));
            }
        }
    }

    public final boolean d(C13950c javaCode, InterfaceC13948a jpcListener) {
        String d10 = javaCode.d();
        boolean k10 = k(javaCode, jpcListener, "&&", d10, "==", "equals");
        if (k(javaCode, jpcListener, "&&", d10, "!=", "notEquals")) {
            k10 = true;
        }
        if (l(javaCode, jpcListener, "&&", d10, ">=", "higherEqualThan") || l(javaCode, jpcListener, "&&", d10, ">", "higherThan")) {
            k10 = true;
        }
        if (l(javaCode, jpcListener, "&&", d10, "<=", "lessEqualThan") || l(javaCode, jpcListener, "&&", d10, "<", "lessThan")) {
            return true;
        }
        return k10;
    }

    public final boolean e(C13950c javaCode, d8.e co, String op, String method, String originalOP) {
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

    public final boolean f(C13950c javaCode, InterfaceC13948a jpcListener) {
        return m(javaCode, jpcListener, "\"\"&", "&", javaCode.d(), "^", "toUpper");
    }

    public final boolean g(C13950c javaCode, d8.e co, String op, String method) {
        b("The error info:" + co.f84382b);
        b("The error text:" + co.f84381a);
        String[] split = co.f84382b.replace("The operator " + op + " is undefined for the argument type(s) ", "").split(DocLint.SEPARATOR);
        if (split != null && split.length > 0) {
            for (int i10 = 0; i10 < split.length; i10++) {
                for (String str = split[i10]; str.contains(" "); str = str.replace(" ", "")) {
                }
            }
            String str2 = split[0];
            if (str2.equals(SerializableShaderEntry.f81157k) || str2.equals("java.lang.String")) {
                b("String Class found ");
                b("the error line:");
                String[] split2 = co.f84381a.split("\n");
                if (split2.length >= 2) {
                    String str3 = "";
                    String str4 = str3;
                    for (int i11 = 0; i11 < split2.length - 1; i11++) {
                        String e10 = javaCode.e(co.f84383c + i11);
                        while (e10.startsWith(" ")) {
                            if (i11 == 0) {
                                str4 = str4 + " ";
                            }
                            e10 = e10.substring(1);
                        }
                        b("L:" + e10);
                        str3 = i11 > 0 ? str3 + "\n" + e10 : str3 + e10;
                    }
                    b("From Java text:" + str3);
                    String str5 = split2[split2.length - 1];
                    b("Info L:" + str5);
                    int indexOf = str5.indexOf("^");
                    int lastIndexOf = str5.lastIndexOf("^");
                    b("Info start:" + indexOf + " end:" + lastIndexOf);
                    String substring = str3.substring(indexOf, lastIndexOf + 1 + (op.length() - op.length()));
                    b("Middle Text:" + substring);
                    String str6 = "StringOperations." + method + "(" + substring.replace(op, "") + ")";
                    b("New Middle Text:" + str6);
                    String replace = str3.replace(substring, str6);
                    for (int i12 = 0; i12 < split2.length - 1; i12++) {
                        javaCode.h(co.f84383c + i12, "");
                    }
                    javaCode.h(co.f84383c, str4 + replace);
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean h(C13950c javaCode, d8.e co, String op, String method) {
        b("The error info:" + co.f84382b);
        b("The error text:" + co.f84381a);
        String[] split = co.f84382b.replace("The operator " + op + " is undefined for the argument type(s) ", "").split(DocLint.SEPARATOR);
        if (split != null && split.length > 0) {
            for (int i10 = 0; i10 < split.length; i10++) {
                for (String str = split[i10]; str.contains(" "); str = str.replace(" ", "")) {
                }
            }
            String str2 = split[0];
            if (str2.equals(SerializableShaderEntry.f81157k) || str2.equals("java.lang.String")) {
                b("String Class found ");
                b("the error line:");
                String[] split2 = co.f84381a.split("\n");
                if (split2.length >= 2) {
                    String str3 = "";
                    String str4 = str3;
                    for (int i11 = 0; i11 < split2.length - 1; i11++) {
                        String e10 = javaCode.e(co.f84383c + i11);
                        while (e10.startsWith(" ")) {
                            if (i11 == 0) {
                                str4 = str4 + " ";
                            }
                            e10 = e10.substring(1);
                        }
                        b("L:" + e10);
                        str3 = i11 > 0 ? str3 + "\n" + e10 : str3 + e10;
                    }
                    b("From Java text:" + str3);
                    String str5 = split2[split2.length - 1];
                    b("Info L:" + str5);
                    int indexOf = str5.indexOf("^");
                    int lastIndexOf = str5.lastIndexOf("^");
                    b("Info start:" + indexOf + " end:" + lastIndexOf);
                    String substring = str3.substring(indexOf, lastIndexOf + 1);
                    b("Middle Text:" + substring);
                    String str6 = "StringOperations." + method + "(" + substring.replace(op, ", ") + ")";
                    b("New Middle Text:" + str6);
                    String replace = str3.replace(substring, str6);
                    for (int i12 = 0; i12 < split2.length - 1; i12++) {
                        javaCode.h(co.f84383c + i12, "");
                    }
                    javaCode.h(co.f84383c, str4 + replace);
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean i(C13950c javaCode, d8.e co, String op, String method, String originalOP) {
        b("The error info:" + co.f84382b);
        b("The error text:" + co.f84381a);
        String[] split = co.f84382b.replace("The operator " + op + " is undefined for the argument type(s) ", "").split(DocLint.SEPARATOR);
        if (split != null && split.length > 0) {
            for (int i10 = 0; i10 < split.length; i10++) {
                for (String str = split[i10]; str.contains(" "); str = str.replace(" ", "")) {
                }
            }
            String str2 = split[0];
            if (str2.equals(SerializableShaderEntry.f81157k) || str2.equals("java.lang.String")) {
                b("String Class found ");
                b("the error line:");
                String[] split2 = co.f84381a.split("\n");
                if (split2.length >= 2) {
                    String str3 = "";
                    String str4 = str3;
                    for (int i11 = 0; i11 < split2.length - 1; i11++) {
                        String e10 = javaCode.e(co.f84383c + i11);
                        while (e10.startsWith(" ")) {
                            if (i11 == 0) {
                                str4 = str4 + " ";
                            }
                            e10 = e10.substring(1);
                        }
                        b("L:" + e10);
                        str3 = i11 > 0 ? str3 + "\n" + e10 : str3 + e10;
                    }
                    b("From Java text:" + str3);
                    String str5 = split2[split2.length - 1];
                    b("Info L:" + str5);
                    int indexOf = str5.indexOf("^");
                    int lastIndexOf = str5.lastIndexOf("^");
                    b("Info start:" + indexOf + " end:" + lastIndexOf);
                    String substring = str3.substring(indexOf, lastIndexOf + 1 + (originalOP.length() - op.length()));
                    b("Middle Text:" + substring);
                    String str6 = "StringOperations." + method + "(" + substring.replace(originalOP, ", ") + ")";
                    b("New Middle Text:" + str6);
                    String replace = str3.replace(substring, str6);
                    for (int i12 = 0; i12 < split2.length - 1; i12++) {
                        javaCode.h(co.f84383c + i12, "");
                    }
                    javaCode.h(co.f84383c, str4 + replace);
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean j(C13950c javaCode, d8.e co, String op, String testOP, String method, String originalOP) {
        int i10;
        b("The error info:" + co.f84382b);
        b("The error text:" + co.f84381a);
        String[] split = co.f84382b.replace("The operator " + testOP + " is undefined for the argument type(s) ", "").split(DocLint.SEPARATOR);
        if (split != null && split.length > 0) {
            for (int i11 = 0; i11 < split.length; i11++) {
                for (String str = split[i11]; str.contains(" "); str = str.replace(" ", "")) {
                }
            }
            String str2 = split[0];
            if (str2.equals(SerializableShaderEntry.f81157k) || str2.equals("java.lang.String")) {
                b("String Class found ");
                b("the error line:");
                String[] split2 = co.f84381a.split("\n");
                if (split2.length >= 2) {
                    String str3 = "";
                    String str4 = str3;
                    for (int i12 = 0; i12 < split2.length - 1; i12++) {
                        String e10 = javaCode.e(co.f84383c + i12);
                        while (e10.startsWith(" ")) {
                            if (i12 == 0) {
                                str4 = str4 + " ";
                            }
                            e10 = e10.substring(1);
                        }
                        b("L:" + e10);
                        str3 = i12 > 0 ? str3 + "\n" + e10 : str3 + e10;
                    }
                    b("From Java text:" + str3);
                    String str5 = split2[split2.length - 1];
                    b("Info L:" + str5);
                    int indexOf = str5.indexOf("^");
                    int i13 = indexOf;
                    while (true) {
                        i10 = i13 + 1;
                        if (str5.length() <= i10 || str5.charAt(i10) != '^') {
                            break;
                        }
                        i13 = i10;
                    }
                    b("Info start:" + indexOf + " end:" + i13);
                    String substring = str3.substring(indexOf, i10 + (originalOP.length() - op.length()));
                    b("Middle Text:" + substring);
                    String str6 = "StringOperations." + method + "(" + substring.replace(originalOP, "") + ")";
                    b("New Middle Text:" + str6);
                    String replace = str3.replace(substring, str6);
                    for (int i14 = 0; i14 < split2.length - 1; i14++) {
                        javaCode.h(co.f84383c + i14, "");
                    }
                    javaCode.h(co.f84383c, str4 + replace);
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean k(C13950c javaCode, InterfaceC13948a jpcListener, String TEST_EQUALS, String originalCode, String cop, String method) {
        boolean z10 = false;
        if (javaCode.d().contains(cop)) {
            List<d8.e> a10 = jpcListener.a(javaCode.d().replace(cop, TEST_EQUALS));
            javaCode.i(originalCode);
            for (d8.e eVar : a10) {
                if (!this.f96197b.contains(Integer.valueOf(eVar.f84383c))) {
                    b("COMPILE OUTPUT " + eVar.h());
                    String str = eVar.f84382b;
                    if (str != null) {
                        if (str.startsWith("The operator " + TEST_EQUALS + " is undefined for the argument type(s) ") && e(javaCode, eVar, TEST_EQUALS, method, cop)) {
                            this.f96197b.add(Integer.valueOf(eVar.f84383c));
                            z10 = true;
                        }
                    }
                }
            }
        }
        return z10;
    }

    public final boolean l(C13950c javaCode, InterfaceC13948a jpcListener, String TEST_EQUALS, String originalCode, String cop, String method) {
        boolean z10 = false;
        if (javaCode.d().contains(cop)) {
            List<d8.e> a10 = jpcListener.a(javaCode.d().replace(cop, TEST_EQUALS));
            javaCode.i(originalCode);
            for (d8.e eVar : a10) {
                if (!this.f96197b.contains(Integer.valueOf(eVar.f84383c))) {
                    b("COMPILE OUTPUT " + eVar.h());
                    String str = eVar.f84382b;
                    if (str != null) {
                        if (str.startsWith("The operator " + TEST_EQUALS + " is undefined for the argument type(s) ") && i(javaCode, eVar, TEST_EQUALS, method, cop)) {
                            this.f96197b.add(Integer.valueOf(eVar.f84383c));
                            z10 = true;
                        }
                    }
                }
            }
        }
        return z10;
    }

    public final boolean m(C13950c javaCode, InterfaceC13948a jpcListener, String REPLACE, String TEST_EQUALS, String originalCode, String cop, String method) {
        String replace = javaCode.d().replace(cop, REPLACE);
        List<d8.e> a10 = jpcListener.a(replace);
        b("Compiling:\n" + replace);
        javaCode.i(originalCode);
        boolean z10 = false;
        for (d8.e eVar : a10) {
            if (!this.f96197b.contains(Integer.valueOf(eVar.f84383c))) {
                b("COMPILE OUTPUT " + eVar.h());
                String str = eVar.f84382b;
                if (str != null) {
                    if (str.startsWith("The operator " + TEST_EQUALS + " is undefined for the argument type(s) ") && j(javaCode, eVar, REPLACE, TEST_EQUALS, method, cop)) {
                        this.f96197b.add(Integer.valueOf(eVar.f84383c));
                        z10 = true;
                    }
                }
            }
        }
        return z10;
    }

    public final boolean n(C13950c javaCode, d8.e co, InterfaceC13948a jpcListener) {
        if (!co.f84382b.startsWith("The operator / is undefined for the argument type(s) String")) {
            if (!co.f84382b.startsWith("The operator / is undefined for the argument type(s) java.lang.String")) {
                if (!co.f84382b.startsWith("The operator * is undefined for the argument type(s) String")) {
                    if (!co.f84382b.startsWith("The operator * is undefined for the argument type(s) java.lang.String")) {
                        if (!co.f84382b.startsWith("The operator - is undefined for the argument type(s) String")) {
                            if (!co.f84382b.startsWith("The operator - is undefined for the argument type(s) java.lang.String")) {
                                if (!co.f84382b.startsWith("The operator " + j.f121589a + " is undefined for the argument type(s) String")) {
                                    if (!co.f84382b.startsWith("The operator " + j.f121589a + " is undefined for the argument type(s) java.lang.String")) {
                                        if (!co.f84382b.startsWith("The operator ! is undefined for the argument type(s) String")) {
                                            if (!co.f84382b.startsWith("The operator ! is undefined for the argument type(s) java.lang.String")) {
                                                return false;
                                            }
                                        }
                                        return g(javaCode, co, "!", "toLower");
                                    }
                                }
                                return h(javaCode, co, j.f121589a, "modulus");
                            }
                        }
                        return h(javaCode, co, "-", Telephony.BaseMmsColumns.SUBJECT);
                    }
                }
                return h(javaCode, co, "*", "mul");
            }
        }
        return h(javaCode, co, "/", "div");
    }
}
