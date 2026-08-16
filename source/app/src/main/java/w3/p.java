package w3;

import Ic.C2636o;
import android.content.Context;
import id.C13696a;
import java.io.File;
import t3.C15377a;

public final class p {
    public static String a() {
        Context t10 = N7.c.t();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("app:");
        C8.a aVar = W7.b.f27306f;
        sb2.append(aVar.b(t10));
        sb2.append("|vc:");
        sb2.append(aVar.c(t10));
        sb2.append("|fl:");
        sb2.append(C15377a.f109716d);
        sb2.append("|pkg:");
        sb2.append(C15377a.f109714b);
        return sb2.toString();
    }

    public static boolean b(File vulkanFolder) {
        File file = new File(vulkanFolder, "av.bin");
        String a10 = a();
        if (vulkanFolder.exists()) {
            if (file.exists()) {
                if (!a10.equals(C2636o.g(file)) && !C13696a.g(vulkanFolder)) {
                    return false;
                }
            } else if (!C13696a.g(vulkanFolder)) {
                return false;
            }
        }
        C2636o.e(a10, file);
        return true;
    }
}
