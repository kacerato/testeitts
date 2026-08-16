package Q4;

import aa.C3593a;
import aa.C3595c;
import aa.d;
import aa.e;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.BasePool;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class b extends a {

    public BasePool f21908h;

    public final e f21909i;

    public final C3595c f21910j;

    public final d f21911k;

    public final Vector3 f21912l;

    public b(BasePool objectPool, P4.a axisTopBarListener) {
        super(objectPool, axisTopBarListener);
        this.f21909i = new e();
        this.f21910j = new C3595c();
        this.f21911k = new d();
        this.f21912l = new Vector3();
        this.f21908h = objectPool;
    }

    @Override
    public void h(Vector2 touchPos, Panel3DView editor3DViewer) {
        this.f21910j.f31953b = editor3DViewer.f71460a0.f97746a.screenPointToWorldRay(touchPos, this.f21911k);
        this.f21909i.o(false);
        this.f21909i.n(false);
        C3593a B10 = this.f21909i.B(this.f21910j, true);
        if (B10 != null) {
            this.f21908h.f74618v3.set(B10.i());
            this.f21908h.applyBrushPress();
        }
    }
}
