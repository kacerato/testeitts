package com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject;

import C5.b;
import Ic.C2632k;
import Ic.C2634m;
import JAVARuntime.ObjectFile;
import JAVARuntime.Runnable;
import JAVARuntime.SpatialObject;
import M7.k;
import android.content.Context;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Input.Key;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine.Utils.FileGUID;
import d7.C12881a;
import f5.C13189d;
import gb.C13315c;
import gb.C13317e;
import gb.C13319g;
import j9.C13813a;
import java.io.File;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

public class GameObject extends C2634m implements Serializable {

    @Expose
    public boolean allowAnimations;

    public final transient com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a f79286b;

    public final transient List<GameObject> f79287c;

    @Expose
    public boolean clonedByPrefab;

    public final transient List<GameObject> f79288d;

    @Expose
    public boolean dontDestroyOnLoad;

    public final transient List<h> f79289e;

    @Expose
    private InspectorEditor editor;

    @Expose
    private boolean enabled;

    @Expose
    public FileGUID f79290fg;

    public transient boolean f79291g;

    @Expose
    public C13315c groupSettings;

    @Expose
    private GUID guid;

    public transient boolean f79292i;

    public transient boolean f79293j;

    public transient GameObject f79294k;

    public transient GameObject f79295l;

    public final transient C13319g f79296m;

    public transient boolean f79297n;

    @Expose
    private String name;

    public boolean f79298o;

    @Expose
    public ColorINT objectsPanelColor;

    @Expose
    public final InspectorEditor optionsEditor;

    public transient int f79299p;

    public SpatialObject f79300q;

    public k f79301r;

    @Expose
    private boolean selectable;

    @Expose
    private String tag;

    @Expose
    public Transform transform;

    @Expose
    private boolean visible;

    public class a implements D5.h {

        public class C1341a implements Runnable {

            public final Variable f79303b;

            public C1341a(final Variable val$result) {
                this.f79303b = val$result;
            }

            @Override
            public void run() {
                GameObject.this.tag = this.f79303b.str_value;
            }
        }

        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", GameObject.this.tag + "");
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                K8.a.I(new C1341a(result));
            }
        }
    }

    public class b implements Runnable {

        public final boolean f79305b;

        public b(final boolean val$enabled) {
            this.f79305b = val$enabled;
        }

        @Override
        public void run() {
            GameObject.this.enabled = this.f79305b;
            GameObject gameObject = GameObject.this;
            gameObject.t1(gameObject.f79298o);
            GameObject.this.q1();
            ObjectsPanel.O1(GameObject.this);
        }
    }

    public class c implements Runnable {

        public final boolean f79307b;

        public final boolean f79308c;

        public c(final boolean val$enabled, final boolean val$callUpdateView) {
            this.f79307b = val$enabled;
            this.f79308c = val$callUpdateView;
        }

        @Override
        public void run() {
            GameObject.this.enabled = this.f79307b;
            GameObject gameObject = GameObject.this;
            gameObject.t1(gameObject.f79298o);
            GameObject.this.q1();
            if (this.f79308c) {
                ObjectsPanel.O1(GameObject.this);
            }
        }
    }

    public interface d {
        void a(GameObject gameObject, GameObject child, int index);
    }

    public interface e {
        boolean a(Component component);
    }

    public class f {

        public float f79310a = 0.0f;

        public Vector3 f79311b = new Vector3();

        public boolean f79312c;

        public f() {
        }

        public Vector3 d() {
            return this.f79311b.m1249clone();
        }

        public float e() {
            return this.f79310a;
        }

        public boolean f() {
            return this.f79312c;
        }
    }

    public class g {

        public float f79314a = 0.0f;

        public Vector3 f79315b = new Vector3();

        public boolean f79316c;

        public g() {
        }

        public Vector3 d() {
            return this.f79315b.m1249clone();
        }

        public float e() {
            return this.f79314a;
        }

        public boolean f() {
            return this.f79316c;
        }
    }

    public interface h {
        void a(GameObject object);
    }

    public GameObject() {
        this.name = "Unamed";
        this.transform = new Transform();
        this.enabled = true;
        this.guid = new GUID();
        this.tag = "";
        this.allowAnimations = true;
        this.optionsEditor = new InspectorEditor();
        this.visible = true;
        this.selectable = true;
        this.f79286b = new com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a(this);
        this.f79287c = new SteppedArrayList(10);
        this.f79288d = new SteppedArrayList(10);
        this.f79289e = new SteppedArrayList(2);
        this.f79291g = false;
        this.f79292i = false;
        this.f79296m = new C13319g();
        this.f79297n = false;
        this.f79298o = true;
        this.f79299p = 1;
        this.f79301r = null;
        if (!K8.a.r()) {
            Transform transform = new Transform();
            transform.l3(true);
            this.transform = transform;
            transform.setGameObject(this);
            return;
        }
        this.transform = new Transform(this);
    }

    public static GameObject Q(JsonObject json, boolean ignoreGUID, boolean loadJavaComponents) {
        return S(json, ignoreGUID, loadJavaComponents, null);
    }

    public static GameObject S(JsonObject json, boolean ignoreGUID, boolean loadJavaComponents, e componentFilter) {
        JsonArray asJsonArray;
        if (json == null) {
            return null;
        }
        try {
            GameObject gameObject = (GameObject) X7.a.m().fromJson((JsonElement) json, GameObject.class);
            if (gameObject != null) {
                if (gameObject.transform == null) {
                    gameObject.transform = new Transform();
                }
                gameObject.transform.e3(gameObject);
                gameObject.getGuid();
                gameObject.transform.onDeserialized();
                if (json.has("serializedComponents")) {
                    gameObject.f79286b.m(gameObject, com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a.l(json.getAsJsonObject("serializedComponents"), gameObject, loadJavaComponents, componentFilter));
                }
                if (json.has("childrens") && (asJsonArray = json.getAsJsonArray("childrens")) != null) {
                    for (int i10 = 0; i10 < asJsonArray.size(); i10++) {
                        GameObject S10 = S(asJsonArray.get(i10).getAsJsonObject(), ignoreGUID, loadJavaComponents, componentFilter);
                        S10.f79294k = gameObject;
                        gameObject.z0().add(S10);
                    }
                }
                if (json.has("serializedChildren")) {
                    JsonArray asJsonArray2 = json.getAsJsonArray("serializedChildren");
                    for (int i11 = 0; i11 < asJsonArray2.size(); i11++) {
                        GameObject Q10 = Q(asJsonArray2.get(i11).getAsJsonObject(), ignoreGUID, loadJavaComponents);
                        Q10.f79294k = gameObject;
                        gameObject.z0().add(Q10);
                        Q10.W1();
                    }
                }
            }
            return gameObject;
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static GameObject T(String json, boolean ignoreGUID, boolean loadJavaComponents) {
        return U(json, ignoreGUID, loadJavaComponents, null);
    }

    public static GameObject T1(String tittle) {
        GameObject gameObject = new GameObject(tittle);
        gameObject.Q1();
        return gameObject;
    }

    public static GameObject U(String json, boolean ignoreGUID, boolean loadJavaComponents, e componentFilter) {
        if (json != null && !json.trim().isEmpty()) {
            try {
                return S(JsonParser.parseString(json).getAsJsonObject(), ignoreGUID, loadJavaComponents, componentFilter);
            } catch (JsonSyntaxException e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static GameObject k1(ObjectFile pFile) {
        GameObject instantiate = pFile.instantiate();
        if (instantiate == null) {
            return null;
        }
        if (instantiate.transform == null) {
            instantiate.transform = new Transform();
        }
        instantiate.f79294k = null;
        com.itsmagic.engine.Engines.Engine.World.b.f(instantiate, null);
        return instantiate;
    }

    public static GameObject o1() {
        return p1("Unnamed");
    }

    public static GameObject p1(String name) {
        Transform transform = new Transform();
        transform.l3(true);
        return new GameObject(name, transform);
    }

    public g A(Vector3 virtualCenter) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        G(steppedArrayList, steppedArrayList2);
        g gVar = new g();
        if (steppedArrayList.isEmpty() || steppedArrayList2.isEmpty()) {
            gVar.f79316c = true;
        } else {
            gVar.f79315b.set(virtualCenter);
            float f10 = 0.0f;
            for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                float lengthF = steppedArrayList.get(i10).sub(virtualCenter).lengthF() + steppedArrayList2.get(i10).floatValue();
                if (lengthF > f10) {
                    f10 = lengthF;
                }
            }
            gVar.f79314a = f10;
        }
        return gVar;
    }

    public void A1(boolean editor) {
        this.f79292i = editor;
        Iterator<GameObject> it = z0().iterator();
        while (it.hasNext()) {
            it.next().A1(editor);
        }
    }

    public void B(String name, Object... value) {
        if (c1()) {
            throw new RuntimeException("Unsupported by groups");
        }
        if (name == null || name.isEmpty()) {
            throw new NullPointerException("Function name can`t be null or empty");
        }
        this.f79286b.d(name, value);
    }

    public int B0() {
        return this.f79299p;
    }

    public void B1(boolean enabled, boolean callUpdateView) {
        if (this.enabled != enabled) {
            K8.a.B(new c(enabled, callUpdateView));
        }
    }

    public GameObject C(int index) {
        return this.f79287c.get(index);
    }

    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a C0() {
        return this.f79286b;
    }

    public void C1(boolean enabled) {
        boolean z10 = this.enabled;
        boolean z11 = z10 != enabled;
        boolean z12 = z10 != enabled;
        this.enabled = enabled;
        t1(this.f79298o);
        if (z11) {
            q1();
        }
        if (z12) {
            ObjectsPanel.O1(this);
        }
    }

    public int D() {
        return this.f79287c.size();
    }

    public InspectorEditor D0() {
        return this.editor;
    }

    public void D1(FileGUID fg2) {
        this.f79290fg = fg2;
        for (GameObject gameObject : z0()) {
            if (gameObject != null) {
                gameObject.D1(fg2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GameObject clone() {
        GameObject clone;
        if (this.transform == null) {
            return null;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (this.f79287c != null) {
            for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
                GameObject gameObject = this.f79287c.get(i10);
                if (gameObject != null && (clone = gameObject.clone()) != null) {
                    steppedArrayList.add(clone);
                }
            }
        }
        GameObject gameObject2 = new GameObject(getGuid().clone());
        Transform clone2 = this.transform.clone();
        gameObject2.transform = clone2;
        clone2.setGameObject(gameObject2);
        for (int i11 = 0; i11 < steppedArrayList.size(); i11++) {
            GameObject gameObject3 = (GameObject) steppedArrayList.get(i11);
            if (gameObject3 != null) {
                gameObject3.f79294k = gameObject2;
                gameObject2.f79287c.add(gameObject3);
            }
        }
        gameObject2.enabled = this.enabled;
        gameObject2.f79286b.f(gameObject2, this.f79286b);
        gameObject2.tag = this.tag;
        gameObject2.dontDestroyOnLoad = this.dontDestroyOnLoad;
        gameObject2.visible = this.visible;
        gameObject2.selectable = this.selectable;
        gameObject2.objectsPanelColor = ColorINT.k(this.objectsPanelColor);
        gameObject2.name = this.name;
        C13315c c13315c = this.groupSettings;
        if (c13315c != null) {
            gameObject2.groupSettings = c13315c.clone();
        }
        return gameObject2;
    }

    public List<GameObject> E0() {
        return this.f79288d;
    }

    public void E1(String name) {
        if (name == null) {
            throw new NullPointerException("Name can't be null");
        }
        this.name = name;
    }

    public final void F(List<Vector3> centers, List<Float> radii) {
        Vector3 focusCenter;
        if (this.transform != null) {
            for (int i10 = 0; i10 < N(); i10++) {
                Component L10 = L(i10);
                if (L10 != null && L10.isEnabled() && L10.hasFocusBounding() && (focusCenter = L10.getFocusCenter()) != null) {
                    float focusBounding = L10.getFocusBounding();
                    if (Float.isInfinite(focusCenter.getX()) || Float.isInfinite(focusCenter.getY()) || Float.isInfinite(focusCenter.getZ())) {
                        System.out.println("localCenter INFINITY at " + L10.f79250n.getName());
                    } else if (Float.isInfinite(focusBounding)) {
                        System.out.println("radius INFINITY at " + L10.f79250n.getName());
                    } else {
                        centers.add(focusCenter);
                        radii.add(Float.valueOf(focusBounding));
                    }
                }
            }
            for (int i11 = 0; i11 < D(); i11++) {
                C(i11).F(centers, radii);
            }
        }
    }

    public GameObject F0() {
        GameObject gameObject = this.f79294k;
        return gameObject != null ? gameObject.F0() : this;
    }

    public void F1(GameObject parent) {
        com.itsmagic.engine.Engines.Engine.World.b.k(this, parent);
    }

    public final void G(List<Vector3> centers, List<Float> radii) {
        Vector3 renderCenter;
        Transform transform = this.transform;
        if (transform != null) {
            com.itsmagic.engine.Engines.Engine.Vector.f o02 = transform.o0();
            Vector3 J02 = this.transform.J0();
            for (int i10 = 0; i10 < N(); i10++) {
                Component L10 = L(i10);
                if (L10 != null && L10.isEnabled() && L10.hasRenderBounding() && (renderCenter = L10.getRenderCenter()) != null) {
                    float renderBounding = L10.getRenderBounding();
                    if (Float.isInfinite(renderCenter.getX()) || Float.isInfinite(renderCenter.getY()) || Float.isInfinite(renderCenter.getZ())) {
                        System.out.println("localCenter INFINITY at " + L10.f79250n.getName());
                    } else if (Float.isInfinite(renderBounding)) {
                        System.out.println("radius INFINITY at " + L10.f79250n.getName());
                    } else {
                        Vector3 P10 = o02.P(renderCenter, null);
                        float max = renderBounding * Math.max(J02.getX(), Math.max(J02.getY(), J02.getZ()));
                        centers.add(P10);
                        radii.add(Float.valueOf(max));
                    }
                }
            }
            for (int i11 = 0; i11 < D(); i11++) {
                C(i11).G(centers, radii);
            }
        }
    }

    public String G0() {
        if (!Y0()) {
            return this.name;
        }
        return "[E]" + this.name;
    }

    public void G1(SpatialObject run) {
        this.f79300q = run;
    }

    public boolean H(GameObject name) {
        return this.name.equals(name.getName());
    }

    public GameObject H0() {
        return this.f79294k;
    }

    public void H1(boolean selectable) {
        boolean z10 = this.selectable != selectable;
        this.selectable = selectable;
        if (z10) {
            ObjectsPanel.O1(this);
        }
    }

    public boolean I(String name) {
        return this.name.equals(name);
    }

    public C5.b I0(String tittle, Context context) {
        return new C5.b(new a(), "Tag", b.a.SLString);
    }

    public boolean J(String name) {
        return this.name.equalsIgnoreCase(name);
    }

    public Transform J0() {
        return this.transform;
    }

    public void J1(boolean selectable) {
        K1(selectable, true);
    }

    public boolean K(String tagName) {
        String str;
        if (c1() || (str = this.tag) == null) {
            return false;
        }
        return str.equals(tagName);
    }

    public void K0() {
        this.f79286b.T();
        for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
            this.f79287c.get(i10).K0();
        }
    }

    public void K1(boolean selectable, boolean callUpdateView) {
        boolean z10 = this.selectable != selectable;
        this.selectable = selectable;
        for (int i10 = 0; i10 < D(); i10++) {
            GameObject C10 = C(i10);
            if (C10 != null) {
                C10.K1(selectable, callUpdateView);
            }
        }
        if (callUpdateView && z10) {
            ObjectsPanel.O1(this);
        }
    }

    public Component L(int idx) {
        return this.f79286b.g(idx);
    }

    public boolean L0(Component.e type) {
        return this.f79286b.n(type, this) != null;
    }

    public void L1(String tag) {
        this.tag = tag;
    }

    public Component M(int idx) {
        return this.f79286b.h(idx);
    }

    public boolean M0(Class classReference) {
        return this.f79286b.o(classReference, this) != null;
    }

    public void M1(Transform transform) {
        this.transform = transform;
    }

    public int N() {
        return this.f79286b.i();
    }

    public boolean N0(String tittle) {
        return this.f79286b.p(tittle, this) != null;
    }

    public void N1(boolean visible) {
        boolean z10 = this.visible != visible;
        this.visible = visible;
        if (z10) {
            ObjectsPanel.O1(this);
        }
    }

    public int O() {
        return this.f79286b.j();
    }

    public boolean O0() {
        return H0() != null;
    }

    public void O1(boolean visible) {
        P1(visible, true);
    }

    public int P(List<Component> output) {
        this.transform.e3(this);
        int k10 = this.f79286b.k(output, this);
        for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
            k10 += this.f79287c.get(i10).P(output);
        }
        return k10;
    }

    public String P0() {
        return Q0("");
    }

    public void P1(boolean visible, boolean callUpdateView) {
        boolean z10 = this.visible != visible;
        this.visible = visible;
        for (int i10 = 0; i10 < D(); i10++) {
            GameObject C10 = C(i10);
            if (C10 != null) {
                C10.P1(visible, callUpdateView);
            }
        }
        if (callUpdateView && z10) {
            ObjectsPanel.O1(this);
        }
    }

    public String Q0(String child) {
        String str = getName().toString() + "[" + W0() + "]";
        if (child != null && !child.isEmpty()) {
            str = str + "->" + child;
        }
        return C13317e.J(this.f79294k) ? this.f79294k.Q0(str) : str;
    }

    public void Q1() {
        com.itsmagic.engine.Engines.Engine.World.b.e(this);
    }

    public boolean R0() {
        UserController userController;
        try {
            if (Y0()) {
                C8.a aVar = W7.b.f27306f;
                if (aVar == null || (userController = aVar.f2461d) == null || !userController.Q()) {
                    return true;
                }
                return !aVar.f2461d.K().equals("9");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public void R1(GameObject parent) {
        com.itsmagic.engine.Engines.Engine.World.b.f(this, parent);
    }

    public void S1() {
        this.f79286b.S();
        for (int i10 = 0; i10 < z0().size(); i10++) {
            z0().get(i10).S1();
        }
        for (int i11 = 0; i11 < E0().size(); i11++) {
            E0().get(i11).S1();
        }
    }

    public int U0(GameObject child) {
        return this.f79287c.indexOf(child);
    }

    public final void U1(int x10, int y10) {
        if (x10 < 0 || x10 >= this.f79287c.size()) {
            throw new ArrayIndexOutOfBoundsException("Invalid child at " + x10);
        }
        if (y10 < 0 || y10 >= this.f79287c.size()) {
            throw new ArrayIndexOutOfBoundsException("Invalid child at " + y10);
        }
        GameObject gameObject = this.f79287c.get(x10);
        this.f79287c.set(x10, this.f79287c.get(y10));
        this.f79287c.set(y10, gameObject);
        n1();
        ObjectsPanel.N1();
    }

    public int V() {
        return (H0() != null ? H0().V() : 0) + W0();
    }

    public int V0(Component component) {
        return this.f79286b.A(component);
    }

    public void V1(GameObject a10, GameObject b10) {
        if (a10 == null) {
            throw new NullPointerException("ObjectA can't be null");
        }
        if (b10 == null) {
            throw new NullPointerException("ObjectB can't be null");
        }
        if (!this.f79287c.contains(a10)) {
            throw new NullPointerException("Object A is not a child of this object");
        }
        if (!this.f79287c.contains(b10)) {
            throw new NullPointerException("Object A is not a child of this object");
        }
        U1(this.f79287c.indexOf(a10), this.f79287c.indexOf(b10));
    }

    public final boolean W(GameObject o10, GameObject c10) {
        if (o10 == null) {
            return false;
        }
        if (o10 == c10) {
            return true;
        }
        return W(o10.f79294k, c10);
    }

    public int W0() {
        if (C13317e.J(this.f79294k)) {
            return this.f79294k.U0(this);
        }
        World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        if (world == null) {
            return 0;
        }
        return world.s(this);
    }

    public SpatialObject W1() {
        SpatialObject spatialObject = this.f79300q;
        if (spatialObject != null) {
            return spatialObject;
        }
        SpatialObject spatialObject2 = new SpatialObject(this);
        this.f79300q = spatialObject2;
        return spatialObject2;
    }

    public void X(Lb.c event) {
        for (int i10 = 0; i10 < N(); i10++) {
            Component L10 = L(i10);
            if (L10 != null) {
                L10.receiveEvent(event);
            }
        }
        for (int i11 = 0; i11 < D(); i11++) {
            C(i11).X(event);
        }
    }

    public boolean X0() {
        return this.allowAnimations;
    }

    public void X1(a.i listener) {
        this.f79286b.y(this, listener);
        Iterator<GameObject> it = this.f79287c.iterator();
        while (it.hasNext()) {
            it.next().X1(listener);
        }
    }

    public void Y(Lb.c event) {
        for (int i10 = 0; i10 < N(); i10++) {
            Component L10 = L(i10);
            if (L10 != null) {
                L10.receiveEvent(event);
            }
        }
    }

    public boolean Y0() {
        return this.f79292i;
    }

    public void Y1() {
        Transform transform = this.transform;
        if (transform != null) {
            transform.destroy();
        }
        for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
            this.f79287c.get(i10).Y1();
        }
        this.f79287c.clear();
        n1();
        for (int i11 = 0; i11 < this.f79288d.size(); i11++) {
            this.f79288d.get(i11).Y1();
        }
        this.f79288d.clear();
        this.f79286b.T();
        this.transform = null;
        this.f79294k = null;
        this.f79291g = true;
    }

    public GameObject Z(String name) {
        if (name == null || name.isEmpty()) {
            throw new NullPointerException("name can't be empty or null");
        }
        for (int i10 = 0; i10 < D(); i10++) {
            GameObject C10 = C(i10);
            if (C10.I(name)) {
                return C10;
            }
            GameObject Z10 = C10.Z(name);
            if (Z10 != null) {
                return Z10;
            }
        }
        return null;
    }

    public boolean Z0() {
        return W7.b.f27309i.f31909a.f31910a == this;
    }

    public void Z1() {
        C13317e.O(this, false);
        this.transform.setGameObject(this);
        GameObject gameObject = this.f79294k;
        t1(gameObject == null || gameObject.isHierarchyActive());
        for (int i10 = 0; i10 < z0().size(); i10++) {
            GameObject gameObject2 = z0().get(i10);
            gameObject2.f79294k = this;
            gameObject2.Z1();
        }
        for (int i11 = 0; i11 < E0().size(); i11++) {
            GameObject gameObject3 = E0().get(i11);
            gameObject3.f79294k = this;
            gameObject3.Z1();
        }
    }

    public GameObject a0(String name, boolean deep) {
        GameObject Z10;
        if (name == null || name.isEmpty()) {
            throw new NullPointerException("name can't be empty or null");
        }
        for (int i10 = 0; i10 < D(); i10++) {
            GameObject C10 = C(i10);
            if (C10.I(name)) {
                return C10;
            }
            if (deep && (Z10 = C10.Z(name)) != null) {
                return Z10;
            }
        }
        return null;
    }

    public boolean a1() {
        GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
        if (gameObject == null) {
            return false;
        }
        if (gameObject == this) {
            return true;
        }
        for (int i10 = 0; i10 < z0().size(); i10++) {
            if (this.f79287c.get(i10).a1()) {
                return true;
            }
        }
        return false;
    }

    public GameObject b0(String uniqueID) {
        if (getGuid().l().equals(uniqueID)) {
            return this;
        }
        Iterator<GameObject> it = this.f79287c.iterator();
        while (it.hasNext()) {
            GameObject b02 = it.next().b0(uniqueID);
            if (b02 != null) {
                return b02;
            }
        }
        return null;
    }

    public boolean b1() {
        GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
        if (gameObject == null) {
            return false;
        }
        if (gameObject == this) {
            return true;
        }
        GameObject gameObject2 = this.f79294k;
        if (gameObject2 != null) {
            return W(gameObject2, gameObject);
        }
        return false;
    }

    public <T extends Component> T c0(Component.e eVar) {
        return (T) this.f79286b.n(eVar, this);
    }

    public boolean c1() {
        return this.groupSettings != null;
    }

    public void callFunction(String name) {
        if (!c1()) {
            if (name != null && !name.isEmpty()) {
                this.f79286b.d(name, null);
                for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
                    this.f79287c.get(i10).callFunction(name, null);
                }
                return;
            }
            throw new NullPointerException("Function name can`t be null or empty");
        }
        throw new RuntimeException("Unsupported by groups");
    }

    public <T extends Component> T d0(Class cls) {
        return (T) this.f79286b.o(cls, this);
    }

    public boolean d1(GameObject gameObject) {
        if (gameObject == this) {
            return true;
        }
        return H0() != null && H0().d1(gameObject);
    }

    public void deflateTopbarElements(Context context) {
        k kVar = this.f79301r;
        if (kVar != null) {
            C12881a.f84200s.e(kVar);
            this.f79301r = null;
        }
        for (int i10 = 0; i10 < N(); i10++) {
            Component L10 = L(i10);
            if (L10 != null) {
                L10.deflateTopbarElements(context);
            }
        }
    }

    public void destroy() {
        C13317e.j(this);
    }

    public void e() {
        com.itsmagic.engine.Engines.Engine.World.b.c(this);
    }

    public <T extends Component> T e0(String str) {
        return (T) this.f79286b.p(str, this);
    }

    public boolean e1() {
        return (C13317e.J(this.f79294k) && this.f79294k.e1()) ? this.selectable : this.selectable;
    }

    public void f(GameObject ngameObject) {
        if (ngameObject == null) {
            throw new NullPointerException("Can't spawn a null object!");
        }
        com.itsmagic.engine.Engines.Engine.World.b.e(ngameObject);
    }

    public Component f0(Component.e type) {
        for (int i10 = 0; i10 < D(); i10++) {
            Component c02 = C(i10).c0(type);
            if (c02 != null) {
                return c02;
            }
        }
        for (int i11 = 0; i11 < D(); i11++) {
            Component f02 = C(i11).f0(type);
            if (f02 != null) {
                return f02;
            }
        }
        return null;
    }

    public boolean f1() {
        GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
        if (gameObject == null) {
            return false;
        }
        if (gameObject == this) {
            return true;
        }
        if (H0() != null) {
            return H0().f1();
        }
        return false;
    }

    public Component g0(String tittle) {
        for (int i10 = 0; i10 < D(); i10++) {
            Component e02 = C(i10).e0(tittle);
            if (e02 != null) {
                return e02;
            }
        }
        for (int i11 = 0; i11 < D(); i11++) {
            Component g02 = C(i11).g0(tittle);
            if (g02 != null) {
                return g02;
            }
        }
        return null;
    }

    public boolean g1(GameObject gameObject) {
        if (gameObject == null) {
            return false;
        }
        if (gameObject == this || this.f79287c.contains(gameObject)) {
            return true;
        }
        for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
            if (this.f79287c.get(i10).g1(gameObject)) {
                return true;
            }
        }
        return false;
    }

    public InspectorEditor getEditor() {
        if (this.editor == null) {
            this.editor = new InspectorEditor();
        }
        return this.editor;
    }

    public GUID getGuid() {
        if (this.guid == null) {
            this.guid = new GUID();
        }
        return this.guid;
    }

    public String getName() {
        return this.name;
    }

    public String getTag() {
        if (c1()) {
            return null;
        }
        return this.tag;
    }

    public void h(GameObject ngameObject, GameObject parent) {
        if (ngameObject == null) {
            throw new NullPointerException("Can't spawn a null object!");
        }
        com.itsmagic.engine.Engines.Engine.World.b.f(ngameObject, parent);
    }

    public <T extends Component> T h0(Component.e eVar) {
        T t10 = (T) this.f79286b.n(eVar, this);
        if (t10 != null) {
            return t10;
        }
        if (C13317e.J(this.f79294k)) {
            return (T) this.f79294k.h0(eVar);
        }
        return null;
    }

    public boolean h1(GameObject gameObject) {
        if (gameObject == null) {
            return false;
        }
        if (gameObject == this) {
            return true;
        }
        GameObject gameObject2 = this.f79294k;
        if (gameObject2 != null) {
            return gameObject2.h1(gameObject);
        }
        return false;
    }

    public void i(GameObject ngameObject, Vector3 position) {
        j(ngameObject, position, null);
    }

    public <T extends Component> T i0(Class cls) {
        T t10 = (T) this.f79286b.o(cls, this);
        if (t10 != null) {
            return t10;
        }
        if (C13317e.J(this.f79294k)) {
            return (T) this.f79294k.i0(cls);
        }
        return null;
    }

    public boolean i1() {
        return this.selectable;
    }

    public void inflateTopbarElements(Context context) {
        for (int i10 = 0; i10 < N(); i10++) {
            Component L10 = L(i10);
            if (L10 != null) {
                L10.inflateTopbarElements(context);
            }
        }
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isGarbage() {
        return this.f79291g || this.transform == null;
    }

    public boolean isHierarchyActive() {
        return this.f79298o && this.enabled;
    }

    public void j(GameObject ngameObject, Vector3 position, GameObject parent) {
        ngameObject.transform.p3(position);
        com.itsmagic.engine.Engines.Engine.World.b.f(ngameObject, parent);
    }

    public <T extends Component> T j0(String str) {
        T t10 = (T) this.f79286b.p(str, this);
        if (t10 != null) {
            return t10;
        }
        if (C13317e.J(this.f79294k)) {
            return (T) this.f79294k.j0(str);
        }
        return null;
    }

    public boolean j1() {
        return this.visible;
    }

    public <T extends JAVARuntime.Component> T k0(Class cls) {
        T t10 = (T) this.f79286b.q(cls, this);
        if (t10 != null) {
            return t10;
        }
        if (C13317e.J(this.f79294k)) {
            return (T) this.f79294k.k0(cls);
        }
        return null;
    }

    public JAVARuntime.Component l0(Class classReference) {
        return this.f79286b.q(classReference, this);
    }

    public void l1() {
        int i10 = this.f79299p + 1;
        this.f79299p = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.f79299p = 1;
        }
        q1();
    }

    public <T extends Component> T m0(String str) {
        return (T) this.f79286b.r(str, this);
    }

    public List<Component> n0(Component.e type) {
        return this.f79286b.s(type, this);
    }

    public void n1() {
        Component.e eVar = Component.e.UIRect;
        UIRect uIRect = (UIRect) c0(eVar);
        if (uIRect == null) {
            uIRect = (UIRect) h0(eVar);
        }
        if (uIRect != null) {
            uIRect.markLayoutDirty();
        }
    }

    public List<Component> o0(Component.e type, List<Component> out) {
        return this.f79286b.u(type, out, this);
    }

    public void onCollision(C13813a collision) {
        if (collision == null) {
            throw new NullPointerException("Collision can't be null");
        }
        this.f79286b.E(collision);
    }

    public void onCollisionEnter(C13813a collision) {
        if (collision == null) {
            throw new NullPointerException("Collision can't be null");
        }
        this.f79286b.F(collision);
    }

    public void onCollisionStop(C13813a collision) {
        if (collision == null) {
            throw new NullPointerException("Collision can't be null");
        }
        this.f79286b.G(collision);
    }

    public void onKeyDown(Key key) {
        this.f79286b.H(key);
        for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
            this.f79287c.get(i10).onKeyDown(key);
        }
    }

    public void onKeyPressed(Key key) {
        this.f79286b.I(key);
        for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
            this.f79287c.get(i10).onKeyPressed(key);
        }
    }

    public void onKeyUp(Key key) {
        this.f79286b.J(key);
        for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
            this.f79287c.get(i10).onKeyUp(key);
        }
    }

    public GameObject p(GameObject gameObject) {
        if (gameObject == null) {
            throw new NullPointerException("Child can't be null");
        }
        synchronized (this.f79287c) {
            gameObject.f79294k = this;
            this.f79287c.add(gameObject);
        }
        n1();
        q1();
        return this;
    }

    public List<JAVARuntime.Component> p0(Class classReference) {
        return this.f79286b.v(classReference, this);
    }

    public void posPhysics() {
        this.f79286b.K();
        for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
            this.f79287c.get(i10).posPhysics();
        }
    }

    public void posWheelPhysics() {
        this.f79286b.L();
        for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
            this.f79287c.get(i10).posWheelPhysics();
        }
    }

    public void prePhysics() {
        this.f79286b.M();
        for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
            this.f79287c.get(i10).prePhysics();
        }
    }

    public void propagateEditorViewModes(List<C13189d> viewModes) {
        for (int i10 = 0; i10 < N(); i10++) {
            try {
                Component L10 = L(i10);
                if (L10 != null) {
                    L10.propagateEditorViewModes(viewModes);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }

    public GameObject q(GameObject gameObject, int index) {
        if (gameObject == null) {
            throw new NullPointerException("Child can't be null");
        }
        synchronized (this.f79287c) {
            gameObject.f79294k = this;
            this.f79287c.add(index, gameObject);
        }
        n1();
        q1();
        return this;
    }

    public List<Component> q0(String tittle) {
        return this.f79286b.w(tittle, this);
    }

    public final void q1() {
        for (int i10 = 0; i10 < this.f79289e.size(); i10++) {
            this.f79289e.get(i10).a(this);
        }
    }

    public void r(Component component) {
        if (c1()) {
            throw new RuntimeException("Unsupported by groups");
        }
        this.f79286b.c(component);
    }

    public List<Component> r0(String tittle, List<Component> out) {
        return this.f79286b.x(tittle, out, this);
    }

    public void r1() {
        this.transform.D2();
        for (int i10 = 0; i10 < z0().size(); i10++) {
            z0().get(i10).r1();
        }
    }

    public void reloadFilesPaths(BuildDictionary dictionary) {
        this.f79286b.O(dictionary);
        for (GameObject gameObject : z0()) {
            if (gameObject != null) {
                gameObject.reloadFilesPaths(dictionary);
            }
        }
    }

    public void s(GameObject child) {
        synchronized (this.f79288d) {
            this.f79288d.add(child);
        }
    }

    public List<Component> s0(Component.e type) {
        return t0(type, new SteppedArrayList());
    }

    public void s1() {
        this.f79286b.N();
        for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
            this.f79287c.get(i10).s1();
        }
    }

    public void setEnabled(boolean enabled) {
        if (this.enabled != enabled) {
            K8.a.B(new b(enabled));
        }
    }

    public List<Component> t0(Component.e type, List<Component> out) {
        o0(type, out);
        for (int i10 = 0; i10 < D(); i10++) {
            C(i10).t0(type, out);
        }
        return out;
    }

    public void t1(boolean parentEnables) {
        this.f79298o = parentEnables;
        boolean z10 = parentEnables && this.enabled;
        for (int i10 = 0; i10 < this.f79286b.i(); i10++) {
            this.f79286b.g(i10).onHierarchyActiveChangedInternal(z10, true);
        }
        for (int i11 = 0; i11 < D(); i11++) {
            C(i11).t1(z10);
        }
    }

    public void u(h listener) {
        if (listener == null || this.f79289e.contains(listener)) {
            return;
        }
        this.f79289e.add(listener);
    }

    public List<Component> u0(String tittle) {
        return v0(tittle, new SteppedArrayList());
    }

    public void u1(Component component) {
        if (c1()) {
            throw new RuntimeException("Unsupported by groups");
        }
        this.f79286b.P(component);
    }

    public void v() {
        this.transform.D2();
        for (int i10 = 0; i10 < N(); i10++) {
            L(i10).onParentChanged();
        }
    }

    public List<Component> v0(String tittle, List<Component> out) {
        r0(tittle, out);
        for (int i10 = 0; i10 < D(); i10++) {
            C(i10).v0(tittle, out);
        }
        return out;
    }

    public void v1(Component component, boolean force) {
        if (c1()) {
            throw new RuntimeException("Unsupported by groups");
        }
        this.f79286b.Q(component, force);
    }

    public void w() {
    }

    public void w0(d listener) {
        int size = this.f79287c.size();
        for (int i10 = 0; i10 < size; i10++) {
            listener.a(this, this.f79287c.get(i10), i10);
        }
    }

    public void w1(h listener) {
        this.f79289e.remove(listener);
    }

    public f x() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        F(steppedArrayList, steppedArrayList2);
        f fVar = new f();
        if (steppedArrayList.isEmpty() || steppedArrayList2.isEmpty()) {
            fVar.f79312c = true;
        } else {
            Vector3 vector3 = new Vector3();
            Iterator<Vector3> it = steppedArrayList.iterator();
            while (it.hasNext()) {
                vector3.addLocal(it.next());
            }
            Vector3 mul = vector3.mul(1.0f / steppedArrayList.size());
            fVar.f79311b.set(mul);
            float f10 = 0.0f;
            for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                float lengthF = steppedArrayList.get(i10).sub(mul).lengthF() + steppedArrayList2.get(i10).floatValue();
                if (lengthF > f10) {
                    f10 = lengthF;
                }
            }
            fVar.f79310a = f10;
        }
        return fVar;
    }

    public void x0(a.i listener) {
        this.f79286b.y(this, listener);
    }

    public JsonElement x1() {
        getGuid();
        JsonElement jsonTree = X7.a.m().toJsonTree(this);
        JsonObject jsonObject = (JsonObject) jsonTree;
        jsonObject.add("serializedComponents", this.f79286b.R());
        JsonArray jsonArray = new JsonArray();
        Iterator<GameObject> it = z0().iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().x1());
        }
        jsonObject.add("serializedChildren", jsonArray);
        return jsonTree;
    }

    public f y(Vector3 virtualCenter) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        F(steppedArrayList, steppedArrayList2);
        f fVar = new f();
        if (steppedArrayList.isEmpty() || steppedArrayList2.isEmpty()) {
            fVar.f79312c = true;
        } else {
            fVar.f79311b.set(virtualCenter);
            float f10 = 0.0f;
            for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                float lengthF = steppedArrayList.get(i10).sub(virtualCenter).lengthF() + steppedArrayList2.get(i10).floatValue();
                if (lengthF > f10) {
                    f10 = lengthF;
                }
            }
            fVar.f79310a = f10;
        }
        return fVar;
    }

    public void y0(Context context, C2632k dependency, File file) {
        this.f79286b.z(context, dependency, file);
        for (GameObject gameObject : z0()) {
            if (gameObject != null) {
                gameObject.y0(context, dependency, file);
            }
        }
    }

    public void y1(boolean allowAnimations) {
        this.allowAnimations = allowAnimations;
    }

    public g z() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        G(steppedArrayList, steppedArrayList2);
        g gVar = new g();
        if (steppedArrayList.isEmpty() || steppedArrayList2.isEmpty()) {
            gVar.f79316c = true;
        } else {
            Vector3 vector3 = new Vector3();
            Iterator<Vector3> it = steppedArrayList.iterator();
            while (it.hasNext()) {
                vector3.addLocal(it.next());
            }
            Vector3 mul = vector3.mul(1.0f / steppedArrayList.size());
            gVar.f79315b.set(mul);
            float f10 = 0.0f;
            for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                float lengthF = steppedArrayList.get(i10).sub(mul).lengthF() + steppedArrayList2.get(i10).floatValue();
                if (lengthF > f10) {
                    f10 = lengthF;
                }
            }
            gVar.f79314a = f10;
        }
        return gVar;
    }

    public List<GameObject> z0() {
        return this.f79287c;
    }

    public void z1(List<GameObject> children) {
        this.f79287c.clear();
        for (int i10 = 0; i10 < children.size(); i10++) {
            GameObject gameObject = children.get(i10);
            if (gameObject != null) {
                gameObject.f79294k = this;
                this.f79287c.add(gameObject);
            }
        }
        n1();
        q1();
    }

    public void callFunction(String name, Object... value) {
        if (!c1()) {
            if (name != null && !name.isEmpty()) {
                this.f79286b.d(name, value);
                for (int i10 = 0; i10 < this.f79287c.size(); i10++) {
                    this.f79287c.get(i10).callFunction(name, value);
                }
                return;
            }
            throw new NullPointerException("Function name can`t be null or empty");
        }
        throw new RuntimeException("Unsupported by groups");
    }

    public GameObject(GUID guid) {
        this.name = "Unamed";
        this.transform = new Transform();
        this.enabled = true;
        this.guid = new GUID();
        this.tag = "";
        this.allowAnimations = true;
        this.optionsEditor = new InspectorEditor();
        this.visible = true;
        this.selectable = true;
        this.f79286b = new com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a(this);
        this.f79287c = new SteppedArrayList(10);
        this.f79288d = new SteppedArrayList(10);
        this.f79289e = new SteppedArrayList(2);
        this.f79291g = false;
        this.f79292i = false;
        this.f79296m = new C13319g();
        this.f79297n = false;
        this.f79298o = true;
        this.f79299p = 1;
        this.f79301r = null;
        this.guid = guid;
        if (!K8.a.r()) {
            Transform transform = new Transform();
            transform.l3(true);
            this.transform = transform;
            transform.setGameObject(this);
            return;
        }
        this.transform = new Transform(this);
    }

    public GameObject(String name) {
        this.name = "Unamed";
        this.transform = new Transform();
        this.enabled = true;
        this.guid = new GUID();
        this.tag = "";
        this.allowAnimations = true;
        this.optionsEditor = new InspectorEditor();
        this.visible = true;
        this.selectable = true;
        this.f79286b = new com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a(this);
        this.f79287c = new SteppedArrayList(10);
        this.f79288d = new SteppedArrayList(10);
        this.f79289e = new SteppedArrayList(2);
        this.f79291g = false;
        this.f79292i = false;
        this.f79296m = new C13319g();
        this.f79297n = false;
        this.f79298o = true;
        this.f79299p = 1;
        this.f79301r = null;
        this.name = name;
        if (!K8.a.r()) {
            Transform transform = new Transform();
            transform.l3(true);
            this.transform = transform;
            transform.setGameObject(this);
            return;
        }
        this.transform = new Transform(this);
    }

    public GameObject(String name, Transform transform) {
        this.name = "Unamed";
        this.transform = new Transform();
        this.enabled = true;
        this.guid = new GUID();
        this.tag = "";
        this.allowAnimations = true;
        this.optionsEditor = new InspectorEditor();
        this.visible = true;
        this.selectable = true;
        this.f79286b = new com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a(this);
        this.f79287c = new SteppedArrayList(10);
        this.f79288d = new SteppedArrayList(10);
        this.f79289e = new SteppedArrayList(2);
        this.f79291g = false;
        this.f79292i = false;
        this.f79296m = new C13319g();
        this.f79297n = false;
        this.f79298o = true;
        this.f79299p = 1;
        this.f79301r = null;
        this.name = name;
        this.transform = transform;
        transform.e3(this);
    }

    public GameObject(Transform transform) {
        this.name = "Unamed";
        this.transform = new Transform();
        this.enabled = true;
        this.guid = new GUID();
        this.tag = "";
        this.allowAnimations = true;
        this.optionsEditor = new InspectorEditor();
        this.visible = true;
        this.selectable = true;
        this.f79286b = new com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a(this);
        this.f79287c = new SteppedArrayList(10);
        this.f79288d = new SteppedArrayList(10);
        this.f79289e = new SteppedArrayList(2);
        this.f79291g = false;
        this.f79292i = false;
        this.f79296m = new C13319g();
        this.f79297n = false;
        this.f79298o = true;
        this.f79299p = 1;
        this.f79301r = null;
        this.transform = transform;
        transform.e3(this);
    }

    public GameObject(String name, Transform transform, Component... component) {
        this.name = "Unamed";
        this.transform = new Transform();
        this.enabled = true;
        this.guid = new GUID();
        this.tag = "";
        this.allowAnimations = true;
        this.optionsEditor = new InspectorEditor();
        this.visible = true;
        this.selectable = true;
        this.f79286b = new com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a(this);
        this.f79287c = new SteppedArrayList(10);
        this.f79288d = new SteppedArrayList(10);
        this.f79289e = new SteppedArrayList(2);
        this.f79291g = false;
        this.f79292i = false;
        this.f79296m = new C13319g();
        this.f79297n = false;
        this.f79298o = true;
        this.f79299p = 1;
        this.f79301r = null;
        this.name = name;
        this.transform = transform;
        transform.e3(this);
        for (Component component2 : component) {
            this.f79286b.c(component2);
        }
    }

    public GameObject(Transform transform, Component... component) {
        this.name = "Unamed";
        this.transform = new Transform();
        this.enabled = true;
        this.guid = new GUID();
        this.tag = "";
        this.allowAnimations = true;
        this.optionsEditor = new InspectorEditor();
        this.visible = true;
        this.selectable = true;
        this.f79286b = new com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a(this);
        this.f79287c = new SteppedArrayList(10);
        this.f79288d = new SteppedArrayList(10);
        this.f79289e = new SteppedArrayList(2);
        this.f79291g = false;
        this.f79292i = false;
        this.f79296m = new C13319g();
        this.f79297n = false;
        this.f79298o = true;
        this.f79299p = 1;
        this.f79301r = null;
        this.transform = transform;
        transform.e3(this);
        for (Component component2 : component) {
            this.f79286b.c(component2);
        }
    }

    public GameObject(String name, Component... component) {
        this.name = "Unamed";
        this.transform = new Transform();
        this.enabled = true;
        this.guid = new GUID();
        this.tag = "";
        this.allowAnimations = true;
        this.optionsEditor = new InspectorEditor();
        this.visible = true;
        this.selectable = true;
        this.f79286b = new com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a(this);
        this.f79287c = new SteppedArrayList(10);
        this.f79288d = new SteppedArrayList(10);
        this.f79289e = new SteppedArrayList(2);
        this.f79291g = false;
        this.f79292i = false;
        this.f79296m = new C13319g();
        this.f79297n = false;
        this.f79298o = true;
        this.f79299p = 1;
        this.f79301r = null;
        this.name = name;
        this.transform.e3(this);
        for (Component component2 : component) {
            this.f79286b.c(component2);
        }
    }

    public GameObject(String name, Transform transform, List<Component> component) {
        this.name = "Unamed";
        this.transform = new Transform();
        this.enabled = true;
        this.guid = new GUID();
        this.tag = "";
        this.allowAnimations = true;
        this.optionsEditor = new InspectorEditor();
        this.visible = true;
        this.selectable = true;
        this.f79286b = new com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a(this);
        this.f79287c = new SteppedArrayList(10);
        this.f79288d = new SteppedArrayList(10);
        this.f79289e = new SteppedArrayList(2);
        this.f79291g = false;
        this.f79292i = false;
        this.f79296m = new C13319g();
        this.f79297n = false;
        this.f79298o = true;
        this.f79299p = 1;
        this.f79301r = null;
        this.name = name;
        this.transform = transform;
        transform.e3(this);
        for (int i10 = 0; i10 < component.size(); i10++) {
            this.f79286b.c(component.get(i10));
        }
    }

    public GameObject(Transform transform, List<Component> component) {
        this.name = "Unamed";
        this.transform = new Transform();
        this.enabled = true;
        this.guid = new GUID();
        this.tag = "";
        this.allowAnimations = true;
        this.optionsEditor = new InspectorEditor();
        this.visible = true;
        this.selectable = true;
        this.f79286b = new com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a(this);
        this.f79287c = new SteppedArrayList(10);
        this.f79288d = new SteppedArrayList(10);
        this.f79289e = new SteppedArrayList(2);
        this.f79291g = false;
        this.f79292i = false;
        this.f79296m = new C13319g();
        this.f79297n = false;
        this.f79298o = true;
        this.f79299p = 1;
        this.f79301r = null;
        this.transform = transform;
        transform.e3(this);
        for (int i10 = 0; i10 < component.size(); i10++) {
            this.f79286b.c(component.get(i10));
        }
    }

    public GameObject(String name, Transform transform, Component component, GUID guid) {
        this.name = "Unamed";
        this.transform = new Transform();
        this.enabled = true;
        this.guid = new GUID();
        this.tag = "";
        this.allowAnimations = true;
        this.optionsEditor = new InspectorEditor();
        this.visible = true;
        this.selectable = true;
        com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a aVar = new com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a(this);
        this.f79286b = aVar;
        this.f79287c = new SteppedArrayList(10);
        this.f79288d = new SteppedArrayList(10);
        this.f79289e = new SteppedArrayList(2);
        this.f79291g = false;
        this.f79292i = false;
        this.f79296m = new C13319g();
        this.f79297n = false;
        this.f79298o = true;
        this.f79299p = 1;
        this.f79301r = null;
        this.name = name;
        this.transform = transform;
        transform.e3(this);
        this.guid = guid;
        aVar.c(component);
    }

    public GameObject(Transform transform, Component component, GUID guid) {
        this.name = "Unamed";
        this.transform = new Transform();
        this.enabled = true;
        this.guid = new GUID();
        this.tag = "";
        this.allowAnimations = true;
        this.optionsEditor = new InspectorEditor();
        this.visible = true;
        this.selectable = true;
        com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a aVar = new com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a(this);
        this.f79286b = aVar;
        this.f79287c = new SteppedArrayList(10);
        this.f79288d = new SteppedArrayList(10);
        this.f79289e = new SteppedArrayList(2);
        this.f79291g = false;
        this.f79292i = false;
        this.f79296m = new C13319g();
        this.f79297n = false;
        this.f79298o = true;
        this.f79299p = 1;
        this.f79301r = null;
        this.transform = transform;
        transform.e3(this);
        this.guid = guid;
        aVar.c(component);
    }
}
