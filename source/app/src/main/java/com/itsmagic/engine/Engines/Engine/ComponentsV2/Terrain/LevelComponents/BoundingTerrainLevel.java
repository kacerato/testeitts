package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.LevelComponents;

import C5.b;
import D5.h;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import android.content.Context;
import c9.g;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13314b;
import ib.InterfaceC13594a;
import ib.InterfaceC13601h;
import java.util.LinkedList;
import java.util.List;
import u9.InterfaceC15581a;
import u9.InterfaceC15582b;

public class BoundingTerrainLevel extends Component implements InterfaceC15582b, InterfaceC15581a {

    public static final String f76796T = "BoundingTerrainLevel";

    public static final Class f76797U = BoundingTerrainLevel.class;

    public final float[] f76798E;

    public final float[] f76799F;

    public final float[] f76800G;

    public int f76801H;

    public int f76802I;

    public long f76803J;

    public boolean f76804K;

    public final InterfaceC13601h f76805L;

    public final InterfaceC13594a f76806M;

    public float f76807N;

    public ColorINT f76808O;

    public GizmoObject f76809P;

    public float f76810Q;

    public final Vector3 f76811R;

    public JAVARuntime.Component f76812S;

    @Expose
    public float margin;

    @Expose
    public float verticalMargin;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return BoundingTerrainLevel.f76797U;
        }

        @Override
        public String c() {
            return BoundingTerrainLevel.f76796T;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return BoundingTerrainLevel.f76796T;
        }

        @Override
        public List<fb.d> i() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(null);
            return steppedArrayList;
        }
    }

    public class b implements InterfaceC13601h {
        public b() {
        }

        @Override
        public void a(f globalMatrix) {
            BoundingTerrainLevel.this.refreshNativeState();
            if (BoundingTerrainLevel.this.isHierarchyActive()) {
                BoundingTerrainLevel.requestAllTerrainsRegen();
            }
        }
    }

    public class c implements InterfaceC13594a {
        public c() {
        }

        @Override
        public void a(f hierarchyMatrix) {
            BoundingTerrainLevel.this.refreshNativeState();
            if (BoundingTerrainLevel.this.isHierarchyActive()) {
                BoundingTerrainLevel.requestAllTerrainsRegen();
            }
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", BoundingTerrainLevel.this.margin + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BoundingTerrainLevel.this.margin = variable.float_value;
            }
        }
    }

    public class e implements h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", BoundingTerrainLevel.this.verticalMargin + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BoundingTerrainLevel.this.verticalMargin = variable.float_value;
            }
        }
    }

    static {
        C13201a.b(new a());
        System.loadLibrary("native-bounding-terrain-level");
    }

    public BoundingTerrainLevel() {
        super(f76796T);
        this.margin = 0.5f;
        this.verticalMargin = 0.0f;
        this.f76798E = new float[16];
        this.f76799F = new float[16];
        this.f76800G = new float[6];
        this.f76801H = -1;
        this.f76802I = 0;
        this.f76805L = new b();
        this.f76806M = new c();
        this.f76807N = 1.0f;
        this.f76808O = new ColorINT(255, 214, 138);
        this.f76811R = new Vector3();
    }

    private int computeBoundsSignature(GameObject root) {
        if (root == null) {
            return 0;
        }
        return 527 + computeBoundsSignatureRecursive(root);
    }

    private int computeBoundsSignatureRecursive(GameObject obj) {
        if (obj == null || !obj.isHierarchyActive()) {
            return 0;
        }
        int i10 = 17;
        for (int i11 = 0; i11 < obj.N(); i11++) {
            Component L10 = obj.L(i11);
            if (L10 instanceof ModelRenderer) {
                ModelRenderer modelRenderer = (ModelRenderer) L10;
                if (modelRenderer.isEnabled() && modelRenderer.getVertex() != null) {
                    i10 = (i10 * 31) + modelRenderer.getVertex().f0();
                }
            }
        }
        for (int i12 = 0; i12 < obj.D(); i12++) {
            i10 = (i10 * 31) + computeBoundsSignatureRecursive(obj.C(i12));
        }
        return i10;
    }

    private void ensureNativePointer() {
        if (this.f76803J == 0) {
            this.f76803J = nativeCreate();
        }
    }

    private static native long nativeCreate();

    private static native void nativeDestroy(long pointer);

    private static native boolean nativeUpdate(long pointer, float[] matrix, float minX, float maxX, float minY, float maxY, float minZ, float maxZ);

    public void refreshNativeState() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null || gameObject.transform == null) {
            this.f76801H = -1;
            this.f76804K = false;
            return;
        }
        ensureNativePointer();
        this.f76801H = this.f79250n.transform.x4(null, this.f76801H);
        this.f76802I = computeBoundsSignature(this.f79250n);
        C13314b h10 = C13314b.h(this.f79250n, false, false);
        AABB d10 = new AABB(h10.f88250b, h10.f88251c).d(this.f79250n.transform.o0().o(this.f76799F));
        Vector3 z10 = d10.z();
        Vector3 u10 = d10.u();
        float f10 = this.margin;
        z10.subLocal(f10, this.verticalMargin, f10);
        float f11 = this.margin;
        u10.addLocal(f11, this.verticalMargin, f11);
        Vector3 vector3 = new Vector3((z10.getX() + u10.getX()) * 0.5f, (z10.getY() + u10.getY()) * 0.5f, (z10.getZ() + u10.getZ()) * 0.5f);
        Vector3 vector32 = new Vector3(u10.getX() - z10.getX(), u10.getY() - z10.getY(), u10.getZ() - z10.getZ());
        f fVar = new f();
        fVar.a1(vector3, vector32);
        fVar.o(this.f76798E);
        this.f76811R.set(vector3);
        this.f76810Q = Nc.b.T0(vector32.lengthF() / 2.0f);
        this.f76800G[0] = z10.getX();
        this.f76800G[1] = u10.getX();
        this.f76800G[2] = z10.getY();
        this.f76800G[3] = u10.getY();
        this.f76800G[4] = z10.getZ();
        this.f76800G[5] = u10.getZ();
        long j10 = this.f76803J;
        float[] fArr = this.f76798E;
        float[] fArr2 = this.f76800G;
        this.f76804K = nativeUpdate(j10, fArr, fArr2[0], fArr2[1], fArr2[2], fArr2[3], fArr2[4], fArr2[5]);
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
        return f76796T;
    }

    @Override
    public float getFocusBounding() {
        return this.f76810Q;
    }

    @Override
    public Vector3 getFocusCenter() {
        return this.f76811R;
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
        if (this.f76804K) {
            return this.f76803J;
        }
        return 0L;
    }

    @Override
    public String getTitle() {
        return f76796T;
    }

    public float getVerticalMargin() {
        return this.verticalMargin;
    }

    @Override
    public boolean hasFocusBounding() {
        return true;
    }

    @Override
    public int iconPriority() {
        return 3;
    }

    @Override
    public void onAttach() {
        Transform transform;
        super.onAttach();
        ensureNativePointer();
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.u(this.f76805L);
            Transform transform2 = this.f79250n.transform;
            transform2.r(transform2, this.f76806M, true, false, true, 1.0E-4f, 0.01f, 1.0E-4f);
        }
        refreshNativeState();
        requestAllTerrainsRegen();
    }

    @Override
    public void onDetach() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f76805L);
            this.f79250n.transform.M2(this.f76806M);
        }
        this.f76804K = false;
        long j10 = this.f76803J;
        if (j10 != 0) {
            nativeDestroy(j10);
            this.f76803J = 0L;
        }
        super.onDetach();
        requestAllTerrainsRegen();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        refreshNativeState();
        requestAllTerrainsRegen();
    }

    @Override
    public boolean prepareNativeTerrainLevel(Terrain terrain) {
        if (!isHierarchyActive()) {
            return false;
        }
        if (!this.f76804K) {
            refreshNativeState();
        }
        return this.f76804K;
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof g) {
            refreshNativeState();
            requestAllTerrainsRegen();
        }
    }

    public void setMargin(float margin) {
        this.margin = margin;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76812S = run;
    }

    public void setVerticalMargin(float verticalMargin) {
        this.verticalMargin = verticalMargin;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76812S;
        if (component != null) {
            return component;
        }
        JAVARuntime.BoundingTerrainLevel boundingTerrainLevel = new JAVARuntime.BoundingTerrainLevel(this);
        this.f76812S = boundingTerrainLevel;
        return boundingTerrainLevel;
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        if (this.f76809P == null) {
            GizmoObject gizmoObject = new GizmoObject(Vertex.E1(Vertex.v.CUBE, null).x2());
            this.f76809P = gizmoObject;
            gizmoObject.setEnableLight(true);
            this.f76809P.setColor(this.f76808O.e0());
            this.f76809P.setRenderMode(GizmoElement.RenderMode.WireFrame);
        }
        this.f76809P.setMatrix(this.f76798E);
        Ub.a.a(this.f76809P);
    }

    @Override
    public Component mo1248clone() {
        BoundingTerrainLevel boundingTerrainLevel = new BoundingTerrainLevel();
        boundingTerrainLevel.margin = this.margin;
        boundingTerrainLevel.verticalMargin = this.verticalMargin;
        return boundingTerrainLevel;
    }
}
