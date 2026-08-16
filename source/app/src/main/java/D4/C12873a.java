package d4;

import JAVARuntime.GUIUtils;
import aa.C3595c;
import aa.d;
import aa.e;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Utils.TerrainRaycaster;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import tc.h;

public class C12873a extends P4.b {

    public static final float f84069l = 0.016666668f;

    public static final float f84070m = 0.25f;

    public Terrain f84071b;

    public final HashMap<Panel3DView, h> f84072c;

    public final HashMap<Panel3DView, Boolean> f84073d;

    public final Vector2 f84074e;

    public final e f84075f;

    public final C3595c f84076g;

    public final Vector3 f84077h;

    public final d f84078i;

    public final AtomicBoolean f84079j;

    public long f84080k;

    public class RunnableC1503a implements Runnable {
        public RunnableC1503a() {
        }

        @Override
        public void run() {
            C12873a.this.f84079j.set(false);
        }
    }

    public C12873a(Terrain terrain, P4.a axisTopBarListener) {
        super(axisTopBarListener);
        this.f84072c = new HashMap<>();
        this.f84073d = new HashMap<>();
        this.f84074e = new Vector2();
        this.f84075f = new e();
        this.f84076g = new C3595c();
        this.f84077h = new Vector3();
        this.f84078i = new d();
        this.f84079j = new AtomicBoolean();
        this.f84080k = 0L;
        this.f84071b = terrain;
    }

    @Override
    public void c(Panel3DView editor3DViewer, o4.b engineUpdateData) {
        if (this.f84071b.renderBrushes() && this.f84071b.f77022K) {
            h hVar = this.f84072c.get(editor3DViewer);
            h hVar2 = null;
            h hVar3 = (hVar == null || !hVar.q() || editor3DViewer.s0(hVar)) ? hVar : null;
            if (hVar3 == null && (hVar3 = editor3DViewer.y(GUIUtils.TouchFilter.Down, true)) != null) {
                this.f84073d.put(editor3DViewer, Boolean.FALSE);
                Terrain terrain = this.f84071b;
                if (terrain.f77028M == Terrain.a0.ProceduralBrush) {
                    terrain.beginProceduralBrushStroke();
                }
            }
            if (hVar3 != null && editor3DViewer.w(GUIUtils.TouchFilter.Pressed, 1) != null) {
                this.f84080k = 0L;
                this.f84073d.put(editor3DViewer, Boolean.FALSE);
                this.f84071b.endProceduralBrushStroke();
                hVar3 = null;
            }
            if (hVar3 == null) {
                this.f84080k = 0L;
                this.f84073d.put(editor3DViewer, Boolean.FALSE);
                this.f84071b.endProceduralBrushStroke();
            } else if (this.f84079j.compareAndSet(false, true)) {
                float j10 = j();
                editor3DViewer.a0(hVar3, this.f84074e);
                i(this.f84074e, editor3DViewer, j10);
                if (hVar3.t() || !hVar3.q()) {
                    this.f84080k = 0L;
                    this.f84073d.put(editor3DViewer, Boolean.FALSE);
                    this.f84071b.endProceduralBrushStroke();
                } else {
                    hVar2 = hVar3;
                }
                hVar3 = hVar2;
            }
            if (hVar == null && hVar3 != null) {
                this.f84073d.put(editor3DViewer, Boolean.FALSE);
            }
            this.f84072c.put(editor3DViewer, hVar3);
        }
    }

    @Override
    public boolean d() {
        return this.f84071b.f77022K;
    }

    @Override
    public boolean f() {
        return true;
    }

    public final void i(Vector2 touchPos, Panel3DView editor3DViewer, float brushDeltaSeconds) {
        editor3DViewer.f71460a0.f97746a.screenPointToWorldRay(touchPos, this.f84078i);
        d dVar = this.f84078i;
        if (!TerrainRaycaster.c(dVar.f31957b, dVar.f31958c, this.f84071b, this.f84077h)) {
            this.f84079j.set(false);
            return;
        }
        this.f84071b.f77013H.B0(this.f84077h.getX());
        this.f84071b.f77013H.C0(this.f84077h.getZ());
        this.f84071b.f77020I = this.f84077h.getY();
        if (this.f84071b.f77089y1) {
            Boolean bool = Boolean.TRUE;
            boolean equals = bool.equals(this.f84073d.get(editor3DViewer));
            Terrain terrain = this.f84071b;
            if (terrain.f77028M == Terrain.a0.Level && !equals) {
                terrain.f77085v1 = this.f84077h.getY() - this.f84071b.getCachedGlobalPositionY();
                this.f84073d.put(editor3DViewer, bool);
            }
        }
        this.f84071b.applyBrushPress(brushDeltaSeconds, new RunnableC1503a());
    }

    public final float j() {
        long nanoTime = System.nanoTime();
        long j10 = this.f84080k;
        if (j10 == 0) {
            this.f84080k = nanoTime;
            return 0.016666668f;
        }
        float f10 = ((float) (nanoTime - j10)) / 1.0E9f;
        this.f84080k = nanoTime;
        if (f10 < 0.0f) {
            return 0.016666668f;
        }
        if (f10 > 0.25f) {
            return 0.25f;
        }
        return f10;
    }
}
