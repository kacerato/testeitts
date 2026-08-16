package l8;

import java.util.HashSet;
import java.util.List;
import k8.C13950c;
import k8.InterfaceC13948a;

public class C14058b extends i {

    public static final String f96192b = "INJECTEDMETHOD";

    @Override
    public boolean a(C13950c javaCode, List<d8.e> compillerOutputs, InterfaceC13948a jpcListener) {
        String d10 = javaCode.d();
        HashSet hashSet = new HashSet();
        boolean z10 = false;
        if (d10.contains(".getObject()")) {
            String replace = d10.replace(".getObject()", ".INJECTEDMETHOD()");
            List<d8.e> a10 = jpcListener.a(replace);
            b("Compiling:\n" + replace);
            javaCode.i(d10);
            for (d8.e eVar : a10) {
                if (!hashSet.contains(Integer.valueOf(eVar.f84383c)) && eVar.f84382b.equals("The method INJECTEDMETHOD() is undefined for the type LaserHit")) {
                    String replaceAll = javaCode.e(eVar.f84383c).replaceAll(" +", " ");
                    if (replaceAll.contains(".getObject() != null")) {
                        javaCode.h(eVar.f84383c, replaceAll.replace(".getObject() != null", " != null"));
                        hashSet.add(Integer.valueOf(eVar.f84383c));
                    } else if (replaceAll.contains(".getObject() == null")) {
                        javaCode.h(eVar.f84383c, replaceAll.replace(".getObject() == null", " == null"));
                        hashSet.add(Integer.valueOf(eVar.f84383c));
                    }
                    z10 = true;
                }
            }
        }
        return z10;
    }
}
