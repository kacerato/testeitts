package com.itsmagic.engine.Engines.Engine.ObjectOriented.Components;

import C5.m;
import Ic.C2629h;
import Ic.C2630i;
import Ic.C2632k;
import Ic.C2634m;
import JAVARuntime.Color;
import aa.C3595c;
import android.content.Context;
import android.util.Log;
import android.view.View;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.UIImageHandler;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.UVec2I;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Vec2I;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Dictionary.ComponentDeserializeException;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GUID;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Input.Key;
import com.itsmagic.engine2.R;
import dd.C12908b;
import eb.C13050a;
import eb.C13051b;
import eb.g;
import f5.C13189d;
import fb.C13201a;
import gb.C13317e;
import j9.C13813a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import n.C14331a;
import t3.C15377a;

public class Component extends C2634m implements Serializable {

    public boolean f79236A;

    public boolean f79237B;

    public d f79238C;

    public JAVARuntime.Component f79239D;

    public List<g> f79240b;

    public boolean f79241c;

    @Expose
    public boolean clonedByPrefab;

    public String f79242d;

    public boolean f79243e;

    @Expose
    public InspectorEditor editor;

    @Expose
    private boolean enabled;

    public boolean f79244g;

    @Expose
    private GUID guid;

    public boolean f79245i;

    @Expose
    private InspectorMemory inspectorMemory;

    public boolean f79246j;

    public boolean f79247k;

    public boolean f79248l;

    public FilamentScene f79249m;

    public GameObject f79250n;

    public boolean f79251o;

    public String f79252p;

    public boolean f79253q;

    public Object f79254r;

    public boolean f79255s;

    @Expose
    public String serializedComponentType;

    public int f79256t;

    public C5.d f79257u;

    public class a implements D5.e {

        public class ViewOnClickListenerC1337a implements View.OnClickListener {
            public ViewOnClickListenerC1337a() {
            }

            @Override
            public void onClick(View v10) {
                C2630i.j();
            }
        }

        public a() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            view.setOnClickListener(new ViewOnClickListenerC1337a());
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            Component.this.f79238C.a();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            A5.a.x1(Component.this);
        }
    }

    public interface d {
        void a();
    }

    public enum e {
        Unknown,
        AttachedModule,
        Camera,
        ModelRenderer,
        SpriteRenderer,
        SoftBodyRenderer,
        SkinnedModelRenderer,
        IgnoreSave,
        VehiclePhysics,
        Collider,
        VehicleWheel,
        SoundPlayer,
        SoundListener,
        AnimationPlayer,
        SkinJoint,
        Armature,
        JavaComponent,
        MPSync,
        HingeConstraint,
        PointConstraint,
        ConstraintPivot,
        ConstraintHitch,
        PathFinder,
        BakedNavMesh,
        UIController,
        UIRect,
        UITextView,
        UIButton,
        UICheckBox,
        UIRadioButton,
        UIRadioGroup,
        UIImage,
        UIRotateImage,
        UIJoystick,
        UIDynamicJoystick,
        UIInputText,
        UIWindow,
        UIDivider,
        UITouchTrigger,
        UIKeyEventListener,
        UIAxisEventListener,
        UIAlignment,
        UIVerticalLayout,
        UIHorizontalLayout,
        UIGridLayout,
        UIFlexLayout,
        UIWeight,
        UIFitParent,
        UIAnchor,
        UIVerticalScrollView,
        UIHorizontalScrollView,
        UIRectangularMask,
        UISlideArea,
        Road,
        RoadPoint,
        MeshCurve,
        PathPoint,
        Route,
        RouteFollower,
        BakeChildSuppressor,
        VehicleAI,
        VehicleAIWheel,
        PhysicalButton,
        DirectionalDoor,
        BlinkLight,
        SmoothCameraFollow,
        OrbitalCameraFollow,
        StandUp,
        LaserCasting,
        SlideRotate,
        VoxelChunk,
        VoxelGenerator,
        ChunkSpawner,
        VoxelPhysics,
        VoxelCollider,
        VoxelPlayerController,
        VoxelHand,
        EnemyAITypeA,
        SimpleEnemyAI,
        ObjectLink,
        PrefabLink,
        ParticleEmitter,
        TrailRenderer,
        ParticleGroup,
        Array,
        LuaComponent,
        PythonComponent,
        VideoPlayer,
        MicrophoneReader,
        SpeechRecognizer
    }

    public Component(String serializedComponentType) {
        this.enabled = true;
        this.guid = new GUID();
        this.f79241c = false;
        this.f79243e = false;
        this.f79244g = false;
        this.f79245i = false;
        this.f79246j = false;
        this.f79247k = false;
        this.f79248l = false;
        this.f79253q = false;
        this.f79255s = true;
        this.f79256t = 0;
        this.f79236A = true;
        this.f79237B = true;
        this.inspectorMemory = new InspectorMemory();
        this.serializedComponentType = serializedComponentType;
        this.enabled = true;
    }

    public static Component deserialize(JsonObject json) {
        try {
            Component e10 = C13201a.e(json);
            if (e10 != null) {
                e10.onDeserializedInternal();
                e10.onDeserialized();
            }
            return e10;
        } catch (ComponentDeserializeException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static boolean isFullVersion() {
        return !C14331a.c();
    }

    public static String normalizeEntryKey(String value) {
        if (value == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < value.length(); i10++) {
            char charAt = value.charAt(i10);
            if (Character.isLetterOrDigit(charAt)) {
                sb2.append(Character.toLowerCase(charAt));
            }
        }
        return sb2.toString();
    }

    public boolean allowOncePerObject() {
        return false;
    }

    public boolean allowSwapPickTo(Component component) {
        return true;
    }

    public int animEntriesCount() {
        List<g> list = this.f79240b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public String animEntryAt(int index) {
        List<g> list = this.f79240b;
        if (list == null) {
            return null;
        }
        return list.get(index).c();
    }

    public com.itsmagic.engine.Engines.Engine.Animation.c animEntryTypeAt(int index) {
        g gVar;
        List<g> list = this.f79240b;
        if (list != null && (gVar = list.get(index)) != null && gVar.b() != null) {
            if (gVar.b().getType() == ColorINT.class || gVar.b().getType() == Color.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.COLOR;
            }
            if (gVar.b().getType() == Vector3.class || gVar.b().getType() == JAVARuntime.Vector3.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.VEC3;
            }
            if (gVar.b().getType() == Vector2.class || gVar.b().getType() == JAVARuntime.Vector2.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.VEC2;
            }
            if (gVar.b().getType() == Vec2I.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.VEC2I;
            }
            if (gVar.b().getType() == UVec2I.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.UVEC2I;
            }
            if (gVar.b().getType() == Quaternion.class || gVar.b().getType() == JAVARuntime.Quaternion.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.QUAT;
            }
            if (gVar.b().getType() == Square5I.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.SQUARE5I;
            }
            if (gVar.b().getType() == UIImageHandler.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.IMAGE;
            }
            if (gVar.b().getType() == Float.TYPE) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            }
            if (gVar.b().getType() == Integer.TYPE) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.INT;
            }
        }
        return null;
    }

    public void beforeGameStarts() {
    }

    public void callFunction(String functionName, Object... args) {
    }

    public boolean checkLowTaskRequirement() {
        return C13050a.a(getClass());
    }

    public boolean checkODFRequirement() {
        return C13050a.b(getClass());
    }

    public boolean checkParallelRequirement() {
        return C13050a.c(getClass());
    }

    public boolean checkUpdateRequirement() {
        return C13050a.d(getClass());
    }

    public int countAsync() {
        return 0;
    }

    public void deflateTopbarElements(Context context) {
    }

    public void destroyComponent() {
        this.f79250n.u1(this);
    }

    public final void determineAnimEntries() {
        if (this.f79248l) {
            return;
        }
        this.f79248l = true;
        this.f79240b = C13050a.g(getClass());
    }

    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
    }

    public void disabledUpdate(GameObject gameObject, boolean isEditor) {
    }

    public final void e() {
        if (this.f79247k) {
            return;
        }
        this.f79243e = checkParallelRequirement();
        this.f79244g = checkODFRequirement();
        this.f79245i = checkUpdateRequirement();
        this.f79246j = checkLowTaskRequirement();
        this.f79247k = true;
    }

    public void exposeAnimationEntries(GameObject gameObject, List<C5.b> entries) {
        String str;
        com.itsmagic.engine.Engines.Engine.Animation.c animEntryTypeAt;
        determineAnimEntries();
        if (animEntriesCount() == 0 || entries == null) {
            return;
        }
        for (C5.b bVar : entries) {
            if (bVar != null && bVar.f2061N == null && (str = bVar.f2077l) != null) {
                String normalizeEntryKey = normalizeEntryKey(str);
                if (!normalizeEntryKey.isEmpty()) {
                    g gVar = null;
                    int i10 = 0;
                    g gVar2 = null;
                    com.itsmagic.engine.Engines.Engine.Animation.c cVar = null;
                    while (true) {
                        if (i10 >= this.f79240b.size()) {
                            gVar = gVar2;
                            break;
                        }
                        g gVar3 = this.f79240b.get(i10);
                        if (gVar3 != null && (animEntryTypeAt = animEntryTypeAt(i10)) != null) {
                            String normalizeEntryKey2 = normalizeEntryKey(gVar3.c());
                            if (!normalizeEntryKey2.isEmpty() && (normalizeEntryKey2.equalsIgnoreCase(normalizeEntryKey) || normalizeEntryKey2.contains(normalizeEntryKey) || normalizeEntryKey.contains(normalizeEntryKey2))) {
                                if (gVar2 != null && gVar2 != gVar3) {
                                    cVar = null;
                                    break;
                                } else {
                                    gVar2 = gVar3;
                                    cVar = animEntryTypeAt;
                                }
                            }
                        }
                        i10++;
                    }
                    if (gVar != null && cVar != null) {
                        bVar.d(gameObject, this, gVar.c(), cVar);
                    }
                }
            }
        }
    }

    public ColorINT getColorFromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return gVar.b().getType() == Color.class ? ((Color) gVar.b().get(this)).instance : (ColorINT) gVar.b().get(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public C13051b getComponentRequired() {
        return null;
    }

    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C15377a.f109719g.booleanValue();
        return null;
    }

    public String getDeprecatedMessage() {
        return this.f79252p;
    }

    public String getDisplayableTitle() {
        return getTitle();
    }

    public InspectorEditor getEditor() {
        if (this.editor == null) {
            this.editor = new InspectorEditor();
        }
        return this.editor;
    }

    public FilamentScene getEffectiveScene() {
        FilamentScene filamentScene = this.f79249m;
        return filamentScene == null ? Qb.a.h() : filamentScene;
    }

    public float getFloatFromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return gVar.b().getFloat(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return 0.0f;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public float getFocusBounding() {
        return 0.0f;
    }

    public Vector3 getFocusCenter() {
        return null;
    }

    public GUID getGuid() {
        return this.guid;
    }

    public int getIconResource() {
        return R.drawable.unknow_component_icon_2;
    }

    public String getImageFromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    UIImageHandler uIImageHandler = (UIImageHandler) gVar.b().get(this);
                    if (uIImageHandler != null) {
                        return uIImageHandler.h();
                    }
                    return null;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Deprecated
    public int getInspectorColor(Context context) {
        return 0;
    }

    @Deprecated
    public Color getInspectorColorDirect(Context context) {
        return null;
    }

    public Color getInspectorColorDirectV2(Context context) {
        return null;
    }

    public int getInspectorColorV2(Context context) {
        return 0;
    }

    public List<C5.b> getInspectorEntries(Context context) {
        return null;
    }

    public List<m> getInspectorExtras() {
        return null;
    }

    public InspectorMemory getInspectorMemory() {
        return this.inspectorMemory;
    }

    public int getIntFromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return gVar.b().getInt(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return 0;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public List<C5.b> getInternalInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context != null && this.f79253q && !isFullVersion()) {
            linkedList.add(new C5.b(new a(), R.layout.inspector_component_require_vip, (Object) null));
        }
        return linkedList;
    }

    public List<C12908b> getLongTapMenu() {
        return null;
    }

    public List<Material> getMaterialsForAsyncLoad() {
        return null;
    }

    public Quaternion getQuatFromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return (Quaternion) gVar.b().get(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public float getRenderBounding() {
        return 0.0f;
    }

    public AABB getRenderBoundingBox() {
        return null;
    }

    public Vector3 getRenderCenter() {
        return null;
    }

    public String getSerializedType() {
        return this.serializedComponentType;
    }

    public Square5I getSquare5FromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return (Square5I) gVar.b().get(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public String getTitle() {
        return "Unknown component";
    }

    public e getType() {
        return e.Unknown;
    }

    public <T> T getUserData() {
        return (T) this.f79254r;
    }

    public Vector2 getVec2FromAnimation(String entryName) {
        Vector2 vector2;
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    Class<?> type = gVar.b().getType();
                    if (type == Vec2I.class) {
                        if (((Vec2I) gVar.b().get(this)) == null) {
                            return null;
                        }
                        return new Vector2(r0.f(), r0.g());
                    }
                    if (type == UVec2I.class) {
                        if (((UVec2I) gVar.b().get(this)) == null) {
                            return null;
                        }
                        return new Vector2(r0.e(), r0.f());
                    }
                    if (type != JAVARuntime.Vector2.class) {
                        return (Vector2) gVar.b().get(this);
                    }
                    JAVARuntime.Vector2 vector22 = (JAVARuntime.Vector2) gVar.b().get(this);
                    if (vector22 == null || (vector2 = vector22.instance) == null) {
                        return null;
                    }
                    return vector2;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public Vector3 getVec3FromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return (Vector3) gVar.b().get(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public boolean hasFocusBounding() {
        return false;
    }

    public boolean hasMaterialForAsyncLoad() {
        return false;
    }

    public boolean hasRenderBounding() {
        return false;
    }

    public int iconPriority() {
        return 0;
    }

    public void inflateTopbarElements(Context context) {
    }

    public final void invalidateAttachedMethodRequirements() {
        this.f79247k = false;
    }

    public boolean isDeprecated() {
        return this.f79251o;
    }

    public final boolean isEnabled() {
        return this.enabled;
    }

    public boolean isHierarchyActive() {
        return this.f79255s && this.enabled;
    }

    public boolean isRequireFullVersion() {
        return this.f79253q;
    }

    public final boolean isRequireLowTaskMethod() {
        e();
        return this.f79246j;
    }

    public final boolean isRequireODFMethod() {
        e();
        return this.f79244g;
    }

    public final boolean isRequireParallelMethod() {
        e();
        return this.f79243e;
    }

    public final boolean isRequireUpdateMethod() {
        e();
        return this.f79245i;
    }

    public void loadAsync(Lb.a listener) {
    }

    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
    }

    public void mousePick(C3595c ray, MousePicker.k listener) {
    }

    public void onAttach() {
    }

    public final void onAttachInternal() {
        this.f79256t = 0;
    }

    public void onCollision(C13813a collision) {
    }

    public void onCollisionEnter(C13813a collision) {
    }

    public void onCollisionStop(C13813a collision) {
    }

    public void onDeserialized() {
    }

    public final void onDeserializedInternal() {
        if (this.guid == null) {
            this.guid = new GUID();
        }
    }

    public void onDetach() {
    }

    public final void onDetachInternal() {
        this.editor = null;
        this.f79250n = null;
        this.f79256t = 0;
    }

    public void onDrawFrame() {
    }

    public void onGameStarted() {
    }

    public void onGameStateChanged(boolean running, boolean paused) {
    }

    public void onHierarchyActiveChanged(boolean enabled) {
    }

    public final void onHierarchyActiveChangedInternal(boolean parentEnables, boolean notifyComponent) {
        this.f79255s = parentEnables;
        boolean isHierarchyActive = isHierarchyActive();
        int i10 = isHierarchyActive ? 1 : 2;
        if (this.f79256t != i10) {
            this.f79256t = i10;
            GameObject gameObject = this.f79250n;
            if (gameObject != null) {
                gameObject.l1();
            }
            if (notifyComponent) {
                onHierarchyActiveChanged(isHierarchyActive);
            }
        }
    }

    public void onHostPhysicsEntityChanged(PhysicsComponent physicsComponent) {
    }

    public void onKeyDown(Key key) {
    }

    public void onKeyPressed(Key key) {
    }

    public void onKeyUp(Key key) {
    }

    public void onParentChanged() {
    }

    public void onSceneChanged(FilamentScene oldScene) {
    }

    public void parallelDisabledUpdate() {
    }

    public void parallelUpdate() {
    }

    public void posPhysics() {
    }

    public void posWheelPhysics() {
    }

    public void prePhysics() {
    }

    public void preUpdate(GameObject gameObject, boolean isEditor) {
    }

    public void propagateEditorViewModes(List<C13189d> viewModes) {
    }

    public void receiveEvent(Lb.c event) {
    }

    public void reloadFilesPaths(BuildDictionary dictionary) {
    }

    public void reloadInspector() {
        GameObject gameObject;
        if (this.f79238C != null) {
            N7.c.j0(new b());
        } else if (C13317e.J(this.f79250n) && (gameObject = W7.b.f27309i.f31909a.f31910a) != null && gameObject == this.f79250n) {
            N7.c.l(0.1f, new c());
        }
    }

    public JsonElement serialize(Context context) {
        try {
            return X7.a.m().toJsonTree(this);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void setColorFromAnimation(String entryName, ColorINT value) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    if (gVar.b().getType() == Color.class) {
                        gVar.b().set(this, value.e0());
                        gVar.a(this);
                    } else {
                        gVar.b().set(this, value);
                        gVar.a(this);
                    }
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public void setCustomInspectorListener(d customInspectorListener) {
        this.f79238C = customInspectorListener;
    }

    public void setDeprecated(boolean deprecated) {
        this.f79251o = deprecated;
    }

    public void setDeprecatedMessage(String deprecatedMessage) {
        this.f79252p = deprecatedMessage;
    }

    public Component setEnabled(boolean enabled) {
        boolean z10 = this.enabled != enabled;
        this.enabled = enabled;
        if (z10 && this.f79250n != null) {
            onHierarchyActiveChangedInternal(this.f79255s, true);
        }
        return this;
    }

    public void setFloatFromAnimation(String entryName, float value) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().setFloat(this, value);
                    gVar.a(this);
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public void setGameObject(GameObject gameObject) {
        this.f79250n = gameObject;
        JAVARuntime.Component component = this.f79239D;
        if (component != null) {
            component.setComponentObject(gameObject.W1());
        }
    }

    public void setImageFromAnimation(String entryName, String value) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    UIImageHandler uIImageHandler = (UIImageHandler) gVar.b().get(this);
                    if (uIImageHandler == null) {
                        uIImageHandler = new UIImageHandler();
                        gVar.b().set(this, uIImageHandler);
                    }
                    uIImageHandler.v(value);
                    gVar.a(this);
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public void setIntFromAnimation(String entryName, int value) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().setInt(this, value);
                    gVar.a(this);
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public void setInternalCompRuntime(JAVARuntime.Component run) {
        this.f79239D = run;
    }

    public void setOverrideScene(FilamentScene overrideScene) {
        FilamentScene effectiveScene = getEffectiveScene();
        this.f79249m = overrideScene;
        if (effectiveScene != getEffectiveScene()) {
            onSceneChanged(effectiveScene);
        }
    }

    public void setQuatFromAnimation(String entryName, Quaternion value) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().set(this, value);
                    gVar.a(this);
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public void setRequireFullVersion(boolean requireFullVersion) {
        this.f79253q = requireFullVersion;
    }

    public void setRuntime(JAVARuntime.Component run) {
        this.f79239D = run;
    }

    public void setSquare5FromAnimation(String entryName, Square5I value) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    Square5I square5I = (Square5I) gVar.b().get(this);
                    if (square5I == null) {
                        square5I = new Square5I();
                        gVar.b().set(this, square5I);
                    }
                    if (value != null) {
                        square5I.n(value);
                    }
                    gVar.a(this);
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public void setUserData(Object userData) {
        this.f79254r = userData;
    }

    public void setVec2FromAnimation(String entryName, Vector2 value) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    Class<?> type = gVar.b().getType();
                    if (type == Vec2I.class) {
                        Vec2I vec2I = (Vec2I) gVar.b().get(this);
                        if (vec2I == null) {
                            vec2I = new Vec2I();
                            gVar.b().set(this, vec2I);
                        }
                        if (value != null) {
                            vec2I.h((int) Nc.b.j1(value.f79838x), (int) Nc.b.j1(value.f79839y));
                        }
                    } else if (type == UVec2I.class) {
                        UVec2I uVec2I = (UVec2I) gVar.b().get(this);
                        if (uVec2I == null) {
                            uVec2I = new UVec2I();
                            gVar.b().set(this, uVec2I);
                        }
                        if (value != null) {
                            uVec2I.j((int) Nc.b.j1(value.f79838x));
                            uVec2I.k((int) Nc.b.j1(value.f79839y));
                        }
                    } else if (type == JAVARuntime.Vector2.class) {
                        gVar.b().set(this, value == null ? null : value.K0());
                    } else {
                        gVar.b().set(this, value);
                    }
                    gVar.a(this);
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public void setVec3FromAnimation(String entryName, Vector3 value) {
        determineAnimEntries();
        if (this.f79240b == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f79240b.size(); i10++) {
            g gVar = this.f79240b.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().set(this, value);
                    gVar.a(this);
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public boolean shouldBlockFromBasic() {
        return this.f79253q && !isFullVersion();
    }

    public boolean shouldTintIcon() {
        return false;
    }

    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f79239D;
        if (component != null) {
            return component;
        }
        JAVARuntime.Component component2 = new JAVARuntime.Component(this);
        this.f79239D = component2;
        return component2;
    }

    public void update(GameObject gameObject, boolean isEditor) {
    }

    public void updateForThumb(GameObject gameObject, E7.e sceneData) {
    }

    public void updateOnSelectedHierarchy() {
    }

    public void updateOnUnselectedHierarchy() {
    }

    public boolean willCallFunction(String functionName, Object... args) {
        return false;
    }

    @Override
    public Component mo1248clone() {
        try {
            J4.d.E1();
            J4.d.M1("Missing clone method implementation at component [" + getClass().getSimpleName() + "]");
            Log.e("Component System", "Missing clone method implementation at component [" + getClass().getSimpleName() + "]");
            N7.c.v0("Missing clone method implementation at component [" + getClass().getSimpleName() + "]");
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Component clone(Component component) {
        Component mo1248clone = component.mo1248clone();
        if (mo1248clone != null) {
            mo1248clone.enabled = component.enabled;
            mo1248clone.editor = component.getEditor().clone();
            mo1248clone.getGuid().m(component.getGuid());
            mo1248clone.inspectorMemory = component.inspectorMemory.b();
        }
        return mo1248clone;
    }

    public Component(String serializedComponentType, boolean requireFullVersion) {
        this.enabled = true;
        this.guid = new GUID();
        this.f79241c = false;
        this.f79243e = false;
        this.f79244g = false;
        this.f79245i = false;
        this.f79246j = false;
        this.f79247k = false;
        this.f79248l = false;
        this.f79253q = false;
        this.f79255s = true;
        this.f79256t = 0;
        this.f79236A = true;
        this.f79237B = true;
        this.inspectorMemory = new InspectorMemory();
        this.serializedComponentType = serializedComponentType;
        this.enabled = true;
        this.f79253q = requireFullVersion;
    }

    public Component(boolean requireParallelMethod, boolean requireODFMethod, boolean requireUpdateMethod, boolean requireLowTaskMethod) {
        this.enabled = true;
        this.guid = new GUID();
        this.f79241c = false;
        this.f79243e = false;
        this.f79244g = false;
        this.f79245i = false;
        this.f79246j = false;
        this.f79247k = false;
        this.f79248l = false;
        this.f79253q = false;
        this.f79255s = true;
        this.f79256t = 0;
        this.f79236A = true;
        this.f79237B = true;
        this.inspectorMemory = new InspectorMemory();
        this.f79243e = requireParallelMethod;
        this.f79244g = requireODFMethod;
        this.f79245i = requireUpdateMethod;
        this.f79246j = requireLowTaskMethod;
        this.f79247k = true;
    }
}
