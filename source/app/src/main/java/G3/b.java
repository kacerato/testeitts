package G3;

import N7.c;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.Toast;
import bd.C3867a;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Cursor3D;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.EmbeddedMatMR;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.NavMesh.BakedNavMesh;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.CurvePath;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.MeshCurve;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.PathPoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.ObjectPool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Route.Route;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Route.RouteFollower;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads.Road;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.StickToTerrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ec.EnumC13053a;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

public class b {
    public static GameObject A(Context context, String name, Vector3 position) {
        com.itsmagic.engine.Core.Components.ProjectController.a.u(com.itsmagic.engine.Core.Components.ProjectController.a.I(), com.itsmagic.engine.Core.Components.ProjectController.a.L());
        GameObject gameObject = new GameObject(name, new Transform(position));
        gameObject.r(new RouteFollower());
        try {
            gameObject.Q1();
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject B(String name, Vector3 position, Context context) {
        try {
            GameObject A10 = A(context, name, position);
            if (A10 != null) {
                W7.b.f27308h.h(A10);
                Panel3DView.x1();
            }
            return A10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject C(String name, Vector3 position) {
        return E(name, position, true);
    }

    public static GameObject D(String name, Vector3 position, Context context) {
        try {
            GameObject C10 = C(name, position);
            if (C10 != null) {
                W7.b.f27308h.h(C10);
                Panel3DView.x1();
            }
            return C10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject E(String name, Vector3 position, boolean instantiate) {
        String A10 = com.itsmagic.engine.Core.Components.ProjectController.a.A(com.itsmagic.engine.Core.Components.ProjectController.a.K(), com.itsmagic.engine.Core.Components.ProjectController.a.L());
        GameObject gameObject = new GameObject(name, new Transform(position));
        gameObject.transform.N3(Transform.G.STATIC);
        Terrain buildTerrain = Terrain.buildTerrain();
        buildTerrain.dataFile = new Ac.b(A10);
        gameObject.r(buildTerrain);
        if (instantiate && W7.b.f27304d != null && com.itsmagic.engine.Engines.Engine.World.a.f80030c != null) {
            gameObject.Q1();
        }
        return gameObject;
    }

    public static void F(String name, int w10, int h10, boolean grid, int type) {
        Context t10 = c.t();
        System.gc();
        try {
            int F10 = Nc.b.F(16, w10, 4096);
            Bitmap createBitmap = Bitmap.createBitmap(F10, Nc.b.F(16, h10, 4096), Bitmap.Config.ARGB_8888);
            try {
                int i10 = F10 / 256;
                ColorINT colorINT = new ColorINT(150, 150, 150);
                ColorINT colorINT2 = new ColorINT(100, 100, 100);
                if (!grid) {
                    colorINT = new ColorINT();
                    colorINT2 = new ColorINT();
                }
                boolean z10 = false;
                int i11 = 0;
                for (int i12 = 0; i12 < createBitmap.getWidth(); i12++) {
                    int i13 = 0;
                    for (int i14 = 0; i14 < createBitmap.getHeight(); i14++) {
                        if (z10) {
                            createBitmap.setPixel(i12, i14, colorINT.intColor);
                        } else {
                            createBitmap.setPixel(i12, i14, colorINT2.intColor);
                        }
                        i13++;
                        if (i13 >= i10) {
                            z10 = !z10;
                            i13 = 0;
                        }
                    }
                    i11++;
                    if (i11 > i10) {
                        z10 = !z10;
                        i11 = 0;
                    }
                }
                X7.a aVar = W7.b.f27305e;
                FileOutputStream n10 = X7.a.n(name, t10);
                if (type == 0) {
                    createBitmap.compress(Bitmap.CompressFormat.JPEG, 100, n10);
                } else if (type == 1) {
                    createBitmap.compress(Bitmap.CompressFormat.PNG, 100, n10);
                }
                createBitmap.recycle();
            } catch (FileNotFoundException e10) {
                createBitmap.recycle();
                e10.printStackTrace();
            } catch (IOException e11) {
                createBitmap.recycle();
                e11.printStackTrace();
            }
        } catch (IllegalArgumentException e12) {
            try {
                Toast.makeText(t10, "Ops! IllegalArgumentException", 1).show();
            } catch (Error | Exception e13) {
                e13.printStackTrace();
            }
            e12.printStackTrace();
            System.gc();
        } catch (OutOfMemoryError e14) {
            try {
                Toast.makeText(t10, new C3867a("Ops! not enough RAM memory to alloc the image, try a smaller resolution", "Ops! sem memoria RAM suficiente para alocar a imagem, crie uma resolu\u00e7\u00e3o menor").toString(), 1).show();
            } catch (Error | Exception e15) {
                e15.printStackTrace();
            }
            e14.printStackTrace();
            System.gc();
        }
    }

    public static void G(String name, int resolution, boolean grid, int type) {
        Context t10 = c.t();
        System.gc();
        if (resolution < 0) {
            resolution = -resolution;
        }
        try {
            int F10 = Nc.b.F(16, resolution, 4096);
            Bitmap createBitmap = Bitmap.createBitmap(F10, F10, Bitmap.Config.ARGB_8888);
            try {
                int i10 = F10 / 256;
                ColorINT colorINT = new ColorINT(150, 150, 150);
                ColorINT colorINT2 = new ColorINT(100, 100, 100);
                if (!grid) {
                    colorINT = new ColorINT();
                    colorINT2 = new ColorINT();
                }
                boolean z10 = false;
                int i11 = 0;
                for (int i12 = 0; i12 < createBitmap.getWidth(); i12++) {
                    int i13 = 0;
                    for (int i14 = 0; i14 < createBitmap.getHeight(); i14++) {
                        if (z10) {
                            createBitmap.setPixel(i12, i14, colorINT.intColor);
                        } else {
                            createBitmap.setPixel(i12, i14, colorINT2.intColor);
                        }
                        i13++;
                        if (i13 >= i10) {
                            z10 = !z10;
                            i13 = 0;
                        }
                    }
                    i11++;
                    if (i11 > i10) {
                        z10 = !z10;
                        i11 = 0;
                    }
                }
                FileOutputStream n10 = X7.a.n(name, t10);
                if (type == 0) {
                    createBitmap.compress(Bitmap.CompressFormat.JPEG, 100, n10);
                } else if (type == 1) {
                    createBitmap.compress(Bitmap.CompressFormat.PNG, 100, n10);
                }
                createBitmap.recycle();
            } catch (FileNotFoundException e10) {
                createBitmap.recycle();
                e10.printStackTrace();
            } catch (IOException e11) {
                createBitmap.recycle();
                e11.printStackTrace();
            }
        } catch (IllegalArgumentException e12) {
            try {
                Toast.makeText(t10, "Ops! IllegalArgumentException", 1).show();
            } catch (Error | Exception e13) {
                e13.printStackTrace();
            }
            e12.printStackTrace();
            System.gc();
        } catch (OutOfMemoryError e14) {
            try {
                Toast.makeText(t10, new C3867a("Ops! not enough RAM memory to alloc the image, try a smaller resolution", "Ops! sem memoria RAM suficiente para alocar a imagem, crie uma resolu\u00e7\u00e3o menor").toString(), 1).show();
            } catch (Error | Exception e15) {
                e15.printStackTrace();
            }
            e14.printStackTrace();
            System.gc();
        }
    }

    public static void H(String name, int w10, int h10) {
        Context t10 = c.t();
        System.gc();
        try {
            Bitmap createBitmap = Bitmap.createBitmap(Nc.b.F(16, w10, 4096), Nc.b.F(16, h10, 4096), Bitmap.Config.ARGB_8888);
            try {
                ColorINT colorINT = new ColorINT(0, 0, 0);
                for (int i10 = 0; i10 < createBitmap.getWidth(); i10++) {
                    for (int i11 = 0; i11 < createBitmap.getHeight(); i11++) {
                        createBitmap.setPixel(i10, i11, colorINT.intColor);
                    }
                }
                createBitmap.compress(Bitmap.CompressFormat.JPEG, 100, X7.a.n(name, t10));
                createBitmap.recycle();
                TextureConfig textureConfig = new TextureConfig();
                textureConfig.genMipmaps = false;
                textureConfig.gammaCorrection = true;
                textureConfig.maxResolutionID = 16;
                X7.a.a(name + ".config", X7.a.m().toJson(textureConfig));
            } catch (FileNotFoundException e10) {
                createBitmap.recycle();
                e10.printStackTrace();
            } catch (IOException e11) {
                createBitmap.recycle();
                e11.printStackTrace();
            }
        } catch (IllegalArgumentException e12) {
            try {
                Toast.makeText(t10, "Ops! IllegalArgumentException", 1).show();
            } catch (Error | Exception e13) {
                e13.printStackTrace();
            }
            e12.printStackTrace();
            System.gc();
        } catch (OutOfMemoryError e14) {
            try {
                Toast.makeText(t10, new C3867a("Ops! not enough RAM memory to alloc the image, try a smaller resolution", "Ops! sem memoria RAM suficiente para alocar a imagem, crie uma resolu\u00e7\u00e3o menor").toString(), 1).show();
            } catch (Error | Exception e15) {
                e15.printStackTrace();
            }
            e14.printStackTrace();
            System.gc();
        }
    }

    public static GameObject a(String name, Vector3 position, Context context) {
        try {
            com.itsmagic.engine.Core.Components.ProjectController.a.L();
            com.itsmagic.engine.Core.Components.ProjectController.a.H();
            GameObject gameObject = new GameObject(name, new Transform(position), new ObjectPool());
            gameObject.transform.O3();
            gameObject.Q1();
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject b(Context context, String name, Vector3 position) {
        String u10 = com.itsmagic.engine.Core.Components.ProjectController.a.u(com.itsmagic.engine.Core.Components.ProjectController.a.I(), com.itsmagic.engine.Core.Components.ProjectController.a.L());
        GameObject gameObject = new GameObject(name, new Transform(position));
        gameObject.transform.N3(Transform.G.STATIC);
        gameObject.r(new MeshCurve());
        gameObject.r(new ModelRenderer(null, u10));
        GameObject gameObject2 = new GameObject("Mesh", new Transform());
        GameObject gameObject3 = new GameObject("Points", new Transform());
        gameObject3.r(new CurvePath());
        gameObject.p(gameObject2);
        gameObject.p(gameObject3);
        GameObject c10 = c("Cube", new Vector3(), "@@ASSET@@Engine/Primitives/Models/cube.obj", context);
        if (c10 != null) {
            gameObject2.p(c10);
        }
        GameObject gameObject4 = new GameObject("Point 0", new Transform(new Vector3(0.0f, 0.0f, 0.0f)));
        gameObject4.r(new PathPoint());
        gameObject4.r(new StickToTerrain());
        gameObject3.p(gameObject4);
        GameObject gameObject5 = new GameObject("Point 1", new Transform(new Vector3(0.0f, 0.0f, 10.0f)));
        gameObject5.r(new PathPoint());
        gameObject5.r(new StickToTerrain());
        gameObject3.p(gameObject5);
        try {
            gameObject.Q1();
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject c(String name, Vector3 position, String meshFile, Context context) {
        try {
            return new GameObject(name, new Transform(position), new ModelRenderer(meshFile, com.itsmagic.engine.Core.Components.ProjectController.a.u(com.itsmagic.engine.Core.Components.ProjectController.a.I(), com.itsmagic.engine.Core.Components.ProjectController.a.L())));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject d(String name, String meshFile, Context context) {
        try {
            return new GameObject(name, new Transform(), new ModelRenderer(meshFile, com.itsmagic.engine.Core.Components.ProjectController.a.u(com.itsmagic.engine.Core.Components.ProjectController.a.I(), com.itsmagic.engine.Core.Components.ProjectController.a.L())));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject e(String name, Vector3 position) {
        String z10 = com.itsmagic.engine.Core.Components.ProjectController.a.z(com.itsmagic.engine.Core.Components.ProjectController.a.J(), com.itsmagic.engine.Core.Components.ProjectController.a.L());
        GameObject gameObject = new GameObject(name, new Transform(position));
        gameObject.transform.N3(Transform.G.STATIC);
        BakedNavMesh bakedNavMesh = new BakedNavMesh(z10);
        bakedNavMesh.f73833H = true;
        gameObject.r(bakedNavMesh);
        if (W7.b.f27304d != null && com.itsmagic.engine.Engines.Engine.World.a.f80030c != null) {
            gameObject.Q1();
        }
        return gameObject;
    }

    public static GameObject f(String name, Component component) {
        try {
            GameObject gameObject = new GameObject(name, new Transform(), component);
            gameObject.Q1();
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject g(String name, GameObject parent, List<Component> components) {
        try {
            GameObject gameObject = new GameObject(name, new Transform(), components);
            com.itsmagic.engine.Engines.Engine.World.b.f(gameObject, parent);
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject h(String name, GameObject parent, List<Component> components, List<GameObject> childrens) {
        try {
            GameObject gameObject = new GameObject(name, new Transform(), components);
            gameObject.z1(childrens);
            Iterator<GameObject> it = gameObject.z0().iterator();
            while (it.hasNext()) {
                it.next().f79294k = gameObject;
            }
            com.itsmagic.engine.Engines.Engine.World.b.f(gameObject, parent);
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject i(String name, GameObject parent, Component... components) {
        try {
            GameObject gameObject = new GameObject(name, new Transform(), components);
            com.itsmagic.engine.Engines.Engine.World.b.f(gameObject, parent);
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject j(String name, Vector3 position, Component component) {
        try {
            GameObject gameObject = new GameObject(name, new Transform(position), component);
            gameObject.Q1();
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject k(String name, Vector3 position, Quaternion rotation, Component component) {
        try {
            GameObject gameObject = new GameObject(name, new Transform(position, rotation), component);
            gameObject.Q1();
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject l(String name, Vector3 position, String meshFile, Context context) {
        try {
            GameObject gameObject = new GameObject(name, new Transform(position), new ModelRenderer(meshFile, com.itsmagic.engine.Core.Components.ProjectController.a.u(com.itsmagic.engine.Core.Components.ProjectController.a.I(), com.itsmagic.engine.Core.Components.ProjectController.a.L())));
            gameObject.Q1();
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject m(String name, Vector3 position, String meshFile, Context context, ColorINT colorINT) {
        try {
            GameObject gameObject = new GameObject(name, new Transform(position), new ModelRenderer(meshFile, com.itsmagic.engine.Core.Components.ProjectController.a.v(com.itsmagic.engine.Core.Components.ProjectController.a.I(), com.itsmagic.engine.Core.Components.ProjectController.a.L(), colorINT)));
            gameObject.Q1();
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject n(String name, Vector3 position, String meshFile, Context context, EnumC13053a blendingMode) {
        try {
            GameObject gameObject = new GameObject(name, new Transform(position), new ModelRenderer(meshFile, com.itsmagic.engine.Core.Components.ProjectController.a.x(com.itsmagic.engine.Core.Components.ProjectController.a.I(), com.itsmagic.engine.Core.Components.ProjectController.a.L(), blendingMode)));
            gameObject.Q1();
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject o(String name, Vector3 position, String meshFile, Context context, EnumC13053a blendingMode, boolean receiveShadows, boolean castShadows) {
        try {
            ModelRenderer modelRenderer = new ModelRenderer(meshFile, com.itsmagic.engine.Core.Components.ProjectController.a.x(com.itsmagic.engine.Core.Components.ProjectController.a.I(), com.itsmagic.engine.Core.Components.ProjectController.a.L(), blendingMode));
            modelRenderer.setCastShadow(castShadows);
            modelRenderer.setReceiveShadow(receiveShadows);
            GameObject gameObject = new GameObject(name, new Transform(position), modelRenderer);
            gameObject.Q1();
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject p(String name, Vector3 position, Component... component) {
        try {
            GameObject gameObject = new GameObject(name, new Transform(position), component);
            gameObject.Q1();
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject q(String name, String meshFile, Context context) {
        Vector3 vector3;
        try {
            vector3 = Cursor3D.f71511K.m1249clone();
        } catch (Exception e10) {
            Vector3 vector32 = new Vector3();
            e10.printStackTrace();
            vector3 = vector32;
        }
        return l(name, vector3, meshFile, context);
    }

    public static GameObject r(String name, List<Component> components) {
        try {
            return new GameObject(name, new Transform(), components);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void s(String name) {
        u(name, new Vector3());
    }

    public static void t(String name, GameObject parent) {
        try {
            GameObject gameObject = new GameObject(name, new Transform());
            com.itsmagic.engine.Engines.Engine.World.b.f(gameObject, parent);
            W7.b.f27308h.h(gameObject);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void u(String name, Vector3 position) {
        try {
            GameObject gameObject = new GameObject(name, new Transform(position));
            gameObject.Q1();
            W7.b.f27308h.h(gameObject);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static GameObject v(String name, Vector3 position, String meshFile, Context context, EnumC13053a blendingMode, boolean receiveShadows, boolean castShadows) {
        try {
            com.itsmagic.engine.Core.Components.ProjectController.a.L();
            EmbeddedMatMR embeddedMatMR = new EmbeddedMatMR(meshFile);
            embeddedMatMR.setCastShadow(castShadows);
            embeddedMatMR.setReceiveShadow(receiveShadows);
            GameObject gameObject = new GameObject(name, new Transform(position), embeddedMatMR);
            gameObject.Q1();
            W7.b.f27308h.h(gameObject);
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject w(Context context, String name, Vector3 position) {
        String u10 = com.itsmagic.engine.Core.Components.ProjectController.a.u(com.itsmagic.engine.Core.Components.ProjectController.a.I(), com.itsmagic.engine.Core.Components.ProjectController.a.L());
        GameObject gameObject = new GameObject(name, new Transform(position));
        gameObject.transform.N3(Transform.G.STATIC);
        gameObject.r(Road.buildDefault(gameObject));
        gameObject.r(new ModelRenderer(null, u10));
        gameObject.r(new Collider(Collider.o.Model));
        try {
            gameObject.Q1();
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject x(String name, Vector3 position, Context context) {
        try {
            GameObject w10 = w(context, name, position);
            if (w10 != null) {
                W7.b.f27308h.h(w10);
                Panel3DView.x1();
            }
            return w10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject y(Context context, String name, Vector3 position) {
        com.itsmagic.engine.Core.Components.ProjectController.a.u(com.itsmagic.engine.Core.Components.ProjectController.a.I(), com.itsmagic.engine.Core.Components.ProjectController.a.L());
        GameObject gameObject = new GameObject(name, new Transform(position));
        gameObject.r(Route.buildDefault(gameObject));
        try {
            gameObject.Q1();
            return gameObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject z(String name, Vector3 position, Context context) {
        try {
            GameObject y10 = y(context, name, position);
            if (y10 != null) {
                W7.b.f27308h.h(y10);
                Panel3DView.x1();
            }
            return y10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
