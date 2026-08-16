package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain;

import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import fb.AbstractC13203c;
import fb.C13201a;
import fb.d;
import ib.InterfaceC13601h;
import java.util.List;
import t6.e;
import t6.j;
import u9.InterfaceC15583c;

public class StickToTerrain extends Component implements InterfaceC15583c {

    public static final String f76963L = "StickToTerrain";

    public static final Class f76964M = StickToTerrain.class;

    public static final float f76965N = 0.5f;

    public float f76966E;

    public float f76967F;

    public volatile boolean f76968G;

    public float f76969H;

    public float f76970I;

    public final InterfaceC13601h f76971J;

    public JAVARuntime.Component f76972K;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return StickToTerrain.f76964M;
        }

        @Override
        public String c() {
            return StickToTerrain.f76963L;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return StickToTerrain.f76963L;
        }

        @Override
        public List<d> i() {
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
            StickToTerrain.this.f76969H = globalMatrix.F1();
            StickToTerrain.this.f76970I = globalMatrix.H1();
            if (StickToTerrain.this.f76969H == StickToTerrain.this.f76966E && StickToTerrain.this.f76970I == StickToTerrain.this.f76967F) {
                return;
            }
            StickToTerrain.this.f76968G = true;
        }
    }

    public class c implements Runnable {

        public final GameObject f76974b;

        public final float f76975c;

        public final float f76976d;

        public final float f76977e;

        public c(final GameObject val$targetGameObject, final float val$x, final float val$finalBestY, final float val$z) {
            this.f76974b = val$targetGameObject;
            this.f76975c = val$x;
            this.f76976d = val$finalBestY;
            this.f76977e = val$z;
        }

        @Override
        public void run() {
            Transform transform;
            e S12 = j.J1() ? j.S1("StickToTerrain - set global position") : null;
            try {
                GameObject gameObject = this.f76974b;
                if (gameObject != null && !gameObject.isGarbage() && (transform = this.f76974b.transform) != null) {
                    transform.g3(this.f76975c, this.f76976d, this.f76977e);
                }
            } finally {
                j.P1(S12);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public StickToTerrain() {
        super(f76963L);
        this.f76966E = Float.NaN;
        this.f76967F = Float.NaN;
        this.f76969H = Float.NaN;
        this.f76970I = Float.NaN;
        this.f76971J = new b();
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        return new SteppedArrayList();
    }

    @Override
    public float getTerrainListenerRadius() {
        return 0.5f;
    }

    @Override
    public float getTerrainListenerWorldX() {
        return this.f76969H;
    }

    @Override
    public float getTerrainListenerWorldZ() {
        return this.f76970I;
    }

    @Override
    public String getTitle() {
        return f76963L;
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        if (this.f76968G && gameObject != null) {
            float f10 = this.f76969H;
            float f11 = this.f76970I;
            this.f76968G = false;
            this.f76966E = f10;
            this.f76967F = f11;
            List<Component> h10 = R8.f.h(Terrain.class);
            if (h10 == null || h10.isEmpty()) {
                return;
            }
            float f12 = -3.4028235E38f;
            boolean z10 = false;
            for (int i10 = 0; i10 < h10.size(); i10++) {
                try {
                    Component component = h10.get(i10);
                    if (component instanceof Terrain) {
                        Terrain terrain = (Terrain) component;
                        if (terrain.isEnabled() && terrain.isDataLoaded() && terrain.isInsideTerrain(f10, f11)) {
                            try {
                                float worldY = terrain.getWorldY(f10, f11);
                                if (!z10 || worldY > f12) {
                                    z10 = true;
                                    f12 = worldY;
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    this.f76968G = true;
                    return;
                }
            }
            if (z10) {
                K8.a.I(new c(gameObject, f10, f12, f11));
            }
        }
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f79250n.transform.u(this.f76971J);
        this.f76969H = this.f79250n.transform.w0();
        this.f76970I = this.f79250n.transform.y0();
        this.f76968G = true;
    }

    @Override
    public void onDetach() {
        Transform transform;
        super.onDetach();
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f76971J);
        }
        this.f76969H = Float.NaN;
        this.f76970I = Float.NaN;
        this.f76968G = false;
    }

    @Override
    public void onTerrainModifiedNear(Terrain terrain) {
        this.f76968G = true;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76972K = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76972K;
        if (component != null) {
            return component;
        }
        JAVARuntime.StickToTerrain stickToTerrain = new JAVARuntime.StickToTerrain(this);
        this.f76972K = stickToTerrain;
        return stickToTerrain;
    }

    @Override
    public Component mo1248clone() {
        return new StickToTerrain();
    }
}
