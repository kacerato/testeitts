package l8;

import d8.j;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.List;
import k8.C13950c;
import k8.InterfaceC13948a;

public class C14059c extends i {

    public static final String f96193b = "jpcTestMethod189468498484";

    public static final String f96194c = "jpcTestMethod189468498484()";

    @Override
    public boolean a(C13950c javaCode, List<d8.e> compillerOutputs, InterfaceC13948a jpcListener) {
        HashSet hashSet = new HashSet();
        boolean z10 = false;
        for (int i10 = 0; i10 < compillerOutputs.size(); i10++) {
            d8.e eVar = compillerOutputs.get(i10);
            if (eVar.f84382b != null && eVar.f84381a != null && !hashSet.contains(Integer.valueOf(eVar.f84383c))) {
                try {
                    if (c(javaCode, eVar, jpcListener)) {
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

    public final boolean c(C13950c javaCode, d8.e co, InterfaceC13948a jpcListener) {
        Method[] methods;
        String e10;
        if (co.f84382b.contains("The method ") && co.f84382b.contains(" is undefined for the type ")) {
            b("The error info:" + co.f84382b);
            b("The error text:" + co.f84381a);
            String str = co.f84382b;
            String trim = str.substring(11, str.indexOf(" is undefined for the type")).trim();
            String substring = trim.substring(0, trim.indexOf("("));
            String str2 = co.f84382b;
            String trim2 = str2.substring(str2.indexOf(" is undefined for the type ") + 27).trim();
            for (int i10 = 0; i10 < j.k0(); i10++) {
                e8.c j02 = j.j0(i10);
                if (j02.d().equals(trim2) && (methods = j02.a().getMethods()) != null) {
                    for (Method method : methods) {
                        if (method.getName().equalsIgnoreCase(substring) && !method.getName().equals(substring) && (e10 = javaCode.e(co.f84383c)) != null) {
                            C13950c clone = javaCode.clone();
                            clone.h(co.f84383c, e10.replace(substring, method.getName()));
                            javaCode.i(clone.d());
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }
}
