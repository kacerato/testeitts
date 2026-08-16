package i8;

import com.bumptech.glide.load.engine.GlideException;
import j8.C13812b;
import j8.InterfaceC13811a;
import k8.C13950c;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;

public class C13590a extends C13812b {
    @Override
    public boolean a(C13950c javaCode, InterfaceC13811a jpcListener) {
        boolean z10;
        if (d(javaCode)) {
            b("Package removed");
            z10 = true;
        } else {
            z10 = false;
        }
        if (!c(javaCode)) {
            String str = ExternalAnnotationProvider.CLASS_PREFIX + javaCode.c() + " extends Component {\n";
            for (int i10 = 0; i10 < javaCode.f(); i10++) {
                String e10 = javaCode.e(i10);
                if (i10 > 0) {
                    str = str + "\n";
                }
                str = str + Sm.b.f23785c + e10;
            }
            javaCode.i(str + "\n}");
            b("setted class");
            z10 = true;
        }
        if (e(javaCode)) {
            return true;
        }
        return z10;
    }

    public final boolean c(C13950c code) {
        String c10 = code.c();
        for (int i10 = 0; i10 < code.f(); i10++) {
            String replace = code.e(i10).trim().replace(GlideException.a.f59088e, " ");
            if (replace.contains(ExternalAnnotationProvider.CLASS_PREFIX + c10 + "")) {
                return true;
            }
            if (replace.contains("interface " + c10 + "")) {
                return true;
            }
            if (replace.contains("enum " + c10 + "")) {
                return true;
            }
        }
        return false;
    }

    public final boolean d(C13950c code) {
        code.c();
        for (int i10 = 0; i10 < code.f(); i10++) {
            if (code.e(i10).trim().replace(GlideException.a.f59088e, " ").contains("package JAVARuntime;")) {
                code.h(i10, "");
                return true;
            }
        }
        return false;
    }

    public final boolean e(C13950c code) {
        String c10 = code.c();
        for (int i10 = 0; i10 < code.f(); i10++) {
            String replaceAll = code.e(i10).trim().replaceAll("\\s+", " ");
            if (!replaceAll.contains("public class " + c10 + "")) {
                if (!replaceAll.contains("public interface " + c10 + "")) {
                    if (!replaceAll.contains("public enum " + c10 + "")) {
                        if (!replaceAll.contains("public abstract class " + c10 + "")) {
                            if (!replaceAll.contains("public final class " + c10 + "")) {
                            }
                        }
                    }
                }
            }
            code.h(i10, replaceAll.replace("public class " + c10 + "", ExternalAnnotationProvider.CLASS_PREFIX + c10 + "").replace("public abstract class " + c10 + "", "abstract class " + c10 + "").replace("public final class " + c10 + "", "final class " + c10 + "").replace("public interface " + c10 + "", "interface " + c10 + "").replace("public enum " + c10 + "", "enum " + c10 + ""));
            return true;
        }
        return false;
    }
}
