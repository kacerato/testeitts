package com.itsmagic.engine.Engines.Engine.World;

import Lb.g;
import Lb.k;
import android.content.Context;
import android.util.Log;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.Area.AreaEditorComponent;
import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Rigidbody;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Bloom;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.PrecomputedAtmosphereSkybox;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.SSAO;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ToneMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Vignette;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Manager.RenderEffectArea;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Utils.HideObjectFromPanel;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.World.Settings.BakeSettings;
import com.itsmagic.engine.Engines.Engine.World.Settings.EditorCameraSettings;
import com.itsmagic.engine.Engines.Engine.World.Settings.PhysicsSettings;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Utils.FileGUID;
import java.io.File;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.function.Consumer;
import ob.b;

public class World implements Serializable {

    @Expose
    private BakeSettings bakeSettings;

    @Expose
    public boolean createExampleWhenOpen;

    public g f80013d;

    @Expose
    public EditorCameraSettings editorCameraSettings;

    @Expose
    public FileGUID f80014fg;

    @Expose
    public String fileName;

    @Expose
    public String folder;

    @Expose
    private Nb.a graphicsSettings;

    @Expose
    public boolean isArea;

    @Expose
    private Nb.b lightSettings;

    @Expose
    private PhysicsSettings physicsSettings;

    public final List<GameObject> f80011b = new SteppedArrayList(25);

    public boolean f80012c = false;

    public class a implements Consumer<Component> {

        public final Lb.a f80015b;

        public final c f80016c;

        public final boolean f80017d;

        public a(final Lb.a val$listener, final c val$bundle, final boolean val$isAsync) {
            this.f80015b = val$listener;
            this.f80016c = val$bundle;
            this.f80017d = val$isAsync;
        }

        @Override
        public void accept(Component component) {
            String str;
            try {
                component.loadAsync(this.f80015b);
                if (component.hasMaterialForAsyncLoad()) {
                    List<Material> materialsForAsyncLoad = component.getMaterialsForAsyncLoad();
                    synchronized (this.f80016c.f80027c) {
                        this.f80016c.f80027c.addAll(materialsForAsyncLoad);
                    }
                    if (this.f80017d) {
                        for (Material material : materialsForAsyncLoad) {
                            for (int i10 = 0; i10 < material.B().size(); i10++) {
                                SerializableShaderEntry serializableShaderEntry = material.B().get(i10);
                                if (serializableShaderEntry.type.equals(SerializableShaderEntry.f81152f) && (str = serializableShaderEntry.data) != null && !str.isEmpty()) {
                                    try {
                                        serializableShaderEntry.f81158a = SerializableShaderEntry.t(serializableShaderEntry);
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public class b implements b.a {

        public final c f80019a;

        public final Lb.a f80020b;

        public final int f80021c;

        public final CountDownLatch f80022d;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                b.this.f80020b.e();
                b.this.f80022d.countDown();
            }
        }

        public b(final c val$bundle, final Lb.a val$listener, final int val$totalMaterials, final CountDownLatch val$latch) {
            this.f80019a = val$bundle;
            this.f80020b = val$listener;
            this.f80021c = val$totalMaterials;
            this.f80022d = val$latch;
        }

        @Override
        public boolean run() {
            int i10;
            synchronized (this.f80019a.f80027c) {
                try {
                    i10 = 0;
                    for (Material material : this.f80019a.f80027c) {
                        if (material != null && !material.F()) {
                            i10++;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (i10 <= 0) {
                K8.a.B(new a());
                return false;
            }
            this.f80020b.b("Shaders: " + (this.f80021c - i10) + "/" + this.f80021c);
            return true;
        }
    }

    public static class c {

        public int f80025a;

        public final List<Component> f80026b = new SteppedArrayList();

        public final Set<Material> f80027c = new HashSet();
    }

    public interface d {
        void a(GameObject object, int index);
    }

    public static World h(String json) {
        return i(json, false);
    }

    public static World i(String json, boolean ignoreGUID) {
        World world;
        if (json != null && !json.isEmpty()) {
            try {
                JsonObject asJsonObject = JsonParser.parseString(json).getAsJsonObject();
                try {
                    world = (World) X7.a.m().fromJson(json, World.class);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    world = null;
                }
                if (world != null) {
                    if (asJsonObject.has("childrens")) {
                        JsonArray asJsonArray = asJsonObject.getAsJsonArray("childrens");
                        for (int i10 = 0; i10 < asJsonArray.size(); i10++) {
                            world.q().add(GameObject.Q(asJsonArray.get(i10).getAsJsonObject(), true, false));
                        }
                    }
                    if (asJsonObject.has("serializedObjects")) {
                        JsonArray asJsonArray2 = asJsonObject.getAsJsonArray("serializedObjects");
                        for (int i11 = 0; i11 < asJsonArray2.size(); i11++) {
                            world.q().add(GameObject.Q(asJsonArray2.get(i11).getAsJsonObject(), true, false));
                        }
                    } else {
                        Log.e("World", "Failed to load objects from world");
                    }
                }
                return world;
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return null;
    }

    public void A(FileGUID fg2) {
        this.f80014fg = fg2;
        for (GameObject gameObject : q()) {
            if (gameObject != null) {
                gameObject.D1(fg2);
            }
        }
    }

    public void B(Nb.a graphicsSettings) {
        this.graphicsSettings = graphicsSettings;
    }

    public void C(Nb.b lightSettings) {
        this.lightSettings = lightSettings;
    }

    public void D(List<GameObject> objects) {
        this.f80011b.clear();
        this.f80011b.addAll(objects);
    }

    public void E(GameObject parent) {
        if (parent == null) {
            for (GameObject gameObject : q()) {
                gameObject.f79294k = null;
                E(gameObject);
            }
            return;
        }
        for (GameObject gameObject2 : parent.z0()) {
            gameObject2.f79294k = parent;
            E(gameObject2);
        }
    }

    public void F(PhysicsSettings physicsSettings) {
        this.physicsSettings = physicsSettings;
    }

    public void G() {
        for (int i10 = 0; i10 < q().size(); i10++) {
            this.f80011b.get(i10).S1();
        }
    }

    public final void H(int x10, int y10) {
        if (x10 < 0 || x10 >= this.f80011b.size()) {
            throw new ArrayIndexOutOfBoundsException("Invalid child at " + x10);
        }
        if (y10 < 0 || y10 >= this.f80011b.size()) {
            throw new ArrayIndexOutOfBoundsException("Invalid child at " + y10);
        }
        GameObject gameObject = this.f80011b.get(x10);
        List<GameObject> list = this.f80011b;
        list.set(x10, list.get(y10));
        this.f80011b.set(y10, gameObject);
        ObjectsPanel.N1();
    }

    public void I(GameObject a10, GameObject b10) {
        if (a10 == null) {
            throw new NullPointerException("ObjectA can't be null");
        }
        if (b10 == null) {
            throw new NullPointerException("ObjectB can't be null");
        }
        if (!this.f80011b.contains(a10)) {
            throw new NullPointerException("Object A is not a child of this object");
        }
        if (!this.f80011b.contains(b10)) {
            throw new NullPointerException("Object A is not a child of this object");
        }
        H(this.f80011b.indexOf(a10), this.f80011b.indexOf(b10));
    }

    public void J() {
        for (int i10 = 0; i10 < this.f80011b.size(); i10++) {
            GameObject gameObject = this.f80011b.get(i10);
            if (gameObject != null && (!c8.b.k() || gameObject.isGarbage() || !gameObject.dontDestroyOnLoad)) {
                gameObject.Y1();
            }
        }
        this.f80011b.clear();
        this.folder = null;
        this.fileName = null;
    }

    public final void a() {
        GameObject gameObject = new GameObject("@-EDITOR", new Transform(new Vector3(), new Quaternion(), new Vector3(1.0f)));
        this.f80011b.add(gameObject);
        gameObject.r(new HideObjectFromPanel());
        gameObject.r(new AreaEditorComponent());
        GameObject gameObject2 = new GameObject("@-POST PROCESSING", new Transform(new Vector3(), new Quaternion(), new Vector3(5000000.0f)));
        this.f80011b.add(gameObject2);
        gameObject2.r(new HideObjectFromPanel());
        gameObject2.r(new RenderEffectArea());
        gameObject2.r(new PrecomputedAtmosphereSkybox());
        GameObject gameObject3 = new GameObject("==============", new Transform(new Vector3(), new Quaternion(), new Vector3(1.0f)));
        this.f80011b.add(gameObject3);
        gameObject3.r(new HideObjectFromPanel());
        GameObject gameObject4 = new GameObject("Ground", new Transform(new Vector3(0.0f, -1.0f, 0.0f), new Quaternion(), new Vector3(10.0f, 1.0f, 10.0f)));
        this.f80011b.add(gameObject4);
        gameObject4.r(new ModelRenderer("@@ASSET@@Engine/Primitives/Models/cube.obj", com.itsmagic.engine.Core.Components.ProjectController.a.t("Files/Textures/Grass.jpg")));
        gameObject4.r(new Collider(Collider.o.Box));
        GameObject gameObject5 = new GameObject("Sphere", new Transform(new Vector3(0.0f, 1.5f, 0.0f), new Quaternion()));
        gameObject5.r(new ModelRenderer("@@ASSET@@Engine/Primitives/Models/sphere.obj", com.itsmagic.engine.Core.Components.ProjectController.a.r(new ColorINT(255, 10, 10))));
        gameObject5.r(new Collider(Collider.o.Sphere));
        this.f80011b.add(gameObject5);
        GameObject gameObject6 = new GameObject("Sun light", new Transform(new Vector3(0.0f, 10.0f, 0.0f), new Quaternion(0.707d, 0.707d, 0.0d, 0.0d)));
        gameObject6.r(new SunLight());
        this.f80011b.add(gameObject6);
    }

    public final void b() {
        GameObject gameObject = new GameObject("POST PROCESSING", new Transform(new Vector3(), new Quaternion(), new Vector3(50.0f)));
        this.f80011b.add(gameObject);
        gameObject.r(new RenderEffectArea());
        gameObject.r(new PrecomputedAtmosphereSkybox());
        gameObject.r(new SSAO());
        gameObject.r(new Vignette());
        gameObject.r(new ToneMapper());
        gameObject.r(new Bloom());
        GameObject gameObject2 = new GameObject("Ground", new Transform(new Vector3(0.0f, -1.0f, 0.0f), new Quaternion(), new Vector3(10.0f, 1.0f, 10.0f)));
        this.f80011b.add(gameObject2);
        gameObject2.r(new ModelRenderer("@@ASSET@@Engine/Primitives/Models/cube.obj", com.itsmagic.engine.Core.Components.ProjectController.a.t("Files/Textures/Grass.jpg")));
        gameObject2.r(new Collider(Collider.o.Box));
        GameObject gameObject3 = new GameObject("Sphere", new Transform(new Vector3(0.0f, 1.5f, 0.0f), new Quaternion()));
        gameObject3.r(new ModelRenderer("@@ASSET@@Engine/Primitives/Models/sphere.obj", com.itsmagic.engine.Core.Components.ProjectController.a.r(new ColorINT(255, 10, 10))));
        gameObject3.r(new Rigidbody(5.0f));
        gameObject3.r(new Collider(Collider.o.Sphere));
        this.f80011b.add(gameObject3);
        GameObject gameObject4 = new GameObject("Sun light", new Transform(new Vector3(0.0f, 10.0f, 0.0f), new Quaternion(0.707d, 0.707d, 0.0d, 0.0d)));
        gameObject4.r(new SunLight());
        this.f80011b.add(gameObject4);
        GameObject gameObject5 = new GameObject(Camera.f73075M8, new Transform(new Vector3(0.0f, 1.0f, -4.0f), new Quaternion(1.0f, 0.0f, 0.0f, 0.0f)));
        gameObject5.r(new Camera());
        this.f80011b.add(gameObject5);
    }

    public GameObject c(int index) {
        return this.f80011b.get(index);
    }

    public int d() {
        return this.f80011b.size();
    }

    public void e() {
        for (int i10 = 0; i10 < this.f80011b.size(); i10++) {
            GameObject gameObject = this.f80011b.get(i10);
            if (gameObject != null) {
                gameObject.Y1();
            }
        }
        this.f80011b.clear();
    }

    public c f() {
        c cVar = new c();
        int i10 = 0;
        for (int i11 = 0; i11 < this.f80011b.size(); i11++) {
            i10 += this.f80011b.get(i11).P(cVar.f80026b);
        }
        cVar.f80025a = i10;
        return cVar;
    }

    public void g() {
        new File(k.k(true)).mkdirs();
        N7.c.t();
        if (this.isArea) {
            a();
        } else {
            b();
        }
        v();
    }

    public GameObject j(GameObject parent, String name) {
        if (parent == null || parent.z0() == null || parent.z0().isEmpty()) {
            return null;
        }
        for (GameObject gameObject : parent.z0()) {
            if (gameObject != null && gameObject.transform != null) {
                if (name.equalsIgnoreCase(gameObject.getName())) {
                    return gameObject;
                }
                GameObject j10 = j(gameObject, name);
                if (j10 != null) {
                    return j10;
                }
            }
        }
        return null;
    }

    public GameObject k(String name) {
        for (GameObject gameObject : q()) {
            if (gameObject != null) {
                if (gameObject.J(name)) {
                    return gameObject;
                }
                GameObject j10 = j(gameObject, name);
                if (j10 != null) {
                    return j10;
                }
            }
        }
        return null;
    }

    public void l(d listener) {
        int size = this.f80011b.size();
        for (int i10 = 0; i10 < size; i10++) {
            listener.a(this.f80011b.get(i10), i10);
        }
    }

    public BakeSettings m() {
        if (this.bakeSettings == null) {
            this.bakeSettings = new BakeSettings();
        }
        return this.bakeSettings;
    }

    public EditorCameraSettings n() {
        if (this.editorCameraSettings == null) {
            this.editorCameraSettings = new EditorCameraSettings();
        }
        return this.editorCameraSettings;
    }

    public Nb.a o() {
        if (this.graphicsSettings == null) {
            this.graphicsSettings = new Nb.a();
        }
        return this.graphicsSettings;
    }

    public Nb.b p() {
        if (this.lightSettings == null) {
            this.lightSettings = new Nb.b();
        }
        return this.lightSettings;
    }

    public List<GameObject> q() {
        return this.f80011b;
    }

    public PhysicsSettings r() {
        if (this.physicsSettings == null) {
            this.physicsSettings = new PhysicsSettings();
        }
        return this.physicsSettings;
    }

    public int s(GameObject child) {
        return this.f80011b.indexOf(child);
    }

    public void u(c bundle, Lb.a listener, boolean isAsync) {
        int size;
        bundle.f80026b.forEach(new a(listener, bundle, isAsync));
        Iterator<Material> it = bundle.f80027c.iterator();
        while (it.hasNext()) {
            it.next().f78883c = false;
        }
        if (isAsync) {
            listener.c();
            CountDownLatch countDownLatch = new CountDownLatch(1);
            synchronized (bundle.f80027c) {
                size = bundle.f80027c.size();
            }
            K8.a.J(new ob.b(new b(bundle, listener, size, countDownLatch)));
            try {
                countDownLatch.await();
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }
    }

    public void v() {
        for (int i10 = 0; i10 < q().size(); i10++) {
            GameObject gameObject = this.f80011b.get(i10);
            gameObject.t1(true);
            gameObject.Z1();
            gameObject.r1();
        }
    }

    public void w(BuildDictionary dictionary) {
        for (int i10 = 0; i10 < this.f80011b.size(); i10++) {
            GameObject gameObject = this.f80011b.get(i10);
            if (gameObject != null) {
                gameObject.reloadFilesPaths(dictionary);
            }
        }
        p().a(dictionary);
        o().a(dictionary);
        r().d(dictionary);
        m().a(dictionary);
    }

    public JsonElement x(Context context) {
        JsonElement jsonTree = X7.a.m().toJsonTree(this);
        JsonObject jsonObject = (JsonObject) jsonTree;
        JsonArray y10 = y(0);
        if (y10 == null) {
            return null;
        }
        jsonObject.add("serializedObjects", y10);
        return jsonTree;
    }

    public final JsonArray y(int tries) {
        try {
            JsonArray jsonArray = new JsonArray();
            for (int i10 = 0; i10 < this.f80011b.size(); i10++) {
                GameObject gameObject = this.f80011b.get(i10);
                if (!gameObject.L0(Component.e.IgnoreSave)) {
                    jsonArray.add(gameObject.x1());
                }
            }
            return jsonArray;
        } catch (Exception e10) {
            e10.printStackTrace();
            if (tries < 5) {
                return y(tries + 1);
            }
            return null;
        }
    }

    public void z(BakeSettings bakeSettings) {
        this.bakeSettings = bakeSettings;
    }
}
