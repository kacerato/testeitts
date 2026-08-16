package Wg;

import Xg.o;
import Xg.p;
import Xg.u;
import Xg.w;
import Xg.x;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.MeshSerializer;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.VertexData;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Map;

@Deprecated
public class b {

    public static final Object f27771a = new Object();

    public static final String f27772b = "vertex_total";

    public static void a(String folder, String matName) {
        X7.a.g(folder, matName + ".mat", new Material().Z(), false);
    }

    public static void b(String folder, String matName, String texture) {
        Material material = new Material();
        material.o0();
        material.i0("Albedo", texture);
        X7.a.g(folder, matName + ".mat", material.Z(), false);
    }

    public static void c(String folder, String matName, String texture, ColorINT diffuseColor) {
        Material material = new Material();
        if (diffuseColor != null) {
            try {
                material.b0(SerializableShaderEntry.f81153g, diffuseColor);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        try {
            material.i0("Albedo", texture);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        X7.a.g(folder, matName + ".mat", material.Z(), false);
    }

    public static void d(VertexData vertex, String folder, String name) {
        try {
            MeshSerializer.o(MeshSerializer.m(folder + "/" + name + ".mesh"), vertex.v());
        } catch (Exception e10) {
            e = e10;
            e.printStackTrace();
            J4.d.b2("Failed to export vertex from Obj import, " + e.toString());
        } catch (OutOfMemoryError e11) {
            e11.printStackTrace();
            J4.d.b2("Failed to export vertex from Obj import, out of memory error");
        } catch (Error e12) {
            e = e12;
            e.printStackTrace();
            J4.d.b2("Failed to export vertex from Obj import, " + e.toString());
        }
    }

    public static void e(Vertex vertex, String folder, String name) {
        try {
            MeshSerializer.o(MeshSerializer.m(folder + "/" + name + ".mesh"), vertex);
        } catch (Exception e10) {
            e = e10;
            e.printStackTrace();
            J4.d.b2("Failed to export vertex from Obj import, " + e.toString());
        } catch (OutOfMemoryError e11) {
            e11.printStackTrace();
            J4.d.b2("Failed to export vertex from Obj import, out of memory error");
        } catch (Error e12) {
            e = e12;
            e.printStackTrace();
            J4.d.b2("Failed to export vertex from Obj import, " + e.toString());
        }
    }

    public static void f(String objectName, c pair, GameObject root, String metaFolder, String objFile) {
        o oVar = pair.f27773a;
        a aVar = pair.f27774b;
        Map<String, o> map = null;
        e(d.b(x.p(x.d(oVar)), null), metaFolder, f27772b);
        try {
            map = w.b(oVar);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (map == null || map.isEmpty()) {
            try {
                map = w.a(oVar);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        if (map != null) {
            int i10 = 0;
            for (Map.Entry<String, o> entry : map.entrySet()) {
                o p10 = x.p(x.d(entry.getValue()));
                String key = entry.getKey();
                VertexData vertexData = new VertexData();
                vertexData.p(p.v(p10));
                vertexData.r(p.B(p10, 2));
                vertexData.s(e.a(p.G(p10), 1.0f));
                vertexData.m(p.r(p10));
                vertexData.b();
                d(vertexData, metaFolder, key + "_v");
                if (aVar == null) {
                    a(metaFolder, key + "_m");
                } else {
                    String u10 = Tc.b.u(objFile);
                    File file = new File(u10);
                    String replace = u10.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
                    String v10 = Tc.b.v(aVar.b(key));
                    String i11 = i(file, v10, "");
                    if (i11 != null) {
                        v10 = i11;
                    }
                    c(metaFolder, key + "_m", replace + "/" + v10, ColorINT.m(aVar.a(key)));
                }
                GameObject gameObject = new GameObject(key, new Transform());
                gameObject.r(new ModelRenderer(metaFolder + key + "_v.vertex", metaFolder + key + "_m.mat"));
                root.z0().add(gameObject);
                i10++;
            }
            if (i10 == 1) {
                root.r((ModelRenderer) root.C(0).c0(Component.e.ModelRenderer));
                root.z0().clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static GameObject g(File fileIO) throws Exception {
        FileInputStream fileInputStream;
        c h10;
        if (!fileIO.getAbsolutePath().contains(com.itsmagic.engine.Core.Components.ProjectController.a.R()) || !com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            throw new RuntimeException("Please call import while running a project!");
        }
        String replace = fileIO.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
        Context t10 = N7.c.t();
        String str = Tc.b.O(replace) + ".meta/";
        String w10 = Tc.b.w(replace, true);
        String str2 = com.itsmagic.engine.Core.Components.ProjectController.a.S(t10) + "/" + replace;
        InputStream p10 = X7.a.p(replace, t10);
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(t10) + "/" + Tc.b.O(replace) + ".mtl");
        if (file.exists()) {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (FileNotFoundException e10) {
                e10.printStackTrace();
            }
            h10 = h(p10, fileInputStream);
            if (h10 != null) {
                return null;
            }
            GameObject gameObject = new GameObject(w10);
            f(w10, h10, gameObject, str, str2);
            X7.a.e(str, w10 + ".go", gameObject.x1().toString(), t10);
            return gameObject;
        }
        fileInputStream = null;
        h10 = h(p10, fileInputStream);
        if (h10 != null) {
        }
    }

    public static c h(InputStream objInput, InputStream mtlInput) throws Exception {
        a aVar;
        o c10 = u.c(new InputStreamReader(objInput));
        objInput.close();
        if (mtlInput != null) {
            ArrayList arrayList = new ArrayList();
            InputStreamReader inputStreamReader = new InputStreamReader(mtlInput);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                arrayList.add(readLine);
            }
            bufferedReader.close();
            inputStreamReader.close();
            mtlInput.close();
            aVar = new a(arrayList);
        } else {
            aVar = null;
        }
        return new c(c10, aVar);
    }

    public static String i(File folder, String textureName, String pathAcumulation) {
        File[] listFiles = folder.listFiles();
        if (listFiles == null) {
            return null;
        }
        for (File file : listFiles) {
            if (file.isDirectory()) {
                String i10 = i(file, textureName, pathAcumulation + file.getName() + "/");
                if (i10 != null) {
                    return i10;
                }
            } else if (Tc.b.O(file.getName()).equalsIgnoreCase(Tc.b.O(textureName))) {
                return pathAcumulation + file.getName();
            }
        }
        return null;
    }
}
