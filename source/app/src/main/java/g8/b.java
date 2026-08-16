package g8;

import JAVARuntime.Terminal;
import android.util.Log;
import b3.s;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.j;
import h8.InterfaceC13434a;
import r8.C15153a;
import t3.C15377a;

public class b {

    public static boolean f88173a = false;

    public static boolean f88174b = false;

    public static String f88175c;

    public class a implements InterfaceC13434a {
    }

    static {
        if (C15377a.f109719g.booleanValue()) {
            f88173a = false;
            f88174b = false;
        }
        f88175c = "PosCompiler";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(JavaMetaInfo javaMetaInfo, int compileLoop, C15153a totalCode) {
        SteppedArrayList steppedArrayList;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("PosCompilling (loops:");
        sb2.append(compileLoop);
        sb2.append(") (file:");
        sb2.append(javaMetaInfo != null ? javaMetaInfo.g() : "");
        sb2.append(")");
        b(sb2.toString());
        try {
            K8.a.l().e();
            steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C13300a());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (steppedArrayList.isEmpty()) {
            return false;
        }
        if ((javaMetaInfo == null || !j.D0(javaMetaInfo)) && totalCode.e() != null && !totalCode.e().trim().isEmpty()) {
            boolean z10 = false;
            for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                h8.b bVar = (h8.b) steppedArrayList.get(i10);
                if (javaMetaInfo != null && j.D0(javaMetaInfo)) {
                    return false;
                }
                if (bVar.a(totalCode, new a())) {
                    z10 = true;
                }
                if (javaMetaInfo != null && j.D0(javaMetaInfo)) {
                    return false;
                }
            }
            return z10;
        }
        return false;
    }

    public static void b(String message) {
        if (f88173a) {
            if (!f88174b) {
                Log.d(f88175c, message);
                return;
            }
            Terminal.log(f88175c + s.f32937c + message);
        }
    }

    public static void c(JavaMetaInfo javaMetaInfo, C15153a totalCode) {
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
            z10 = a(javaMetaInfo, i10, totalCode);
            if (javaMetaInfo != null && j.D0(javaMetaInfo)) {
                return;
            }
            i10++;
        }
    }
}
