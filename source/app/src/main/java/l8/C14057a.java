package l8;

import JAVARuntime.AddAddOperator;
import JAVARuntime.DivEqualOperator;
import JAVARuntime.DivOperator;
import JAVARuntime.EqualsComparator;
import JAVARuntime.GreaterThanComparator;
import JAVARuntime.LessThanComparator;
import JAVARuntime.ModEqualOperator;
import JAVARuntime.ModOperator;
import JAVARuntime.MulEqualOperator;
import JAVARuntime.MulOperator;
import JAVARuntime.RemoveRemoveOperator;
import JAVARuntime.SubEqualOperator;
import JAVARuntime.SubOperator;
import JAVARuntime.SumEqualOperator;
import JAVARuntime.SumOperator;
import android.provider.Telephony;
import d8.k;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import k8.C13950c;
import k8.InterfaceC13948a;
import org.openjdk.tools.doclint.DocLint;
import ve.j;

public class C14057a extends i {

    public final Set<Integer> f96191b = new HashSet();

    @Override
    public boolean a(C13950c javaCode, List<d8.e> compillerOutputs, InterfaceC13948a jpcListener) {
        boolean z10 = true;
        boolean z11 = false;
        boolean z12 = true;
        while (true) {
            if (!z11 && !z12) {
                break;
            }
            z11 = false;
            for (int i10 = 0; i10 < compillerOutputs.size(); i10++) {
                d8.e eVar = compillerOutputs.get(i10);
                if (eVar.f84382b != null && eVar.f84381a != null && !this.f96191b.contains(Integer.valueOf(eVar.f84383c))) {
                    if (i(javaCode, eVar, "+", SumOperator.class, "sum")) {
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        z11 = true;
                    }
                    if (i(javaCode, eVar, "+=", SumEqualOperator.class, "sumEqual")) {
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        z11 = true;
                    }
                    if (i(javaCode, eVar, "*", MulOperator.class, "mul")) {
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        z11 = true;
                    }
                    if (i(javaCode, eVar, "*=", MulEqualOperator.class, "mulEqual")) {
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        z11 = true;
                    }
                    if (i(javaCode, eVar, "/", DivOperator.class, "div")) {
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        z11 = true;
                    }
                    if (i(javaCode, eVar, "/=", DivEqualOperator.class, "divEqual")) {
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        z11 = true;
                    }
                    if (i(javaCode, eVar, "-", SubOperator.class, Telephony.BaseMmsColumns.SUBJECT)) {
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        z11 = true;
                    }
                    if (i(javaCode, eVar, "-=", SubEqualOperator.class, "subEqual")) {
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        z11 = true;
                    }
                    if (i(javaCode, eVar, "++", AddAddOperator.class, "addAdd")) {
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        z11 = true;
                    }
                    if (i(javaCode, eVar, "--", RemoveRemoveOperator.class, "removeRemove")) {
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        z11 = true;
                    }
                    if (i(javaCode, eVar, j.f121589a, ModOperator.class, "mod")) {
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        z11 = true;
                    }
                    if (i(javaCode, eVar, "%=", ModEqualOperator.class, "modEqual")) {
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        z11 = true;
                    }
                }
            }
            if (z11) {
                compillerOutputs = jpcListener.a(javaCode.d());
                this.f96191b.clear();
            }
            z12 = false;
        }
        while (true) {
            if (!z11 && !z10) {
                return z11;
            }
            z11 = c(javaCode, jpcListener, compillerOutputs);
            z10 = false;
        }
    }

    public final boolean c(C13950c javaCode, InterfaceC13948a jpcListener, List<d8.e> compilerOutputs) {
        String d10 = javaCode.d();
        boolean h10 = h(javaCode, jpcListener, "&&", EqualsComparator.class, d10, ".=", "pointerEquals", compilerOutputs);
        if (g(javaCode, jpcListener, "&&", EqualsComparator.class, d10, "==", "equals", compilerOutputs)) {
            h10 = true;
        }
        if (g(javaCode, jpcListener, "&&", EqualsComparator.class, d10, "!=", "notEquals", compilerOutputs)) {
            h10 = true;
        }
        if (h(javaCode, jpcListener, "&&", GreaterThanComparator.class, d10, ">=", "greaterOrEqualsThan", compilerOutputs) || h(javaCode, jpcListener, "&&", GreaterThanComparator.class, d10, ">", "greaterThan", compilerOutputs)) {
            h10 = true;
        }
        if (h(javaCode, jpcListener, "&&", LessThanComparator.class, d10, "<=", "lessOrEqualsThan", compilerOutputs) || h(javaCode, jpcListener, "&&", LessThanComparator.class, d10, "<", "lessThan", compilerOutputs)) {
            return true;
        }
        return h10;
    }

    public final boolean d(C13950c javaCode, d8.e co, String op, Class opClass, String method, String originalOP) {
        int i10;
        b("The error info:" + co.f84382b);
        b("The error text:" + co.f84381a);
        String str = "";
        String[] split = co.f84382b.replace("The operator " + op + " is undefined for the argument type(s) ", "").split(DocLint.SEPARATOR);
        if (split != null && split.length > 0) {
            for (int i11 = 0; i11 < split.length; i11++) {
                for (String str2 = split[i11]; str2.contains(" "); str2 = str2.replace(" ", "")) {
                }
            }
            Class<?> u10 = k.u(split[0]);
            String str3 = split[1];
            if (str3 != null && !str3.isEmpty()) {
                while (str3.startsWith(" ")) {
                    str3 = str3.substring(1);
                }
                while (str3.endsWith(" ")) {
                    str3 = str3.substring(0, str3.length() - 1);
                }
            }
            if (u10 != null && (str3 == null || str3.isEmpty() || !str3.equals("null"))) {
                b("String Class found ");
                b("Class found " + u10.getName());
                if (opClass.isAssignableFrom(u10)) {
                    b("the error line:");
                    String[] split2 = co.f84381a.split("\n");
                    if (split2.length >= 2) {
                        String str4 = "";
                        for (int i12 = 0; i12 < split2.length - 1; i12++) {
                            String e10 = javaCode.e(co.f84383c + i12);
                            while (e10.startsWith(" ")) {
                                if (i12 == 0) {
                                    str4 = str4 + " ";
                                }
                                e10 = e10.substring(1);
                            }
                            b("L:" + e10);
                            str = i12 > 0 ? str + "\n" + e10 : str + e10;
                        }
                        b("From Java text:" + str);
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
                        String substring = str.substring(indexOf, i10);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Middle Text:");
                        sb2.append(substring);
                        b(sb2.toString());
                        int indexOf2 = substring.indexOf(originalOP);
                        String substring2 = substring.substring(0, indexOf2);
                        String substring3 = substring.substring(originalOP.length() + indexOf2);
                        b("Operator Index:" + indexOf2);
                        b("TextBefore:" + substring2);
                        b("TextAfter:" + substring3);
                        while (substring2.endsWith(" ")) {
                            substring2 = substring2.substring(0, substring2.length() - 1);
                        }
                        while (substring3.startsWith(" ")) {
                            substring3 = substring3.substring(1);
                        }
                        String str6 = substring2 + "." + method + "(" + substring3 + ")";
                        b("New middle text:" + str6);
                        String str7 = str.substring(0, indexOf) + str6 + str.substring(i10);
                        b("Processed line:" + str7);
                        javaCode.h(co.f84383c, str4 + str7);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean e(C13950c javaCode, d8.e co, String op, Class opClass, String method) {
        b("The error info:" + co.f84382b);
        b("The error text:" + co.f84381a);
        String str = "";
        String[] split = co.f84382b.replace("The operator " + op + " is undefined for the argument type(s) ", "").split(DocLint.SEPARATOR);
        if (split != null && split.length > 0) {
            for (int i10 = 0; i10 < split.length; i10++) {
                for (String str2 = split[i10]; str2.contains(" "); str2 = str2.replace(" ", "")) {
                }
            }
            Class<?> u10 = k.u(split[0]);
            if (u10 != null) {
                b("Class found " + u10.getName());
                if (opClass.isAssignableFrom(u10)) {
                    b("The class overides " + method + " operator");
                    b("the error line:");
                    String[] split2 = co.f84381a.split("\n");
                    if (split2.length >= 2) {
                        String str3 = "";
                        for (int i11 = 0; i11 < split2.length - 1; i11++) {
                            String e10 = javaCode.e(co.f84383c + i11);
                            while (e10.startsWith(" ")) {
                                if (i11 == 0) {
                                    str3 = str3 + " ";
                                }
                                e10 = e10.substring(1);
                            }
                            b("L:" + e10);
                            str = i11 > 0 ? str + "\n" + e10 : str + e10;
                        }
                        if (!co.f84381a.contains(str)) {
                            throw new RuntimeException("INCORRECT LINE NUMBER " + co.f84383c);
                        }
                        b("From Java text:" + str);
                        String str4 = split2[split2.length - 1];
                        b("Info L:" + str4);
                        int indexOf = str4.indexOf("^");
                        int lastIndexOf = str4.lastIndexOf("^");
                        b("Info start:" + indexOf + " end:" + lastIndexOf);
                        int i12 = lastIndexOf + 1;
                        String substring = str.substring(indexOf, i12);
                        b("Middle Text:" + substring);
                        int indexOf2 = substring.indexOf(op);
                        String substring2 = substring.substring(0, indexOf2);
                        String substring3 = substring.substring(op.length() + indexOf2);
                        b("Operator Index:" + indexOf2);
                        b("TextBefore:" + substring2);
                        b("TextAfter:" + substring3);
                        while (substring2.endsWith(" ")) {
                            substring2 = substring2.substring(0, substring2.length() - 1);
                        }
                        while (substring3.startsWith(" ")) {
                            substring3 = substring3.substring(1);
                        }
                        String str5 = substring2 + "." + method + "(" + substring3 + ")";
                        b("New middle text:" + str5);
                        String str6 = str.substring(0, indexOf) + str5 + str.substring(i12);
                        b("Processed line:" + str6);
                        javaCode.h(co.f84383c, str3 + str6);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean f(C13950c javaCode, d8.e co, String op, Class opClass, String method, String originalOP) {
        int i10;
        b("The error info:" + co.f84382b);
        b("The error text:" + co.f84381a);
        String str = "";
        String[] split = co.f84382b.replace("The operator " + op + " is undefined for the argument type(s) ", "").split(DocLint.SEPARATOR);
        if (split != null && split.length > 0) {
            for (int i11 = 0; i11 < split.length; i11++) {
                for (String str2 = split[i11]; str2.contains(" "); str2 = str2.replace(" ", "")) {
                }
            }
            Class<?> u10 = k.u(split[0]);
            if (u10 != null) {
                b("String Class found ");
                b("Class found " + u10.getName());
                if (opClass.isAssignableFrom(u10)) {
                    b("the error line:");
                    String[] split2 = co.f84381a.split("\n");
                    if (split2.length >= 2) {
                        String str3 = "";
                        for (int i12 = 0; i12 < split2.length - 1; i12++) {
                            String e10 = javaCode.e(co.f84383c + i12);
                            while (e10.startsWith(" ")) {
                                if (i12 == 0) {
                                    str3 = str3 + " ";
                                }
                                e10 = e10.substring(1);
                            }
                            b("L:" + e10);
                            str = i12 > 0 ? str + "\n" + e10 : str + e10;
                        }
                        b("From Java text:" + str);
                        if (str != null && !str.trim().isEmpty()) {
                            String str4 = split2[split2.length - 1];
                            b("Info L:" + str4);
                            int indexOf = str4.indexOf("^");
                            int i13 = indexOf;
                            while (true) {
                                i10 = i13 + 1;
                                if (str4.length() <= i10 || str4.charAt(i10) != '^') {
                                    break;
                                }
                                i13 = i10;
                            }
                            b("Info start:" + indexOf + " end:" + i13);
                            String substring = str.substring(indexOf, i10);
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Middle Text:");
                            sb2.append(substring);
                            b(sb2.toString());
                            int indexOf2 = substring.indexOf(originalOP);
                            if (indexOf2 >= 0) {
                                String substring2 = substring.substring(0, indexOf2);
                                String substring3 = substring.substring(originalOP.length() + indexOf2);
                                b("Operator Index:" + indexOf2);
                                b("TextBefore:" + substring2);
                                b("TextAfter:" + substring3);
                                while (substring2.endsWith(" ")) {
                                    substring2 = substring2.substring(0, substring2.length() - 1);
                                }
                                while (substring3.startsWith(" ")) {
                                    substring3 = substring3.substring(1);
                                }
                                String str5 = substring2 + "." + method + "(" + substring3 + ")";
                                b("New middle text:" + str5);
                                String str6 = str.substring(0, indexOf) + str5 + str.substring(i10);
                                b("Processed line:" + str6);
                                javaCode.h(co.f84383c, str3 + str6);
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final boolean g(C13950c javaCode, InterfaceC13948a jpcListener, String TEST_EQUALS, Class opClass, String originalCode, String cop, String method, List<d8.e> compilerOutputs) {
        if (!javaCode.d().contains(cop)) {
            return false;
        }
        String replace = javaCode.d().replace(cop, TEST_EQUALS);
        javaCode.i(originalCode);
        boolean z10 = false;
        for (d8.e eVar : compilerOutputs) {
            b("COMPILE OUTPUT " + eVar.h());
            String str = eVar.f84382b;
            if (str != null) {
                if (str.startsWith("The operator " + TEST_EQUALS + " is undefined for the argument type(s) ") && !this.f96191b.contains(Integer.valueOf(eVar.f84383c))) {
                    try {
                    } catch (StringIndexOutOfBoundsException e10) {
                        e = e10;
                    }
                    if (d(javaCode, eVar, TEST_EQUALS, opClass, method, cop)) {
                        z10 = true;
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        compilerOutputs.clear();
                        try {
                            try {
                                compilerOutputs.addAll(jpcListener.a(replace));
                            } catch (StringIndexOutOfBoundsException e11) {
                                e = e11;
                                e.printStackTrace();
                            }
                        } catch (StringIndexOutOfBoundsException e12) {
                            e = e12;
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
        return z10;
    }

    public final boolean h(C13950c javaCode, InterfaceC13948a jpcListener, String TEST_EQUALS, Class opClass, String originalCode, String cop, String method, List<d8.e> compilerOutputs) {
        if (!javaCode.d().contains(cop)) {
            return false;
        }
        String replace = javaCode.d().replace(cop, TEST_EQUALS);
        javaCode.i(originalCode);
        boolean z10 = false;
        for (d8.e eVar : compilerOutputs) {
            b("COMPILE OUTPUT " + eVar.h());
            String str = eVar.f84382b;
            if (str != null) {
                if (str.startsWith("The operator " + TEST_EQUALS + " is undefined for the argument type(s) ") && !this.f96191b.contains(Integer.valueOf(eVar.f84383c))) {
                    try {
                    } catch (StringIndexOutOfBoundsException e10) {
                        e = e10;
                    }
                    if (f(javaCode, eVar, TEST_EQUALS, opClass, method, cop)) {
                        z10 = true;
                        this.f96191b.add(Integer.valueOf(eVar.f84383c));
                        compilerOutputs.clear();
                        try {
                            try {
                                compilerOutputs.addAll(jpcListener.a(replace));
                            } catch (StringIndexOutOfBoundsException e11) {
                                e = e11;
                                e.printStackTrace();
                            }
                        } catch (StringIndexOutOfBoundsException e12) {
                            e = e12;
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
        return z10;
    }

    public final boolean i(C13950c javaCode, d8.e co, String op, Class opClass, String method) {
        if (!co.f84382b.startsWith("The operator " + op + " is undefined for the argument type(s) ")) {
            return false;
        }
        try {
            return e(javaCode, co, op, opClass, method);
        } catch (Error | Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
