package ab;

import JAVARuntime.Texture;
import java.io.File;
import ub.g;
import ub.p;
import yb.C16165b;

public class d {

    public enum a {
        NM,
        AO
    }

    public static p a(Texture original, Texture attached, a type) {
        return c(original != null ? original.instance : null, attached != null ? attached.instance : null, type);
    }

    public static p b(g fileTexture, String format) {
        String str = Tc.b.O(fileTexture.getFile()) + format;
        if (str.startsWith("@@ASSET@@")) {
            return null;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/" + str);
        if (file.exists()) {
            return C16165b.x(str);
        }
        if (!file.exists()) {
            c.l(fileTexture, str, fileTexture.u0().b());
        }
        if (file.exists()) {
            return C16165b.x(str);
        }
        return null;
    }

    public static p c(p original, p attached, a type) {
        if (attached != null) {
            return attached;
        }
        if (original != null && (original instanceof g)) {
            g gVar = (g) original;
            if (gVar.u0().H() && type.ordinal() == 0) {
                return b(gVar, ".nm");
            }
        }
        return null;
    }

    public static p d(Texture attached, Texture builded) {
        p pVar;
        p pVar2;
        if (builded != null && (pVar2 = builded.instance) != null) {
            return pVar2;
        }
        if (attached == null || (pVar = attached.instance) == null) {
            return null;
        }
        return pVar;
    }
}
