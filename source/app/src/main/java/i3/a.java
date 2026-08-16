package I3;

import G3.b;
import JAVARuntime.Runnable;
import N7.c;
import a8.C3589a;
import android.view.View;
import android.widget.Toast;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Cursor3D;
import com.itsmagic.engine.Activities.Editor.Utils.C12735c;
import com.itsmagic.engine.Activities.Editor.Utils.I;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.LOD.LOD;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.PointLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SpotLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.MeshCurve;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Empty;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.ObjectPool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.RenderTextureExtractor;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Route.Route;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Route.RouteFollower;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundListener;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads.Road;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.TrailSystem.TrailRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunkSpawner;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Wind.WindEffect;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UI3DInputSystem;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.Layouts.UIFlexLayout;
import com.itsmagic.engine.Engines.Engine.ImGUI.Layouts.UIGridLayout;
import com.itsmagic.engine.Engines.Engine.ImGUI.Layouts.UIHorizontalLayout;
import com.itsmagic.engine.Engines.Engine.ImGUI.Layouts.UIVerticalLayout;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIAxisEventListener;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIBarHandler;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIButton;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UICheckBox;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIDrivingWheel;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIDynamicJoystick;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIFitParent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIHorizontalScrollView;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIHoverButton;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIImage;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIInputText;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIJoystick;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIKeyEventListener;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIPinchDetector;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIProgressBar;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIRadioButton;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIRadioGroup;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIRectangularMask;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIRotateImage;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIShape;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UISlideArea;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UISlideBar;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UISpriteRenderer;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UITextView;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UITouchTrigger;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIVerticalScrollView;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIWebView;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import dd.C12908b;
import dd.d;
import ec.EnumC13053a;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class a {

    public class A implements d {

        public final GameObject f8678a;

        public A(final GameObject val$parent) {
            this.f8678a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_CYLINDER");
            GameObject q10 = b.q("Cylinder", "@@ASSET@@Engine/Primitives/Models/cylinder.obj", c.o());
            if (q10 == null || (gameObject = this.f8678a) == null) {
                return;
            }
            q10.F1(gameObject);
            this.f8678a.getEditor().i(true);
        }
    }

    public class B implements d {

        public final GameObject f8679a;

        public B(final GameObject val$parent) {
            this.f8679a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_CONE");
            GameObject q10 = b.q("Cone", "@@ASSET@@Engine/Primitives/Models/cone.obj", c.o());
            if (q10 == null || (gameObject = this.f8679a) == null) {
                return;
            }
            q10.F1(gameObject);
            this.f8679a.getEditor().i(true);
        }
    }

    public class C implements d {

        public final GameObject f8680a;

        public C(final GameObject val$parent) {
            this.f8680a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_CIRCLE");
            GameObject q10 = b.q("Circle", "@@ASSET@@Engine/Primitives/Models/circle.obj", c.o());
            if (q10 == null || (gameObject = this.f8680a) == null) {
                return;
            }
            q10.F1(gameObject);
            this.f8680a.getEditor().i(true);
        }
    }

    public class D implements d {

        public final GameObject f8681a;

        public D(final GameObject val$parent) {
            this.f8681a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_TORUS");
            GameObject q10 = b.q("Torus", "@@ASSET@@Engine/Primitives/Models/torus.obj", c.o());
            if (q10 == null || (gameObject = this.f8681a) == null) {
                return;
            }
            q10.F1(gameObject);
            this.f8681a.getEditor().i(true);
        }
    }

    public class E implements d {

        public final GameObject f8682a;

        public E(final GameObject val$parent) {
            this.f8682a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_CAPSULE");
            GameObject q10 = b.q("Capsule", "@@ASSET@@Engine/Primitives/Models/capsule.obj", c.o());
            if (q10 == null || (gameObject = this.f8682a) == null) {
                return;
            }
            q10.F1(gameObject);
            this.f8682a.getEditor().i(true);
        }
    }

    public class F implements d {

        public final GameObject f8683a;

        public F(final GameObject val$parent) {
            this.f8683a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_HALF_CAPSULE");
            GameObject q10 = b.q("HalfCapsule", "@@ASSET@@Engine/Primitives/Models/half_capsule.obj", c.o());
            if (q10 == null || (gameObject = this.f8683a) == null) {
                return;
            }
            q10.F1(gameObject);
            this.f8683a.getEditor().i(true);
        }
    }

    public class C0187a implements d {

        public final GameObject f8684a;

        public C0187a(final GameObject val$parent) {
            this.f8684a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_SQUARE");
            GameObject q10 = b.q("Square", "@@ASSET@@Engine/Primitives/Models/square.obj", c.o());
            if (q10 == null || (gameObject = this.f8684a) == null) {
                return;
            }
            q10.F1(gameObject);
            this.f8684a.getEditor().i(true);
        }
    }

    public class C2617b implements d {

        public final GameObject f8685a;

        public C2617b(final GameObject val$parent) {
            this.f8685a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_SQUARE_90");
            GameObject q10 = b.q("Square", "@@ASSET@@Engine/Primitives/Models/square90.obj", c.o());
            if (q10 == null || (gameObject = this.f8685a) == null) {
                return;
            }
            q10.F1(gameObject);
            this.f8685a.getEditor().i(true);
        }
    }

    public class C2618c implements d {

        public final GameObject f8686a;

        public C2618c(final GameObject val$parent) {
            this.f8686a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            C12735c.a("NEW_OBJECT_CAMERA");
            GameObject p10 = b.p(Camera.f73075M8, a.a(), new Camera(), new SoundListener());
            if (p10 == null || this.f8686a == null) {
                return;
            }
            p10.r(new SoundListener());
            p10.F1(this.f8686a);
            this.f8686a.getEditor().i(true);
        }
    }

    public class C2619d implements d {
        @Override
        public void onSelected(View v10) {
            C12735c.a("NEW_OBJECT_VOXEL_CHUNK");
            b.r("Chunk", new LinkedList(Arrays.asList(new VoxelChunk()))).Q1();
        }
    }

    public class C2620e implements d {
        @Override
        public void onSelected(View v10) {
            C12735c.a("NEW_OBJECT_VOXEL_SPAWNER");
            b.r("Spawner", new LinkedList(Arrays.asList(new VoxelChunkSpawner()))).Q1();
        }
    }

    public class C2621f implements d {

        public final GameObject f8687a;

        public C2621f(final GameObject val$parent) {
            this.f8687a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_NAVMESH");
            GameObject e10 = b.e("==NAV-MESH==", a.a());
            if (e10 == null || (gameObject = this.f8687a) == null) {
                return;
            }
            e10.F1(gameObject);
            this.f8687a.getEditor().i(true);
        }
    }

    public class g implements d {

        public final GameObject f8688a;

        public g(final GameObject val$parent) {
            this.f8688a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_ROUTE");
            GameObject z10 = b.z(Route.f76352J, a.a(), c.o());
            if (z10 == null || (gameObject = this.f8688a) == null) {
                return;
            }
            z10.F1(gameObject);
            this.f8688a.getEditor().i(true);
        }
    }

    public class h implements d {

        public final GameObject f8689a;

        public h(final GameObject val$parent) {
            this.f8689a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_ROUTE_FOLLOWER");
            GameObject B10 = b.B(RouteFollower.f76360Q, a.a(), c.o());
            if (B10 == null || (gameObject = this.f8689a) == null) {
                return;
            }
            B10.F1(gameObject);
            this.f8689a.getEditor().i(true);
        }
    }

    public class i implements d {

        public final GameObject f8690a;

        public i(final GameObject val$parent) {
            this.f8690a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_HPOP");
            GameObject a10 = b.a(ObjectPool.f74700L8, a.a(), c.o());
            if (a10 == null || (gameObject = this.f8690a) == null) {
                return;
            }
            a10.F1(gameObject);
            this.f8690a.getEditor().i(true);
        }
    }

    public class j implements d {

        public final GameObject f8691a;

        public j(final GameObject val$parent) {
            this.f8691a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_TERRAIN");
            GameObject D10 = b.D(Terrain.f76979i9, a.a(), c.o());
            if (D10 == null || (gameObject = this.f8691a) == null) {
                return;
            }
            D10.F1(gameObject);
            this.f8691a.getEditor().i(true);
        }
    }

    public class k implements d {

        public final GameObject f8692a;

        public k(final GameObject val$parent) {
            this.f8692a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_CUBE");
            GameObject q10 = b.q("Cube", "@@ASSET@@Engine/Primitives/Models/cube.obj", c.o());
            if (q10 == null || (gameObject = this.f8692a) == null) {
                return;
            }
            q10.F1(gameObject);
            this.f8692a.getEditor().i(true);
        }
    }

    public class l implements d {

        public final GameObject f8693a;

        public class C0188a extends Lb.h {
            public C0188a() {
            }

            @Override
            public void b(int count) {
                GameObject gameObject;
                C12735c.a("NEW_OBJECT_ROAD");
                GameObject x10 = b.x(Road.f76883T, a.a(), c.o());
                if (x10 == null || (gameObject = l.this.f8693a) == null) {
                    return;
                }
                x10.F1(gameObject);
                l.this.f8693a.getEditor().i(true);
            }
        }

        public l(final GameObject val$parent) {
            this.f8693a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            I.a(Component.e.Road, new C0188a());
        }
    }

    public class m implements d {

        public final GameObject f8695a;

        public m(final GameObject val$parent) {
            this.f8695a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_MESH_CURVE");
            GameObject b10 = b.b(c.o(), MeshCurve.f74198H4, a.a());
            if (b10 == null || (gameObject = this.f8695a) == null) {
                return;
            }
            b10.F1(gameObject);
            this.f8695a.getEditor().i(true);
        }
    }

    public class n implements d {

        public final GameObject f8696a;

        public n(final GameObject val$parent) {
            this.f8696a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            Vector3 vector3;
            C12735c.a("NEW_OBJECT_CUBE");
            try {
                vector3 = Cursor3D.f71511K.m1249clone();
            } catch (Exception e10) {
                Vector3 vector32 = new Vector3();
                e10.printStackTrace();
                vector3 = vector32;
            }
            GameObject m10 = b.m("Closer Object", new Vector3(), "@@ASSET@@Engine/Primitives/Models/cube.obj", c.o(), new ColorINT(255, 0, 0));
            m10.transform.setPosition(0.0f);
            m10.transform.G3();
            GameObject m11 = b.m("Far object", new Vector3(), "@@ASSET@@Engine/Primitives/Models/torus.obj", c.o(), new ColorINT(0, 255, 0));
            m11.transform.setPosition(0.0f);
            m11.transform.G3();
            GameObject gameObject = new GameObject("LOD Example", new Transform(vector3));
            gameObject.p(m10);
            gameObject.p(m11);
            gameObject.r(new LOD());
            gameObject.Q1();
            GameObject gameObject2 = this.f8696a;
            if (gameObject2 != null) {
                gameObject.F1(gameObject2);
                this.f8696a.getEditor().i(true);
            }
        }
    }

    public class o implements d {

        public final GameObject f8697a;

        public o(final GameObject val$parent) {
            this.f8697a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            C12735c.a("NEW_OBJECT_PARTICLE_EMITTER");
            GameObject r10 = b.r("Particles", new LinkedList(Arrays.asList(new ParticleEmitter())));
            r10.transform.p3(a.a());
            r10.Q1();
            W7.b.f27308h.h(r10);
            GameObject gameObject = this.f8697a;
            if (gameObject != null) {
                r10.F1(gameObject);
                this.f8697a.getEditor().i(true);
            }
        }
    }

    public class p implements d {

        public final GameObject f8698a;

        public p(final GameObject val$parent) {
            this.f8698a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            C12735c.a("NEW_OBJECT_TRAIL_RENDERER");
            GameObject r10 = b.r("Trail", new LinkedList(Arrays.asList(new TrailRenderer())));
            r10.transform.p3(a.a());
            r10.Q1();
            W7.b.f27308h.h(r10);
            GameObject gameObject = this.f8698a;
            if (gameObject != null) {
                r10.F1(gameObject);
                this.f8698a.getEditor().i(true);
            }
        }
    }

    public class q implements d {

        public final GameObject f8699a;

        public q(final GameObject val$parent) {
            this.f8699a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            C12735c.a("NEW_OBJECT_WIND_EFFECT");
            GameObject r10 = b.r(WindEffect.f77880O, new LinkedList(Arrays.asList(new WindEffect())));
            r10.transform.p3(a.a());
            r10.Q1();
            W7.b.f27308h.h(r10);
            GameObject gameObject = this.f8699a;
            if (gameObject != null) {
                r10.F1(gameObject);
                this.f8699a.getEditor().i(true);
            }
        }
    }

    public class r implements d {

        public final GameObject f8700a;

        public r(final GameObject val$parent) {
            this.f8700a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_SUN_LIGHT");
            GameObject k10 = b.k("Sun light", a.a(), new Quaternion(0.793d, 0.609d, 0.0d, 0.0d), new SunLight());
            if (k10 == null || (gameObject = this.f8700a) == null) {
                return;
            }
            k10.F1(gameObject);
            this.f8700a.getEditor().i(true);
        }
    }

    public class s implements d {

        public final GameObject f8701a;

        public s(final GameObject val$parent) {
            this.f8701a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_POINT_LIGHT");
            GameObject j10 = b.j("Point light", a.a(), new PointLight());
            if (j10 == null || (gameObject = this.f8701a) == null) {
                return;
            }
            j10.F1(gameObject);
            this.f8701a.getEditor().i(true);
        }
    }

    public class t implements d {

        public final GameObject f8702a;

        public t(final GameObject val$parent) {
            this.f8702a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_SPOT_LIGHT");
            GameObject j10 = b.j("Spot light", a.a(), new SpotLight());
            if (j10 == null || (gameObject = this.f8702a) == null) {
                return;
            }
            j10.F1(gameObject);
            this.f8702a.getEditor().i(true);
        }
    }

    public class u extends LinkedList<C12908b> {

        public final GameObject f8703b;

        public class C0189a extends SteppedArrayList<C12908b> {

            public class C0190a implements dd.d {

                public class C0191a implements Runnable {

                    public final GameObject f8706b;

                    public C0191a(final GameObject val$no) {
                        this.f8706b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8706b);
                    }
                }

                public C0190a() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Image", m10, new LinkedList(Arrays.asList(new UIRect(), new UIImage())));
                    K8.a.I(new C0191a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class b implements dd.d {

                public class C0192a implements Runnable {

                    public final GameObject f8709b;

                    public C0192a(final GameObject val$root) {
                        this.f8709b = val$root;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8709b);
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Hover Button", m10, new LinkedList(Arrays.asList(new UIRect(true, true), new UIHoverButton(), new UITouchTrigger(false, true), new UIKeyEventListener())));
                    K8.a.I(new C0192a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class c implements dd.d {

                public class C0193a implements Runnable {

                    public final GameObject f8712b;

                    public C0193a(final GameObject val$root) {
                        this.f8712b = val$root;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8712b);
                    }
                }

                public c() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Joystick", m10, new LinkedList(Arrays.asList(new UIRect(300, 300), new UIDynamicJoystick(), new UITouchTrigger(), new UIAxisEventListener())));
                    K8.a.I(new C0193a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class d implements dd.d {

                public class C0194a implements Runnable {

                    public final GameObject f8715b;

                    public C0194a(final GameObject val$root) {
                        this.f8715b = val$root;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8715b);
                    }
                }

                public d() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Joystick", m10, new LinkedList(Arrays.asList(new UIRect(175, 175), new UIJoystick(), new UITouchTrigger(), new UIAxisEventListener())));
                    K8.a.I(new C0194a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class e implements dd.d {

                public class C0195a implements Runnable {

                    public final GameObject f8718b;

                    public C0195a(final GameObject val$root) {
                        this.f8718b = val$root;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8718b);
                    }
                }

                public e() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("DrivingWheel", m10, new LinkedList(Arrays.asList(new UIRect(60, 60), new UIDrivingWheel(), new UITouchTrigger(), new UIAxisEventListener())));
                    K8.a.I(new C0195a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class f implements dd.d {

                public class C0196a implements Runnable {

                    public final GameObject f8721b;

                    public C0196a(final GameObject val$root) {
                        this.f8721b = val$root;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8721b);
                    }
                }

                public f() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("SlideArea", m10, new LinkedList(Arrays.asList(new UIRect(175, 175), new UISlideArea(), new UITouchTrigger(), new UIAxisEventListener())));
                    K8.a.I(new C0196a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class g implements dd.d {

                public class C0197a implements Runnable {

                    public final GameObject f8724b;

                    public C0197a(final GameObject val$root) {
                        this.f8724b = val$root;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8724b);
                    }
                }

                public g() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    UITouchTrigger uITouchTrigger = new UITouchTrigger();
                    uITouchTrigger.setMultiTouch(true);
                    GameObject g10 = G3.b.g("PinchDetector", m10, new LinkedList(Arrays.asList(new UIRect(175, 175), new UIPinchDetector(), uITouchTrigger)));
                    K8.a.I(new C0197a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class h implements dd.d {

                public class C0198a implements Runnable {

                    public final GameObject f8727b;

                    public C0198a(final GameObject val$root) {
                        this.f8727b = val$root;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8727b);
                    }
                }

                public h() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Input text", m10, new LinkedList(Arrays.asList(new UIRect(true, true), new UIInputText(), new UITouchTrigger())));
                    K8.a.I(new C0198a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class i implements dd.d {

                public class C0199a implements Runnable {

                    public final GameObject f8730b;

                    public C0199a(final GameObject val$no) {
                        this.f8730b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8730b);
                    }
                }

                public i() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Progress bar", m10, new LinkedList(Arrays.asList(new UIRect(150, 16), new UIProgressBar())));
                    K8.a.I(new C0199a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class j implements dd.d {

                public class C0200a implements Runnable {

                    public final GameObject f8733b;

                    public C0200a(final GameObject val$no) {
                        this.f8733b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8733b);
                    }
                }

                public j() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Slide bar", m10, new LinkedList(Arrays.asList(new UIRect(150, 16), new UISlideBar())));
                    g10.p(G3.b.g("Handler", m10, new LinkedList(Arrays.asList(new UIRect(20, 20), new UIBarHandler(), new UIImage(128.0f)))));
                    K8.a.I(new C0200a(g10));
                    GameObject gameObject = u.this.f8703b;
                    if (gameObject != null) {
                        g10.F1(gameObject);
                        u.this.f8703b.getEditor().i(true);
                    }
                }
            }

            public class k implements dd.d {

                public class C0201a implements Runnable {

                    public final GameObject f8736b;

                    public C0201a(final GameObject val$no) {
                        this.f8736b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8736b);
                    }
                }

                public k() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("WebView", m10, new LinkedList(Arrays.asList(new UIRect(), new UIWebView(), new UITouchTrigger())));
                    K8.a.I(new C0201a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class l implements dd.d {

                public class C0202a implements Runnable {

                    public final GameObject f8739b;

                    public C0202a(final GameObject val$no) {
                        this.f8739b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8739b);
                    }
                }

                public l() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Rotate image", m10, new LinkedList(Arrays.asList(new UIRect(), new UIRotateImage())));
                    K8.a.I(new C0202a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class m implements dd.d {

                public class C0203a implements Runnable {

                    public final GameObject f8742b;

                    public C0203a(final GameObject val$no) {
                        this.f8742b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8742b);
                    }
                }

                public m() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Sprite renderer", m10, new LinkedList(Arrays.asList(new UIRect(), new UISpriteRenderer())));
                    K8.a.I(new C0203a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class n implements dd.d {

                public class C0204a implements Runnable {

                    public final GameObject f8745b;

                    public C0204a(final GameObject val$no) {
                        this.f8745b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8745b);
                    }
                }

                public n() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Shape", m10, new LinkedList(Arrays.asList(new UIRect(), new UIShape())));
                    K8.a.I(new C0204a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class o implements dd.d {

                public class C0205a implements Runnable {

                    public final GameObject f8748b;

                    public C0205a(final GameObject val$no) {
                        this.f8748b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8748b);
                    }
                }

                public o() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Text", m10, new LinkedList(Arrays.asList(new UIRect(true, true), new UITextView())));
                    K8.a.I(new C0205a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class p implements dd.d {

                public class C0206a implements Runnable {

                    public final GameObject f8751b;

                    public C0206a(final GameObject val$root) {
                        this.f8751b = val$root;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8751b);
                    }
                }

                public p() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Button", m10, new LinkedList(Arrays.asList(new UIRect(true, true), new UIButton(), new UITouchTrigger(), new UIKeyEventListener())));
                    K8.a.I(new C0206a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class q implements dd.d {

                public class C0207a implements Runnable {

                    public final GameObject f8754b;

                    public C0207a(final GameObject val$root) {
                        this.f8754b = val$root;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8754b);
                    }
                }

                public q() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Check box", m10, new LinkedList(Arrays.asList(new UIRect(40, 40), new UICheckBox(), new UITouchTrigger())));
                    K8.a.I(new C0207a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class r implements dd.d {

                public class C0208a implements Runnable {

                    public final GameObject f8757b;

                    public C0208a(final GameObject val$root) {
                        this.f8757b = val$root;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8757b);
                    }
                }

                public r() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("RadioGroup", m10, new LinkedList(Arrays.asList(new UIRect(120, 120), new UIRadioGroup(), new UIVerticalLayout())));
                    GameObject g11 = G3.b.g("Radio 1", m10, new LinkedList(Arrays.asList(new UIRect(40, 40), new UIRadioButton(), new UITouchTrigger())));
                    GameObject g12 = G3.b.g("Radio 2", m10, new LinkedList(Arrays.asList(new UIRect(40, 40), new UIRadioButton(), new UITouchTrigger())));
                    g11.F1(g10);
                    g12.F1(g10);
                    K8.a.I(new C0208a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public C0189a() {
                add(new C12908b("Image", new C0190a()));
                add(new C12908b("WebView", new k()));
                add(new C12908b("Rotate image", new l()));
                add(new C12908b("Sprite renderer", new m()));
                add(new C12908b("Shape", new n()));
                add(new C12908b("Text", new o()));
                add(new C12908b("Button", new p()));
                add(new C12908b("Check box", new q()));
                add(new C12908b("Radio group", new r()));
                add(new C12908b("Hover Button", new b()));
                add(new C12908b("Dynamic Joystick", new c()));
                add(new C12908b("Joystick", new d()));
                add(new C12908b("Driving wheel", new e()));
                add(new C12908b("SlideArea", new f()));
                add(new C12908b("Pinch detector", new g()));
                add(new C12908b("InputText", new h()));
                add(new C12908b("Progress bar", new i()));
                add(new C12908b("Slide bar", new j()));
                add(new C12908b(C12908b.EnumC1575b.Tittle, "More coming soon..."));
            }
        }

        public class b extends SteppedArrayList<C12908b> {

            public class C0209a implements dd.d {

                public class C0210a implements Runnable {

                    public final GameObject f8761b;

                    public C0210a(final GameObject val$no) {
                        this.f8761b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8761b);
                    }
                }

                public C0209a() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("VScrollView", m10, new LinkedList(Arrays.asList(new UIRect(), new UIVerticalScrollView(), new UIImage().setEnabled(false), new UIRectangularMask())));
                    g10.p(G3.b.g("Layout", m10, new LinkedList(Arrays.asList(new UIRect(false, true), new UIVerticalLayout(), new UIFitParent(true, false)))));
                    K8.a.I(new C0210a(g10));
                    GameObject gameObject = u.this.f8703b;
                    if (gameObject != null) {
                        g10.F1(gameObject);
                        u.this.f8703b.getEditor().i(true);
                    }
                }
            }

            public class C0211b implements dd.d {

                public class C0212a implements Runnable {

                    public final GameObject f8764b;

                    public C0212a(final GameObject val$no) {
                        this.f8764b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8764b);
                    }
                }

                public C0211b() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("HScrollView", m10, new LinkedList(Arrays.asList(new UIRect(), new UIHorizontalScrollView(), new UIImage().setEnabled(false), new UIRectangularMask())));
                    g10.p(G3.b.g("Layout", m10, new LinkedList(Arrays.asList(new UIRect(true, false), new UIHorizontalLayout(), new UIFitParent(false, true)))));
                    K8.a.I(new C0212a(g10));
                    GameObject gameObject = u.this.f8703b;
                    if (gameObject != null) {
                        g10.F1(gameObject);
                        u.this.f8703b.getEditor().i(true);
                    }
                }
            }

            public b() {
                add(new C12908b("Vertical", new C0209a()));
                add(new C12908b("Horizontal", new C0211b()));
            }
        }

        public class c extends SteppedArrayList<C12908b> {

            public class C0213a implements dd.d {

                public class C0214a implements Runnable {

                    public final GameObject f8768b;

                    public C0214a(final GameObject val$no) {
                        this.f8768b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8768b);
                    }
                }

                public C0213a() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Vertical layout", m10, new LinkedList(Arrays.asList(new UIRect(), new UIVerticalLayout(), new UIImage())));
                    K8.a.I(new C0214a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class b implements dd.d {

                public class C0215a implements Runnable {

                    public final GameObject f8771b;

                    public C0215a(final GameObject val$no) {
                        this.f8771b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8771b);
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Horizontal layout", m10, new LinkedList(Arrays.asList(new UIRect(), new UIHorizontalLayout(), new UIImage())));
                    K8.a.I(new C0215a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class C0216c implements dd.d {

                public class C0217a implements Runnable {

                    public final GameObject f8774b;

                    public C0217a(final GameObject val$no) {
                        this.f8774b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8774b);
                    }
                }

                public C0216c() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Grid layout", m10, new LinkedList(Arrays.asList(new UIRect(), new UIGridLayout(), new UIImage())));
                    K8.a.I(new C0217a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public class d implements dd.d {

                public class C0218a implements Runnable {

                    public final GameObject f8777b;

                    public C0218a(final GameObject val$no) {
                        this.f8777b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8777b);
                    }
                }

                public d() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject gameObject;
                    GameObject m10 = a.m();
                    if (m10 == null) {
                        try {
                            Toast.makeText(N7.c.o(), "UIController could not be found!", 0).show();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    GameObject g10 = G3.b.g("Flex layout", m10, new LinkedList(Arrays.asList(new UIRect(), new UIFlexLayout(), new UIImage())));
                    K8.a.I(new C0218a(g10));
                    if (g10 == null || (gameObject = u.this.f8703b) == null) {
                        return;
                    }
                    g10.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }

            public c() {
                add(new C12908b("Vertical layout", new C0213a()));
                add(new C12908b("Horizontal layout", new b()));
                add(new C12908b("Grid layout", new C0216c()));
                add(new C12908b("Flex layout", new d()));
            }
        }

        public class d extends SteppedArrayList<C12908b> {

            public class C0219a implements dd.d {

                public class C0220a implements Runnable {

                    public final GameObject f8781b;

                    public C0220a(final GameObject val$no) {
                        this.f8781b = val$no;
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(this.f8781b);
                    }
                }

                public C0219a() {
                }

                @Override
                public void onSelected(View v10) {
                    GameObject r10 = G3.b.r("UI", new LinkedList(Arrays.asList(new UIController())));
                    r10.Q1();
                    K8.a.I(new C0220a(r10));
                    GameObject gameObject = u.this.f8703b;
                    if (gameObject != null) {
                        r10.F1(gameObject);
                        u.this.f8703b.getEditor().i(true);
                    }
                }
            }

            public d() {
                add(new C12908b("UI controller", new C0219a()));
            }
        }

        public class e implements dd.d {
            public e() {
            }

            @Override
            public void onSelected(View v10) {
                Vector3 vector3;
                try {
                    vector3 = Cursor3D.f71511K.m1249clone();
                } catch (Exception e10) {
                    Vector3 vector32 = new Vector3();
                    e10.printStackTrace();
                    vector3 = vector32;
                }
                GameObject v11 = G3.b.v("3D UI", vector3, "@@ASSET@@Engine/Primitives/Models/render_target.obj", N7.c.o(), EnumC13053a.FADE, false, false);
                v11.r(new RenderTextureExtractor());
                v11.r(new UIController(UIController.s.FixedResolution, 512, 512, false, false));
                v11.r(new UI3DInputSystem());
                v11.transform.setScale(1.0f, 1.0f, 0.1f);
                GameObject gameObject = u.this.f8703b;
                if (gameObject != null) {
                    v11.F1(gameObject);
                    u.this.f8703b.getEditor().i(true);
                }
            }
        }

        public u(final GameObject val$parent) {
            this.f8703b = val$parent;
            add(new C12908b("Widgets", new C0189a()));
            add(new C12908b("Scroll view", new b()));
            add(new C12908b("Layouts", new c()));
            add(new C12908b("Controller", new d()));
            add(new C12908b("3D UI", new e()));
            add(new C12908b(C12908b.EnumC1575b.Tittle, "More coming soon..."));
        }
    }

    public class v implements d {

        public final GameObject f8784a;

        public v(final GameObject val$parent) {
            this.f8784a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_SPHERE");
            GameObject q10 = b.q("Sphere", "@@ASSET@@Engine/Primitives/Models/sphere.obj", c.o());
            if (q10 == null || (gameObject = this.f8784a) == null) {
                return;
            }
            q10.F1(gameObject);
            this.f8784a.getEditor().i(true);
        }
    }

    public class w implements d {

        public final GameObject f8785a;

        public w(final GameObject val$parent) {
            this.f8785a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_SOUND_PLAYER");
            GameObject j10 = b.j("Sound Player", a.a(), new SoundPlayer());
            if (j10 == null || (gameObject = this.f8785a) == null) {
                return;
            }
            j10.F1(gameObject);
            this.f8785a.getEditor().i(true);
        }
    }

    public class x implements d {

        public final GameObject f8786a;

        public x(final GameObject val$parent) {
            this.f8786a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_SOUND_LISTENER");
            GameObject j10 = b.j("Sound Listener", a.a(), new SoundListener());
            if (j10 == null || (gameObject = this.f8786a) == null) {
                return;
            }
            j10.F1(gameObject);
            this.f8786a.getEditor().i(true);
        }
    }

    public class y implements d {

        public final GameObject f8787a;

        public y(final GameObject val$parent) {
            this.f8787a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            C12735c.a("NEW_OBJECT_EMPTY");
            GameObject gameObject = this.f8787a;
            if (gameObject == null) {
                b.u(Empty.f74413H, a.a());
            } else {
                b.t(Empty.f74413H, gameObject);
            }
        }
    }

    public class z implements d {

        public final GameObject f8788a;

        public z(final GameObject val$parent) {
            this.f8788a = val$parent;
        }

        @Override
        public void onSelected(View v10) {
            GameObject gameObject;
            C12735c.a("NEW_OBJECT_SPHERE_LP");
            GameObject q10 = b.q("Sphere LP", "@@ASSET@@Engine/Primitives/Models/sphere_lp.obj", c.o());
            if (q10 == null || (gameObject = this.f8788a) == null) {
                return;
            }
            q10.F1(gameObject);
            this.f8788a.getEditor().i(true);
        }
    }

    public static Vector3 a() {
        return c();
    }

    public static C12908b b(GameObject parent) {
        return new C12908b(Camera.f73075M8, new C2618c(parent));
    }

    public static Vector3 c() {
        try {
            return Cursor3D.f71511K.m1249clone();
        } catch (Exception e10) {
            Vector3 vector3 = new Vector3();
            e10.printStackTrace();
            return vector3;
        }
    }

    public static List<C12908b> d(GameObject parent) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C12908b(Lang.l(Lang.T.PARTICLE_EMITTER), new o(parent)));
        linkedList.add(new C12908b("Trail Renderer", new p(parent)));
        linkedList.add(new C12908b(WindEffect.f77880O, new q(parent)));
        return linkedList;
    }

    public static C12908b e(GameObject parent) {
        return new C12908b(Lang.l(Lang.T.EMPTY), new y(parent));
    }

    public static List<C12908b> f(GameObject parent) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C12908b(ObjectPool.f74700L8, new i(parent)));
        linkedList.add(new C12908b(Lang.l(Lang.T.TERRAIN), new j(parent)));
        linkedList.add(new C12908b(Lang.l(Lang.T.ROAD), new l(parent)));
        linkedList.add(new C12908b(MeshCurve.f74198H4, new m(parent)));
        linkedList.add(new C12908b("LOD Example", new n(parent)));
        return linkedList;
    }

    public static List<C12908b> g(GameObject parent) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C12908b(Lang.l(Lang.T.SUN_LIGHT), new r(parent)));
        linkedList.add(new C12908b(Lang.l(Lang.T.POINT_LIGHT), new s(parent)));
        linkedList.add(new C12908b(Lang.l(Lang.T.SPOT_LIGHT), new t(parent)));
        return linkedList;
    }

    public static List<C12908b> h(GameObject parent) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C12908b("NavMesh bake", new C2621f(parent)));
        Ac.b bVar = Lang.T.ROUTE;
        linkedList.add(new C12908b(Lang.l(bVar), new g(parent)));
        linkedList.add(new C12908b(Lang.l(bVar) + " Follower", new h(parent)));
        return linkedList;
    }

    public static List<C12908b> i(GameObject parent) {
        return new LinkedList();
    }

    public static List<C12908b> j(GameObject parent) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C12908b(Lang.l(Lang.T.CUBE), new k(parent)));
        Ac.b bVar = Lang.T.SPHERE;
        linkedList.add(new C12908b(Lang.l(bVar), new v(parent)));
        linkedList.add(new C12908b(Lang.l(bVar) + " LowPoly", new z(parent)));
        linkedList.add(new C12908b(Lang.l(Lang.T.CYLINDER), new A(parent)));
        linkedList.add(new C12908b("Cone", new B(parent)));
        linkedList.add(new C12908b(Lang.l(Lang.T.CIRCLE), new C(parent)));
        linkedList.add(new C12908b(Lang.l(Lang.T.TORUS), new D(parent)));
        linkedList.add(new C12908b(Lang.l(Lang.T.CAPSULE), new E(parent)));
        linkedList.add(new C12908b(Lang.l(Lang.T.HALF_CAPSULE), new F(parent)));
        linkedList.add(new C12908b(Lang.l(Lang.T.SQUARE), new C0187a(parent)));
        linkedList.add(new C12908b(Lang.l(Lang.T.SQUARE_90), new C2617b(parent)));
        return linkedList;
    }

    public static List<C12908b> k(GameObject parent) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C12908b(Lang.l(Lang.T.SOUND_PLAYER), new w(parent)));
        linkedList.add(new C12908b(Lang.l(Lang.T.SOUND_LISTENER), new x(parent)));
        return linkedList;
    }

    public static List<C12908b> l(GameObject parent) {
        return new u(parent);
    }

    public static GameObject m() {
        C3589a c3589a = W7.b.f27309i;
        GameObject gameObject = c3589a.f31909a.f31910a;
        if (gameObject != null) {
            if (gameObject.d0(UIController.class) != null) {
                return c3589a.f31909a.f31910a;
            }
            Component i02 = c3589a.f31909a.f31910a.i0(UIController.class);
            if (i02 != null) {
                return i02.f79250n;
            }
        }
        Component k10 = com.itsmagic.engine.Engines.Engine.World.a.k(UIController.class);
        if (k10 != null) {
            return k10.f79250n;
        }
        GameObject r10 = b.r("UI", new LinkedList(Arrays.asList(new UIController())));
        com.itsmagic.engine.Engines.Engine.World.b.f(r10, null);
        return r10;
    }

    public static List<C12908b> n() {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C12908b(Lang.l(Lang.T.VOXEL_CHUNK), new C2619d()));
        linkedList.add(new C12908b(Lang.l(Lang.T.VOXEL_SPAWNER), new C2620e()));
        return linkedList;
    }
}
