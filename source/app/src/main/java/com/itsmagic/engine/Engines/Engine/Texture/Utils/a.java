package com.itsmagic.engine.Engines.Engine.Texture.Utils;

import Ic.C2633l;
import N7.c;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.b;
import id.C13696a;
import java.io.File;

public class a {
    public static void a(b.d state) {
        if (state.f79822c) {
            Context t10 = c.t();
            String o10 = Tc.b.o(W7.b.f27306f.f2458a.g(t10) + "/textures/" + state.f79823d.replace("@@ASSET@@", ""));
            File file = new File(Tc.b.u(o10));
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(o10);
            String replace = state.f79820a.replace("@@ASSET@@", "");
            if (!replace.startsWith("/")) {
                replace = "/" + replace;
            }
            if (file2.exists() || C13696a.c(t10, replace, file2)) {
                state.f79822c = false;
                state.f79820a = o10;
                String str = state.f79821b;
                if (str == null || str.isEmpty()) {
                    return;
                }
                String str2 = Tc.b.O(o10) + C2633l.f9169o;
                File file3 = new File(str2);
                File file4 = new File(Tc.b.u(str2));
                if (!file4.exists()) {
                    file4.mkdirs();
                }
                String replace2 = state.f79821b.replace("@@ASSET@@", "");
                if (!replace2.startsWith("/")) {
                    replace2 = "/" + replace2;
                }
                if (file3.exists() || C13696a.c(t10, replace2, file3)) {
                    state.f79821b = str2;
                } else {
                    state.f79821b = null;
                }
            }
        }
    }
}
