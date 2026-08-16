package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.LevelComponents;

import C5.b;
import D5.h;
import android.content.Context;
import c9.g;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.InterfaceC13594a;
import ib.InterfaceC13601h;
import java.util.LinkedList;
import java.util.List;
import u9.InterfaceC15581a;
import u9.InterfaceC15582b;

public class ModelTerrainLevel extends Component implements InterfaceC15582b, InterfaceC15581a {

    public static final String f76830Q = "ModelTerrainLevel";

    public static final Class f76831R = ModelTerrainLevel.class;

    public static final float f76832S = 0.25f;

    public static final int f76833T = 8;

    public static final int f76834U = 512;

    public final float[] f76835E;

    public final float[] f76836F;

    public int f76837G;

    public long f76838H;

    public boolean f76839I;

    public boolean f76840J;

    public NativeFloatBuffer f76841K;

    public int f76842L;

    public int f76843M;

    public final InterfaceC13601h f76844N;

    public final InterfaceC13594a f76845O;

    public JAVARuntime.Component f76846P;

    @Expose
    private float margin;

    @Expose
    private float verticalMargin;

    @Expose
    private float verticalOffset;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return ModelTerrainLevel.f76831R;
        }

        @Override
        public String c() {
            return ModelTerrainLevel.f76830Q;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return ModelTerrainLevel.f76830Q;
        }
    }

    public class b implements InterfaceC13601h {
        public b() {
        }

        @Override
        public void a(f globalMatrix) {
            Transform transform;
            if (globalMatrix != null) {
                globalMatrix.o(ModelTerrainLevel.this.f76835E);
            }
            ModelTerrainLevel modelTerrainLevel = ModelTerrainLevel.this;
            GameObject gameObject = modelTerrainLevel.f79250n;
            if (gameObject != null && (transform = gameObject.transform) != null) {
                modelTerrainLevel.f76837G = transform.x4(null, modelTerrainLevel.f76837G);
            }
            ModelTerrainLevel.this.f76840J = true;
            ModelTerrainLevel.requestAllTerrainsRegen();
        }
    }

    public class c implements InterfaceC13594a {
        public c() {
        }

        @Override
        public void a(f hierarchyMatrix) {
            ModelTerrainLevel.this.f76840J = true;
            ModelTerrainLevel.requestAllTerrainsRegen();
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", ModelTerrainLevel.this.margin + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ModelTerrainLevel.this.margin = variable.float_value;
                ModelTerrainLevel.this.f76840J = true;
                ModelTerrainLevel.requestAllTerrainsRegen();
            }
        }
    }

    public class e implements h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", ModelTerrainLevel.this.verticalMargin + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ModelTerrainLevel.this.verticalMargin = variable.float_value;
                ModelTerrainLevel.this.f76840J = true;
                ModelTerrainLevel.requestAllTerrainsRegen();
            }
        }
    }

    static {
        C13201a.b(new a());
        System.loadLibrary("native-model-terrain-level");
    }

    public ModelTerrainLevel() {
        super(f76830Q);
        this.margin = 0.5f;
        this.verticalMargin = 0.0f;
        this.verticalOffset = 0.03f;
        this.f76835E = new float[16];
        this.f76836F = new float[6];
        this.f76837G = -1;
        this.f76840J = true;
        this.f76844N = new b();
        this.f76845O = new c();
    }

    private static int calculateCacheResolution(float size) {
        int ceil = ((int) Math.ceil(size / 0.25f)) + 1;
        if (ceil < 8) {
            return 8;
        }
        if (ceil > 512) {
            return 512;
        }
        return ceil;
    }

    private static void collectModelRenderers(GameObject object, List<ModelRenderer> out) {
        if (object == null) {
            return;
        }
        for (int i10 = 0; i10 < object.N(); i10++) {
            Component L10 = object.L(i10);
            if (L10.isHierarchyActive() && (L10 instanceof ModelRenderer)) {
                ModelRenderer modelRenderer = (ModelRenderer) L10;
                if (modelRenderer.getVertex() != null && !modelRenderer.isSuppressRender()) {
                    out.add(modelRenderer);
                }
            }
        }
        for (int i11 = 0; i11 < object.D(); i11++) {
            collectModelRenderers(object.C(i11), out);
        }
    }

    private void ensureNativePointer() {
        if (this.f76838H == 0) {
            this.f76838H = nativeCreate();
        }
    }

    private static boolean isRendererNativeCacheReady(ModelRenderer renderer) {
        Vertex vertex;
        float[] renderMatrix;
        if (renderer == null || (vertex = renderer.getVertex()) == null || vertex.W0() <= 0) {
            return false;
        }
        NativeFloatBuffer i12 = vertex.i1();
        NativeIntBuffer V02 = vertex.V0();
        return i12 != null && V02 != null && i12.validate() && V02.validate() && i12.capacity() >= 3 && V02.capacity() >= 3 && (renderMatrix = renderer.getRenderMatrix()) != null && renderMatrix.length >= 16;
    }

    private static native boolean nativeBuildCache(long pointer, long cacheBufferPointer, int cacheWidth, int cacheHeight, float minX, float maxX, float minY, float maxY, float minZ, float maxZ, long[] vertexPointers, long[] trianglePointers, int[] triangleCounts, float[] matrices, int rendererCount, float margin, float verticalMargin, float verticalOffset);

    private static native long nativeCreate();

    private static native void nativeDestroy(long pointer);

    /* JADX WARN: Multi-variable type inference failed */
    private boolean rebuildNativeCache() {
        AABB d02;
        ensureNativePointer();
        LinkedList linkedList = new LinkedList();
        collectModelRenderers(this.f79250n, linkedList);
        if (linkedList.isEmpty()) {
            this.f76839I = false;
            return false;
        }
        float f10 = Float.NEGATIVE_INFINITY;
        float f11 = Float.NEGATIVE_INFINITY;
        boolean z10 = false;
        int i10 = 0;
        float f12 = Float.POSITIVE_INFINITY;
        float f13 = Float.POSITIVE_INFINITY;
        float f14 = Float.POSITIVE_INFINITY;
        float f15 = Float.NEGATIVE_INFINITY;
        for (int i11 = 0; i11 < linkedList.size(); i11++) {
            ModelRenderer modelRenderer = (ModelRenderer) linkedList.get(i11);
            if (isRendererNativeCacheReady(modelRenderer) && (d02 = modelRenderer.getVertex().d0()) != null) {
                AABB d10 = d02.d(modelRenderer.getRenderMatrix());
                Vector3 z11 = d10.z();
                Vector3 u10 = d10.u();
                if (z11.getX() < f12) {
                    f12 = z11.getX();
                }
                if (u10.getX() > f10) {
                    f10 = u10.getX();
                }
                if (z11.getY() < f13) {
                    f13 = z11.getY();
                }
                if (u10.getY() > f15) {
                    f15 = u10.getY();
                }
                if (z11.getZ() < f14) {
                    f14 = z11.getZ();
                }
                if (u10.getZ() > f11) {
                    f11 = u10.getZ();
                }
                i10++;
                z10 = true;
            }
        }
        if (!z10 || i10 <= 0) {
            this.f76839I = false;
            return false;
        }
        float[] fArr = this.f76836F;
        float f16 = this.margin;
        fArr[0] = f12 - f16;
        fArr[1] = f10 + f16;
        float f17 = this.verticalMargin;
        fArr[2] = f13 - f17;
        fArr[3] = f15 + f17;
        fArr[4] = f14 - f16;
        fArr[5] = f16 + f11;
        this.f76842L = calculateCacheResolution(f10 - f12);
        int calculateCacheResolution = calculateCacheResolution(f11 - f14);
        this.f76843M = calculateCacheResolution;
        int i12 = this.f76842L * calculateCacheResolution * 2;
        NativeFloatBuffer nativeFloatBuffer = this.f76841K;
        if (nativeFloatBuffer == null || !nativeFloatBuffer.validate() || this.f76841K.capacity() != i12) {
            this.f76841K = new NativeFloatBuffer(i12);
        }
        long[] jArr = new long[i10];
        long[] jArr2 = new long[i10];
        int[] iArr = new int[i10];
        float[] fArr2 = new float[i10 * 16];
        NativeFloatBuffer[] nativeFloatBufferArr = new NativeFloatBuffer[i10];
        NativeIntBuffer[] nativeIntBufferArr = new NativeIntBuffer[i10];
        int i13 = 0;
        for (int i14 = 0; i14 < linkedList.size(); i14++) {
            ModelRenderer modelRenderer2 = (ModelRenderer) linkedList.get(i14);
            if (isRendererNativeCacheReady(modelRenderer2)) {
                Vertex vertex = modelRenderer2.getVertex();
                NativeFloatBuffer i15 = vertex.i1();
                NativeIntBuffer V02 = vertex.V0();
                nativeFloatBufferArr[i13] = i15;
                nativeIntBufferArr[i13] = V02;
                jArr[i13] = i15.getPointerCritical();
                jArr2[i13] = V02.getPointerCritical();
                iArr[i13] = vertex.W0();
                System.arraycopy(modelRenderer2.getRenderMatrix(), 0, fArr2, i13 * 16, 16);
                i13++;
            }
        }
        int i16 = this.f76843M;
        float[] fArr3 = this.f76836F;
        boolean nativeBuildCache = nativeBuildCache(this.f76838H, this.f76841K.getPointerCritical(), this.f76842L, i16, fArr3[0], fArr3[1], fArr3[2], fArr3[3], fArr3[4], fArr3[5], jArr, jArr2, iArr, fArr2, i10, this.margin, this.verticalMargin, this.verticalOffset);
        this.f76839I = nativeBuildCache;
        this.f76840J = !nativeBuildCache;
        return nativeBuildCache;
    }

    public static void requestAllTerrainsRegen() {
        List<Component> h10 = R8.f.h(Terrain.class);
        for (int i10 = 0; i10 < h10.size(); i10++) {
            try {
                ((Terrain) h10.get(i10)).requestRegenLevelTable();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public boolean allowLeveling(Terrain terrain) {
        return true;
    }

    @Override
    public String getDisplayableTitle() {
        return f76830Q;
    }

    @Override
    public int getIconResource() {
        return R.drawable.terrain_down_v2;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_terrain;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        d dVar = new d();
        b.a aVar = b.a.SLFloat;
        linkedList.add(new C5.b(dVar, "margin", aVar));
        linkedList.add(new C5.b(new e(), "verticalMargin", aVar));
        return linkedList;
    }

    public float getMargin() {
        return this.margin;
    }

    @Override
    public long getNativeTerrainLevelPointer() {
        if (this.f76839I) {
            return this.f76838H;
        }
        return 0L;
    }

    @Override
    public String getTitle() {
        return f76830Q;
    }

    public float getVerticalMargin() {
        return this.verticalMargin;
    }

    public float getVerticalOffset() {
        return this.verticalOffset;
    }

    @Override
    public int iconPriority() {
        return 3;
    }

    @Override
    public void onAttach() {
        Transform transform;
        super.onAttach();
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            this.f76837G = -1;
        } else {
            transform.u(this.f76844N);
            Transform transform2 = this.f79250n.transform;
            transform2.r(transform2, this.f76845O, true, false, true, 1.0E-4f, 0.01f, 1.0E-4f);
            this.f76837G = this.f79250n.transform.x4(this.f76835E, this.f76837G);
        }
        ensureNativePointer();
        this.f76840J = true;
        requestAllTerrainsRegen();
    }

    @Override
    public void onDetach() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f76844N);
            this.f79250n.transform.M2(this.f76845O);
        }
        this.f76837G = -1;
        this.f76839I = false;
        this.f76840J = true;
        this.f76841K = null;
        long j10 = this.f76838H;
        if (j10 != 0) {
            nativeDestroy(j10);
            this.f76838H = 0L;
        }
        requestAllTerrainsRegen();
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        Transform transform;
        super.onHierarchyActiveChanged(enabled);
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            this.f76837G = transform.x4(this.f76835E, this.f76837G);
        }
        this.f76840J = true;
        requestAllTerrainsRegen();
    }

    @Override
    public boolean prepareNativeTerrainLevel(Terrain terrain) {
        boolean z10;
        if (isHierarchyActive()) {
            return (this.f76840J || !(z10 = this.f76839I)) ? rebuildNativeCache() : z10;
        }
        return false;
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof g) {
            this.f76840J = true;
            requestAllTerrainsRegen();
        }
    }

    public void setMargin(float margin) {
        this.margin = margin;
        this.f76840J = true;
        requestAllTerrainsRegen();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76846P = run;
    }

    public void setVerticalMargin(float verticalMargin) {
        this.verticalMargin = verticalMargin;
        this.f76840J = true;
        requestAllTerrainsRegen();
    }

    public void setVerticalOffset(float verticalOffset) {
        this.verticalOffset = verticalOffset;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76846P;
        if (component != null) {
            return component;
        }
        JAVARuntime.ModelTerrainLevel modelTerrainLevel = new JAVARuntime.ModelTerrainLevel(this);
        this.f76846P = modelTerrainLevel;
        return modelTerrainLevel;
    }

    @Override
    public Component mo1248clone() {
        ModelTerrainLevel modelTerrainLevel = new ModelTerrainLevel();
        modelTerrainLevel.margin = this.margin;
        modelTerrainLevel.verticalMargin = this.verticalMargin;
        modelTerrainLevel.verticalOffset = this.verticalOffset;
        return modelTerrainLevel;
    }
}
