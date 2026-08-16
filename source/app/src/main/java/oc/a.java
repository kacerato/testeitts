package Oc;

import N7.c;
import Xg.o;
import Xg.u;
import Xg.x;
import android.content.res.AssetManager;
import android.util.Log;
import bd.C3867a;
import c8.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

@Deprecated
public class a {
    @Deprecated
    public o a(String file) {
        InputStream open;
        try {
            if (file == null) {
                c("Obj import error: context null");
                return null;
            }
            AssetManager assets = c.t().getAssets();
            if (assets == null || (open = assets.open(file.replace("@@ASSET@@", ""))) == null) {
                return null;
            }
            return x.p(x.d(u.c(new InputStreamReader(open))));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Deprecated
    public o b(String file) {
        o oVar;
        try {
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.R().contains("@@ASSET@@")) {
            return a((com.itsmagic.engine.Core.Components.ProjectController.a.R().replace("@@ASSET@@", "") + "/" + file).substring(1));
        }
        File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + file);
        FileInputStream fileInputStream = file2.exists() ? new FileInputStream(file2) : null;
        InputStreamReader inputStreamReader = fileInputStream != null ? new InputStreamReader(fileInputStream) : null;
        if (inputStreamReader != null) {
            try {
                oVar = x.p(x.d(u.c(inputStreamReader)));
            } catch (Error | Exception e12) {
                e12.printStackTrace();
                oVar = null;
            }
            if (oVar != null && oVar.getNumFaces() == 0) {
                b bVar = W7.b.f27303c;
                if (b.l()) {
                    W7.b.f27308h.c(c.t(), file.toString(), new C3867a("Invalid .obj model does not contain any vertex, triangle, or any other information. If this file was exported by Prisma3D application, it has an export error that has no connection with ITsMagic, you need to research about this Prisma3D export bug and solve it.", "Modelo .obj invalido, n\u00e3o contem nenhum vertice, triangulo, ou qualquer outra informa\u00e7\u00e3o. Se esse arquivo foi exportado pelo aplicativo Prisma3D, o mesmo possui um erro de exporta\u00e7\u00e3o que n\u00e3o tem liga\u00e7\u00e3o com a ITsMagic, voc\u00ea precisa pesquisar sobre esse bug de exporta\u00e7\u00e3o do Prisma3D e resolver.").toString());
                }
            }
            return oVar;
        }
        return null;
    }

    @Deprecated
    public final void c(String message) {
        Log.d("ObjImporter", message);
    }
}
