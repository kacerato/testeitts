package com.android.tools.r8.internal;

import com.android.tools.r8.Version;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.references.MethodReference;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;

public class HE {

    public final Set f40716a;

    public boolean f40717b = AbstractC9824ur0.a("com.android.tools.r8.instrumentation.executedclassesandmethods");

    public final String f40718c;

    public String f40719d;

    public HE(C8570nJ c8570nJ) {
        this.f40716a = Collections.EMPTY_SET;
        this.f40718c = Version.isDevelopmentVersion() ? System.getProperty("com.android.tools.r8.instrumentation.syntheticservercontext") : null;
        this.f40719d = Version.isDevelopmentVersion() ? System.getProperty("com.android.tools.r8.instrumentation.tag") : null;
        String property = Version.isDevelopmentVersion() ? System.getProperty("com.android.tools.r8.instrumentation.callsites") : null;
        if (property == null) {
            return;
        }
        C4724u1 m10 = c8570nJ.m();
        int i10 = QC.f43505c;
        IC ic2 = new IC();
        C5111En0 c5111En0 = new C5111En0(new C10647zn0(new C5776Qb(':')));
        Iterator a10 = c5111En0.f40021c.a(c5111En0, property);
        while (true) {
            AbstractC4995Cn0 abstractC4995Cn0 = (AbstractC4995Cn0) a10;
            if (!abstractC4995Cn0.hasNext()) {
                this.f40716a = ic2.a();
                return;
            }
            String str = (String) abstractC4995Cn0.next();
            Comparator comparator = C7598hX.f48572a;
            int indexOf = str.indexOf("->");
            MethodReference a11 = indexOf >= 0 ? C7598hX.a(indexOf, str) : null;
            if (a11 == null) {
                throw new IllegalArgumentException(str);
            }
            ic2.a(C7598hX.a(a11, m10));
        }
    }

    public HE a() {
        this.f40717b = true;
        return this;
    }

    public HE a(String str) {
        this.f40719d = str;
        return this;
    }
}
