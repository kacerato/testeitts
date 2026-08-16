package i8;

import JAVARuntime.Terminal;
import android.util.Log;
import b3.s;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.j;
import j8.C13812b;
import j8.InterfaceC13811a;
import k8.C13950c;
import t3.C15377a;

public class C13591b {

    public static boolean f91590a = false;

    public static boolean f91591b = false;

    public static String f91592c;

    public class a implements InterfaceC13811a {
    }

    static {
        if (C15377a.f109719g.booleanValue()) {
            f91590a = false;
            f91591b = false;
        }
        f91592c = "JPreCompiller";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(JavaMetaInfo javaMetaInfo, int compileLoop, C13950c javaCode) {
        b("Precompilling (loops:" + compileLoop + ") (file:" + javaMetaInfo.g() + ")");
        try {
            K8.a.l().e();
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C13590a());
            if (!steppedArrayList.isEmpty() && !j.D0(javaMetaInfo) && javaCode.d() != null && !javaCode.d().trim().isEmpty()) {
                boolean z10 = false;
                for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                    C13812b c13812b = (C13812b) steppedArrayList.get(i10);
                    if (j.D0(javaMetaInfo)) {
                        return false;
                    }
                    if (c13812b.a(javaCode, new a())) {
                        z10 = true;
                    }
                    if (j.D0(javaMetaInfo)) {
                        return false;
                    }
                }
                return z10;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public static void b(String message) {
        if (f91590a) {
            if (!f91591b) {
                Log.d(f91592c, message);
                return;
            }
            Terminal.log(f91592c + s.f32937c + message);
        }
    }

    public static void c(JavaMetaInfo javaMetaInfo, C13950c javaCode) {
        boolean z10 = true;
        int i10 = 0;
        while (z10) {
            if (javaMetaInfo != null) {
                try {
                    if (j.D0(javaMetaInfo)) {
                        return;
                    }
                } catch (Error e10) {
                    e = e10;
                    e.printStackTrace();
                    z10 = false;
                    i10++;
                } catch (Exception e11) {
                    e = e11;
                    e.printStackTrace();
                    z10 = false;
                    i10++;
                }
            }
            z10 = a(javaMetaInfo, i10, javaCode);
            if (javaMetaInfo != null && j.D0(javaMetaInfo)) {
                return;
            }
            i10++;
        }
    }
}
