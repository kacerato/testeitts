package l8;

import java.util.List;
import k8.C13950c;
import k8.InterfaceC13948a;

public class C14060d extends i {
    private boolean c(C13950c javaCode, d8.e co, InterfaceC13948a jpcListener) {
        if (!co.f84382b.contains("reduce the visibility of the ")) {
            return false;
        }
        b("The error info:" + co.f84382b);
        b("The error text:" + co.f84381a);
        String e10 = javaCode.e(co.f84383c);
        javaCode.h(co.f84383c, "public " + e10);
        return true;
    }

    @Override
    public boolean a(C13950c javaCode, List<d8.e> compillerOutputs, InterfaceC13948a jpcListener) {
        boolean z10 = false;
        for (int i10 = 0; i10 < compillerOutputs.size(); i10++) {
            d8.e eVar = compillerOutputs.get(i10);
            if (eVar.f84382b != null && eVar.f84381a != null) {
                try {
                    if (c(javaCode, eVar, jpcListener)) {
                        z10 = true;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return z10;
    }
}
