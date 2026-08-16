package com.android.tools.r8.shaking;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.InputDependencyGraphConsumer;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.shaking.C11350o3;
import com.android.tools.r8.shaking.C11434t3;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.nio.file.Path;
import java.util.Iterator;
import java.util.List;

public class C11384q3 {

    public static final AbstractC7552hC f57715f = AbstractC7552hC.a("protomapping", TypedValues.AttributesType.S_TARGET, "maximuminlinedcodelength");

    public static final AbstractC7552hC f57716g = AbstractC7552hC.a("runtype", "laststageoutput");

    public static final AbstractC7552hC f57717h = AbstractC7552hC.a("forceprocessing", "dontpreverify", "experimentalshrinkunusedprotofields", "filterlibraryjarswithorginalprogramjars", "dontskipnonpubliclibraryclasses", "dontskipnonpubliclibraryclassmembers", "invokebasemethod", "overloadaggressively", "mergeinterfacesaggressively", "android", "allowruntypeandignoreoptimizationpasses", "dontshrinkduringoptimization", "convert_proto_enum_to_string", "adaptkotlinmetadata", "verbose");

    public static final AbstractC7552hC f57718i = AbstractC7552hC.a("isclassnamestring", "whyarenotsimple");

    public static final C5920Sm0 f57719j = new C5920Sm0("outjars");

    public static final C5920Sm0 f57720k = new C5920Sm0("dump");

    public static final C5920Sm0 f57721l = new C5920Sm0("useuniqueclassmembernames");

    public static final AbstractC7552hC f57722m = AbstractC7552hC.a("assumenoexternalsideeffects", "assumenoescapingparameters", "assumenoexternalreturnvalues");

    public static final C5920Sm0 f57723n = new C5920Sm0("skipnonpubliclibraryclasses");

    public final C11350o3.a f57724a;

    public final C4724u1 f57725b;

    public final C11434t3 f57726c;

    public final C5094Ef0 f57727d;

    public final InputDependencyGraphConsumer f57728e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C11384q3(C4724u1 c4724u1, C5094Ef0 c5094Ef0) {
        this(c4724u1, c5094Ef0, r0.a(false).b(false).c(false).d(false).a());
        C11434t3.a a10 = C11434t3.a();
        a10.f57852a = false;
    }

    public C11350o3 a() {
        c();
        return this.f57724a.a();
    }

    public C11350o3 b() {
        c();
        return this.f57724a.b();
    }

    public final void c() {
        C11350o3.a aVar = this.f57724a;
        if (aVar.f57628E && aVar.f57649j) {
            C5094Ef0 c5094Ef0 = this.f57727d;
            C11350o3.a aVar2 = this.f57724a;
            c5094Ef0.a(null, new StringDiagnostic("-keepparameternames is not supported", aVar2.f57629F, aVar2.f57630G));
            throw c5094Ef0.f39969c;
        }
        if (aVar.f57636M) {
            if (aVar.f57649j) {
                C5094Ef0 c5094Ef02 = this.f57727d;
                StringDiagnostic stringDiagnostic = new StringDiagnostic("Build is not being obfuscated due to the use of -addconfigurationdebugging");
                synchronized (c5094Ef02) {
                    c5094Ef02.a(DiagnosticsLevel.INFO, stringDiagnostic);
                }
                this.f57724a.c();
            }
            if (this.f57724a.f57657r != null) {
                this.f57727d.info(new StringDiagnostic("Applying the obfuscation map (-applymapping) is disabled due to the use of -addconfigurationdebugging"));
                this.f57724a.f57657r = null;
            }
        }
    }

    public static class a {

        public final String f57729a;

        public final List f57730b;

        public a(String str, List<AbstractC11401r4> list) {
            this.f57729a = str;
            this.f57730b = list;
        }

        public static a a(String str) {
            int i10 = AbstractC7552hC.f48487c;
            return new a(str, C6190Xe0.f45779e);
        }

        public final boolean b() {
            if (!this.f57729a.contains("<") && !this.f57729a.contains(">")) {
                return false;
            }
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < this.f57729a.length(); i12++) {
                char charAt = this.f57729a.charAt(i12);
                if (charAt == '<') {
                    i10++;
                }
                if (charAt == '>') {
                    i11++;
                }
            }
            return (i10 == i11 && i10 == this.f57730b.size()) ? false : true;
        }

        public final boolean a() {
            return !this.f57730b.isEmpty() && this.f57730b.stream().anyMatch(new C11441ta());
        }
    }

    public void a(Path path) {
        C11518y3 c11518y3 = new C11518y3(path);
        int i10 = AbstractC7552hC.f48487c;
        a(new C5920Sm0(c11518y3));
    }

    public void a(InterfaceC11485w3 interfaceC11485w3) {
        int i10 = AbstractC7552hC.f48487c;
        a(new C5920Sm0(interfaceC11485w3));
    }

    public C11384q3(C4724u1 c4724u1, C5094Ef0 c5094Ef0, C11434t3 c11434t3) {
        this(c4724u1, c5094Ef0, c11434t3, null);
    }

    public final void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            InterfaceC11485w3 interfaceC11485w3 = (InterfaceC11485w3) it.next();
            try {
                new C11417s3(this, interfaceC11485w3).j();
            } catch (C11233h4 e10) {
                this.f57727d.error(e10);
            } catch (IOException e11) {
                this.f57727d.error(new StringDiagnostic("Failed to read file: " + e11.getMessage(), interfaceC11485w3.getOrigin()));
            }
        }
        this.f57727d.a();
    }

    public C11384q3(C4724u1 c4724u1, C5094Ef0 c5094Ef0, C11434t3 c11434t3, InputDependencyGraphConsumer inputDependencyGraphConsumer) {
        this.f57724a = C11350o3.a(c4724u1, c5094Ef0);
        this.f57725b = c4724u1;
        this.f57726c = c11434t3;
        this.f57727d = c5094Ef0;
        this.f57728e = inputDependencyGraphConsumer == null ? new C11367p3() : inputDependencyGraphConsumer;
    }
}
