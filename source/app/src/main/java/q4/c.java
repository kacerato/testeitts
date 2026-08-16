package Q4;

import aa.C3595c;
import aa.d;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.ObjectPool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Utils.TerrainRaycaster;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class c extends a {

    public ObjectPool f21913h;

    public Terrain f21914i;

    public final C3595c f21915j;

    public final d f21916k;

    public final Vector3 f21917l;

    public c(ObjectPool objectPool, Terrain terrain, P4.a axisTopBarListener) {
        super(objectPool, axisTopBarListener);
        this.f21915j = new C3595c();
        this.f21916k = new d();
        this.f21917l = new Vector3();
        this.f21913h = objectPool;
        this.f21914i = terrain;
    }

    @Override
    public void h(Vector2 touchPos, Panel3DView editor3DViewer) {
        editor3DViewer.f71460a0.f97746a.screenPointToWorldRay(touchPos, this.f21916k);
        d dVar = this.f21916k;
        if (TerrainRaycaster.c(dVar.f31957b, dVar.f31958c, this.f21914i, this.f21917l)) {
            this.f21913h.f74618v3.set(this.f21917l);
            this.f21913h.applyBrushPress();
        }
    }
}
