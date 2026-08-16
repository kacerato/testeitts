package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.LevelComponents;

import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.InterfaceC13601h;
import java.util.LinkedList;
import java.util.List;
import u9.InterfaceC15581a;
import u9.InterfaceC15582b;

public class BoxTerrainLevel extends Component implements InterfaceC15582b, InterfaceC15581a {

    public static final String f76817O = "BoxTerrainLevel";

    public static final Class f76818P = BoxTerrainLevel.class;

    public final float[] f76819E;

    public final float[] f76820F;

    public int f76821G;

    public long f76822H;

    public boolean f76823I;

    public final InterfaceC13601h f76824J;

    public float f76825K;

    public ColorINT f76826L;

    public GizmoObject f76827M;

    public JAVARuntime.Component f76828N;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return BoxTerrainLevel.f76818P;
        }

        @Override
        public String c() {
            return BoxTerrainLevel.f76817O;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return BoxTerrainLevel.f76817O;
        }
    }

    public class b implements InterfaceC13601h {
        public b() {
        }

        @Override
        public void a(f globalMatrix) {
            Transform transform;
            if (globalMatrix != null) {
                globalMatrix.o(BoxTerrainLevel.this.f76819E);
            }
            BoxTerrainLevel boxTerrainLevel = BoxTerrainLevel.this;
            GameObject gameObject = boxTerrainLevel.f79250n;
            if (gameObject != null && (transform = gameObject.transform) != null) {
                boxTerrainLevel.f76821G = transform.x4(null, boxTerrainLevel.f76821G);
            }
            BoxTerrainLevel.this.updateNativeState();
            BoxTerrainLevel.requestAllTerrainsRegen();
        }
    }

    static {
        C13201a.b(new a());
        System.loadLibrary("native-box-terrain-level");
    }

    public BoxTerrainLevel() {
        super(f76817O);
        this.f76819E = new float[16];
        this.f76820F = new float[6];
        this.f76821G = -1;
        this.f76824J = new b();
        this.f76825K = 1.0f;
        this.f76826L = new ColorINT(255, 214, 138);
    }

    private static void calculateMatrixBounds(float[] matrix, float[] out) {
        float f10 = Float.POSITIVE_INFINITY;
        float f11 = Float.POSITIVE_INFINITY;
        float f12 = Float.NEGATIVE_INFINITY;
        float f13 = Float.NEGATIVE_INFINITY;
        float f14 = Float.NEGATIVE_INFINITY;
        int i10 = 0;
        float f15 = Float.POSITIVE_INFINITY;
        while (i10 < 2) {
            float f16 = i10 == 0 ? -0.5f : 0.5f;
            int i11 = 0;
            while (i11 < 2) {
                float f17 = i11 == 0 ? -0.5f : 0.5f;
                int i12 = 0;
                while (i12 < 2) {
                    float f18 = i12 == 0 ? -0.5f : 0.5f;
                    float f19 = (matrix[0] * f16) + (matrix[4] * f17) + (matrix[8] * f18) + matrix[12];
                    float f20 = (matrix[1] * f16) + (matrix[5] * f17) + (matrix[9] * f18) + matrix[13];
                    float f21 = (matrix[2] * f16) + (matrix[6] * f17) + (matrix[10] * f18) + matrix[14];
                    if (f19 < f10) {
                        f10 = f19;
                    }
                    if (f19 > f12) {
                        f12 = f19;
                    }
                    if (f20 < f15) {
                        f15 = f20;
                    }
                    if (f20 > f13) {
                        f13 = f20;
                    }
                    if (f21 < f11) {
                        f11 = f21;
                    }
                    if (f21 > f14) {
                        f14 = f21;
                    }
                    i12++;
                }
                i11++;
            }
            i10++;
        }
        out[0] = f10;
        out[1] = f12;
        out[2] = f15;
        out[3] = f13;
        out[4] = f11;
        out[5] = f14;
    }

    private void ensureNativePointer() {
        if (this.f76822H == 0) {
            this.f76822H = nativeCreate();
        }
    }

    private static native long nativeCreate();

    private static native void nativeDestroy(long pointer);

    private static native boolean nativeUpdate(long pointer, float[] matrix, float minX, float maxX, float minY, float maxY, float minZ, float maxZ);

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

    public void updateNativeState() {
        ensureNativePointer();
        calculateMatrixBounds(this.f76819E, this.f76820F);
        long j10 = this.f76822H;
        float[] fArr = this.f76819E;
        float[] fArr2 = this.f76820F;
        this.f76823I = nativeUpdate(j10, fArr, fArr2[0], fArr2[1], fArr2[2], fArr2[3], fArr2[4], fArr2[5]);
    }

    @Override
    public boolean allowLeveling(Terrain terrain) {
        return true;
    }

    @Override
    public String getDisplayableTitle() {
        return f76817O;
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
        return new LinkedList();
    }

    @Override
    public long getNativeTerrainLevelPointer() {
        if (this.f76823I) {
            return this.f76822H;
        }
        return 0L;
    }

    @Override
    public String getTitle() {
        return f76817O;
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
            this.f76821G = -1;
        } else {
            transform.u(this.f76824J);
            this.f76821G = this.f79250n.transform.x4(this.f76819E, this.f76821G);
        }
        ensureNativePointer();
        updateNativeState();
        requestAllTerrainsRegen();
    }

    @Override
    public void onDetach() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f76824J);
        }
        this.f76821G = -1;
        this.f76823I = false;
        long j10 = this.f76822H;
        if (j10 != 0) {
            nativeDestroy(j10);
            this.f76822H = 0L;
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
            this.f76821G = transform.x4(this.f76819E, this.f76821G);
        }
        updateNativeState();
        requestAllTerrainsRegen();
    }

    @Override
    public boolean prepareNativeTerrainLevel(Terrain terrain) {
        if (!isHierarchyActive()) {
            return false;
        }
        if (!this.f76823I) {
            updateNativeState();
        }
        return this.f76823I;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76828N = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76828N;
        if (component != null) {
            return component;
        }
        JAVARuntime.BoxTerrainLevel boxTerrainLevel = new JAVARuntime.BoxTerrainLevel(this);
        this.f76828N = boxTerrainLevel;
        return boxTerrainLevel;
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        if (this.f76827M == null) {
            GizmoObject gizmoObject = new GizmoObject(Vertex.E1(Vertex.v.CUBE, null).x2());
            this.f76827M = gizmoObject;
            gizmoObject.setEnableLight(true);
            this.f76827M.setColor(this.f76826L.e0());
            this.f76827M.setRenderMode(GizmoElement.RenderMode.WireFrame);
        }
        this.f76827M.setMatrix(this.f76819E);
        Ub.a.a(this.f76827M);
    }

    @Override
    public Component mo1248clone() {
        return new BoxTerrainLevel();
    }
}
