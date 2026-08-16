package n5;

import a5.C3582a;
import a5.C3583b;
import a5.C3584c;
import android.content.Context;
import b5.C3846a;
import c5.C4154a;
import c5.C4155b;
import c5.C4156c;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.EditorAxis;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.AxisCube;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.AxisCubeCamera;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.MRToGizmo;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.PivotGizmo;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera.RTS3DHorizontalSlide;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera.RTS3DMoviments;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera.RTS3DPinch;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera.RTS3DSlideController;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera.RTS3DTwoFingerSlide;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera.RTS3DVerticalSlide;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera.RTS3DZoom;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import d5.C12875a;
import java.util.List;

public class c {

    public class a extends R4.e {
        @Override
        public boolean a(GameObject selectedObject, Panel3DView panel3DView) {
            return super.a(selectedObject, panel3DView);
        }

        @Override
        public N4.a b() {
            return N4.a.ScaZ;
        }
    }

    public class b extends R4.c {
        @Override
        public N4.a b() {
            return N4.a.PosX;
        }
    }

    public class C1880c extends R4.c {
        @Override
        public N4.a b() {
            return N4.a.PosY;
        }
    }

    public class d extends R4.c {
        @Override
        public N4.a b() {
            return N4.a.PosZ;
        }
    }

    public class e extends R4.d {
        @Override
        public N4.a b() {
            return N4.a.RotX;
        }
    }

    public class f extends R4.d {
        @Override
        public N4.a b() {
            return N4.a.RotY;
        }
    }

    public class g extends R4.d {
        @Override
        public N4.a b() {
            return N4.a.RotZ;
        }
    }

    public class h extends R4.e {
        @Override
        public boolean a(GameObject selectedObject, Panel3DView panel3DView) {
            return super.a(selectedObject, panel3DView);
        }

        @Override
        public N4.a b() {
            return N4.a.ScaA;
        }
    }

    public class i extends R4.e {
        @Override
        public boolean a(GameObject selectedObject, Panel3DView panel3DView) {
            return super.a(selectedObject, panel3DView);
        }

        @Override
        public N4.a b() {
            return N4.a.ScaX;
        }
    }

    public class j extends R4.e {
        @Override
        public boolean a(GameObject selectedObject, Panel3DView panel3DView) {
            return super.a(selectedObject, panel3DView);
        }

        @Override
        public N4.a b() {
            return N4.a.ScaY;
        }
    }

    public static void a(List<GameObject> list, Context oglContext, n5.d sceneHierarchy, Panel3DView editor3DViewer) {
        b(list, oglContext, sceneHierarchy, editor3DViewer, null);
    }

    public static void b(List<GameObject> list, Context oglContext, n5.d sceneHierarchy, Panel3DView editor3DViewer, InterfaceC14353a constructor) {
        c(list, oglContext, sceneHierarchy, editor3DViewer, true, constructor);
    }

    public static void c(List<GameObject> list, Context oglContext, n5.d sceneHierarchy, Panel3DView editor3DViewer, boolean createDefaultAxis, InterfaceC14353a constructor) {
        if (constructor == null) {
            g(list, sceneHierarchy, editor3DViewer);
        } else {
            constructor.a(list, oglContext, sceneHierarchy, editor3DViewer);
        }
        if (createDefaultAxis) {
            j(list, sceneHierarchy, editor3DViewer, oglContext);
            k(list, sceneHierarchy, editor3DViewer, oglContext);
            d(list, sceneHierarchy, editor3DViewer, oglContext);
            l(list, sceneHierarchy, editor3DViewer, oglContext);
            n(list, sceneHierarchy, editor3DViewer, oglContext);
            m(list, sceneHierarchy, editor3DViewer, oglContext);
        }
        f(list, sceneHierarchy, editor3DViewer);
        h(list, sceneHierarchy, editor3DViewer, oglContext);
        i(list, sceneHierarchy, editor3DViewer);
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).A1(true);
        }
    }

    public static void d(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer, Context context) {
        R4.a aVar = new R4.a();
        sceneHierarchy.f97760o = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_rot_toucharea_x.obj", "Engine/Interface/Models/axis_rot_x.obj", new ColorINT(232, 65, 24), true, null, new V4.a(), aVar);
        sceneHierarchy.f97761p = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_rot_toucharea_y.obj", "Engine/Interface/Models/axis_rot_y.obj", new ColorINT(68, 189, 50), true, null, new V4.b(), aVar);
        sceneHierarchy.f97762q = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_rot_toucharea_z.obj", "Engine/Interface/Models/axis_rot_z.obj", new ColorINT(0, 151, 230), true, null, new V4.c(), aVar);
    }

    public static EditorAxis e(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer, String touchArea, String model, ColorINT color, boolean drawInFront, String texture, U4.a axisHandler, R4.b enableFilter) {
        ModelRenderer modelRenderer = new ModelRenderer(touchArea, Boolean.TRUE, "", false, false);
        EditorAxis editorAxis = new EditorAxis(sceneHierarchy.f97746a, editor3DViewer, modelRenderer, axisHandler, enableFilter);
        Vector3 vector3 = new Vector3(0.0f, 3.0f, 0.0f);
        Quaternion quaternion = new Quaternion(0.0f, 0.0f, 0.0f);
        Vector3 vector32 = new Vector3(1.0f);
        Transform.G g10 = Transform.G.DYNAMIC;
        GameObject gameObject = new GameObject(new Transform(vector3, quaternion, vector32, g10), modelRenderer, editorAxis);
        gameObject.p(new GameObject(new Transform(new Vector3(0.0f, 0.0f, 0.0f), new Quaternion(0.0f, 0.0f, 0.0f), new Vector3(0.5f), g10), new MRToGizmo(model, true, drawInFront, color, texture)));
        list.add(gameObject);
        return editorAxis;
    }

    public static void f(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer) {
        Vector3 vector3 = new Vector3(0.0f, 0.0f, -4.0f);
        Transform.G g10 = Transform.G.DYNAMIC;
        GameObject gameObject = new GameObject("EditorAxisCube", new Transform(vector3, g10));
        AxisCubeCamera axisCubeCamera = new AxisCubeCamera();
        sceneHierarchy.f97742M = axisCubeCamera;
        gameObject.r(axisCubeCamera);
        GameObject gameObject2 = new GameObject("AxisCubeCameraAngler", new Transform(new Vector3(0.0f), g10));
        gameObject2.z0().add(gameObject);
        GameObject gameObject3 = new GameObject("AxisCubeCameraParent", new Transform(new Vector3(-10000.0f, -9998.0f, -10000.0f), g10));
        AxisCube axisCube = new AxisCube(sceneHierarchy.f97742M, editor3DViewer);
        sceneHierarchy.f97743N = axisCube;
        gameObject3.r(axisCube);
        gameObject3.z0().add(gameObject2);
        list.add(gameObject3);
    }

    public static void g(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer) {
        RTS3DTwoFingerSlide rTS3DTwoFingerSlide = new RTS3DTwoFingerSlide(editor3DViewer);
        RTS3DSlideController rTS3DSlideController = new RTS3DSlideController(editor3DViewer);
        RTS3DPinch rTS3DPinch = new RTS3DPinch(editor3DViewer);
        RTS3DZoom rTS3DZoom = new RTS3DZoom(rTS3DPinch, editor3DViewer);
        sceneHierarchy.f97744O = rTS3DZoom;
        GameObject gameObject = new GameObject("Main Camera", new Transform(new Vector3(0.0f, 0.0f, -7.0f), Transform.G.DYNAMIC));
        EditorCamera editorCamera = new EditorCamera(2000.0f, 70.0f, 0.3f, false, 0);
        sceneHierarchy.f97746a = editorCamera;
        editorCamera.f79250n = gameObject;
        gameObject.r(editorCamera);
        GameObject gameObject2 = new GameObject("cameraAngler", new Transform(new Vector3(0.0f, 0.0f, 0.0f)));
        gameObject2.r(new RTS3DVerticalSlide(rTS3DTwoFingerSlide, rTS3DSlideController, editor3DViewer));
        gameObject2.z0().add(gameObject);
        GameObject gameObject3 = new GameObject("cameraParent", new Transform(new Vector3(0.0f, 2.0f, 0.0f)));
        gameObject3.r(new RTS3DHorizontalSlide(rTS3DTwoFingerSlide, rTS3DSlideController, editor3DViewer));
        gameObject3.r(rTS3DZoom);
        gameObject3.r(rTS3DPinch);
        gameObject3.r(rTS3DTwoFingerSlide);
        gameObject3.r(rTS3DSlideController);
        gameObject3.r(new RTS3DMoviments(rTS3DTwoFingerSlide, editor3DViewer, rTS3DZoom));
        gameObject3.z0().add(gameObject2);
        sceneHierarchy.f97747b = gameObject3;
        list.add(gameObject3);
    }

    public static void h(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer, Context context) {
        MousePicker mousePicker = new MousePicker(sceneHierarchy.f97746a, editor3DViewer, new C12875a());
        list.add(new GameObject(new Transform(new Vector3(0.0f, 3.0f, 0.0f), new Quaternion(0.0f, 0.0f, 0.0f), new Vector3(1.0f), Transform.G.DYNAMIC), mousePicker));
        sceneHierarchy.f97748c = mousePicker;
    }

    public static void i(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer) {
        GameObject gameObject = new GameObject("PivotGizmoObject", new Transform(new Vector3(), Transform.G.DYNAMIC));
        PivotGizmo pivotGizmo = new PivotGizmo(editor3DViewer);
        sceneHierarchy.f97749d = pivotGizmo;
        gameObject.r(pivotGizmo);
        list.add(gameObject);
    }

    public static void j(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer, Context context) {
        sceneHierarchy.f97750e = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_pos_toucharea.obj", "Engine/Interface/Models/axis_pos.obj", new ColorINT(232, 65, 24), true, null, new W4.a(), new b());
        sceneHierarchy.f97751f = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_pos_toucharea.obj", "Engine/Interface/Models/axis_pos.obj", new ColorINT(68, 189, 50), true, null, new W4.b(), new C1880c());
        sceneHierarchy.f97752g = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_pos_toucharea.obj", "Engine/Interface/Models/axis_pos.obj", new ColorINT(0, 151, 230), true, null, new W4.c(), new d());
    }

    public static void k(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer, Context context) {
        sceneHierarchy.f97757l = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_rot_toucharea_x.obj", "Engine/Interface/Models/axis_rot_x.obj", new ColorINT(232, 65, 24), true, null, new X4.c(), new e());
        sceneHierarchy.f97758m = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_rot_toucharea_y.obj", "Engine/Interface/Models/axis_rot_y.obj", new ColorINT(68, 189, 50), true, null, new X4.d(), new f());
        sceneHierarchy.f97759n = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_rot_toucharea_z.obj", "Engine/Interface/Models/axis_rot_z.obj", new ColorINT(0, 151, 230), true, null, new X4.e(), new g());
    }

    public static void l(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer, Context context) {
        sceneHierarchy.f97753h = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_pos_toucharea.obj", "Engine/Interface/Models/axis_scale.obj", new ColorINT(220, 220, 220), true, null, new Y4.a(), new h());
        sceneHierarchy.f97754i = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_pos_toucharea.obj", "Engine/Interface/Models/axis_scale.obj", new ColorINT(232, 65, 24), true, null, new Y4.b(), new i());
        sceneHierarchy.f97755j = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_pos_toucharea.obj", "Engine/Interface/Models/axis_scale.obj", new ColorINT(68, 189, 50), true, null, new Y4.c(), new j());
        sceneHierarchy.f97756k = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/axis_pos_toucharea.obj", "Engine/Interface/Models/axis_scale.obj", new ColorINT(0, 151, 230), true, null, new Y4.d(), new a());
    }

    public static void m(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer, Context context) {
        sceneHierarchy.f97767v = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/sts_toucharea.obj", "Engine/Primitives/Models/square90.obj", new ColorINT(), true, "@@ASSET@@/Engine/Interface/Textures/snap_to_surface_v5.png", new Z4.a(), new S4.b());
        sceneHierarchy.f97768w = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/sts_move_x_p.obj", "Engine/Interface/Models/sts_move_x_p.obj", new ColorINT(232, 65, 24), true, null, new C3582a(), new S4.a());
        sceneHierarchy.f97769x = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/sts_move_y_p.obj", "Engine/Interface/Models/sts_move_y_p.obj", new ColorINT(68, 189, 50), true, null, new C3583b(), new S4.a());
        sceneHierarchy.f97770y = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/sts_move_z_p.obj", "Engine/Interface/Models/sts_move_z_p.obj", new ColorINT(0, 151, 230), true, null, new C3584c(), new S4.a());
    }

    public static void n(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer, Context context) {
        sceneHierarchy.f97763r = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/sts_toucharea.obj", "Engine/Primitives/Models/square90.obj", new ColorINT(), true, "@@ASSET@@/Engine/Interface/Textures/snap_to_surface_v6.png", new C3846a(), new T4.b());
        sceneHierarchy.f97764s = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/sts_move_x_p.obj", "Engine/Interface/Models/sts_move_x_p.obj", new ColorINT(232, 65, 24), true, null, new C4154a(), new T4.a());
        sceneHierarchy.f97765t = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/sts_move_y_p.obj", "Engine/Interface/Models/sts_move_y_p.obj", new ColorINT(68, 189, 50), true, null, new C4155b(), new T4.a());
        sceneHierarchy.f97766u = e(list, sceneHierarchy, editor3DViewer, "Engine/Interface/Models/sts_move_z_p.obj", "Engine/Interface/Models/sts_move_z_p.obj", new ColorINT(0, 151, 230), true, null, new C4156c(), new T4.a());
    }
}
