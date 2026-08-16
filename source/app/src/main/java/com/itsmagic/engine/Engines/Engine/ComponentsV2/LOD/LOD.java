package com.itsmagic.engine.Engines.Engine.ComponentsV2.LOD;

import C5.b;
import D5.h;
import JAVARuntime.Runnable;
import N7.c;
import android.content.Context;
import android.widget.Toast;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;
import t6.e;
import t6.j;

public class LOD extends Component implements Serializable {

    public static final String f73462H = "LOD";

    public static final Class f73463I = LOD.class;

    public float f73464E;

    public LODTarget f73465F;

    public JAVARuntime.Component f73466G;

    @Expose
    @f
    private float maxVisibleDistance;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return LOD.f73463I;
        }

        @Override
        public String c() {
            return LOD.f73462H;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.LEVEL_OF_DETAIL);
        }

        @Override
        public String f() {
            return LOD.f73462H;
        }
    }

    public class b implements h {

        public final Context f73467a;

        public class a implements Runnable {

            public final Variable f73469b;

            public class RunnableC1197a implements Runnable {

                public final Exception f73471b;

                public RunnableC1197a(final Exception val$e) {
                    this.f73471b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(b.this.f73467a, this.f73471b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f73469b = val$variable;
            }

            @Override
            public void run() {
                e S12 = j.J1() ? j.S1("LOD - set max visible distance") : null;
                try {
                    try {
                        LOD.this.setMaxVisibleDistance(this.f73469b.float_value);
                    } catch (Exception e10) {
                        c.j0(new RunnableC1197a(e10));
                    }
                } finally {
                    j.P1(S12);
                }
            }
        }

        public b(final Context val$context) {
            this.f73467a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", LOD.this.maxVisibleDistance + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public LOD() {
        super(f73462H);
        this.maxVisibleDistance = 150.0f;
    }

    private void executeFor(GameObject gameObject, float d10, int count) {
        float f10 = this.f73464E;
        if (d10 >= f10) {
            for (int i10 = 0; i10 < count; i10++) {
                gameObject.C(i10).setEnabled(false);
            }
            return;
        }
        if (count <= 1) {
            gameObject.C(0).setEnabled(true);
            return;
        }
        int w02 = (int) Nc.b.w0((d10 / f10) / (1.0f / count));
        int i11 = 0;
        while (i11 < count) {
            gameObject.C(i11).setEnabled(i11 == w02);
            i11++;
        }
    }

    @Override
    public int getIconResource() {
        return R.drawable.fab;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_physics;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new b(context), "Max render distance", b.a.SLFloat).d(this.f79250n, this, "maxVisibleDistance", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        return linkedList;
    }

    @InterfaceC15237a
    public float getMaxVisibleDistance() {
        return this.maxVisibleDistance;
    }

    @Override
    public String getTitle() {
        return f73462H;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        float f10 = this.maxVisibleDistance;
        this.f73464E = f10 * f10;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        Camera mainCameraAllowEditor;
        GameObject gameObject2;
        super.preUpdate(gameObject, isEditor);
        int D10 = gameObject.D();
        if (D10 == 0) {
            return;
        }
        LODTarget lODTarget = this.f73465F;
        if (lODTarget != null && (lODTarget.f79250n == null || !lODTarget.isHierarchyActive())) {
            this.f73465F = null;
        }
        LODTarget lODTarget2 = this.f73465F;
        if (lODTarget2 != null) {
            executeFor(gameObject, lODTarget2.f79250n.transform.E1(gameObject), D10);
            return;
        }
        LODTarget lODTarget3 = (LODTarget) com.itsmagic.engine.Engines.Engine.World.a.k(LODTarget.class);
        this.f73465F = lODTarget3;
        if (lODTarget3 != null || (mainCameraAllowEditor = Camera.mainCameraAllowEditor()) == null || (gameObject2 = mainCameraAllowEditor.f79250n) == null) {
            return;
        }
        executeFor(gameObject, gameObject2.transform.E1(gameObject), D10);
    }

    @InterfaceC15237a
    public void setMaxVisibleDistance(float maxVisibleDistance) {
        this.maxVisibleDistance = maxVisibleDistance;
        this.f73464E = maxVisibleDistance * maxVisibleDistance;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73466G = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73466G;
        if (component != null) {
            return component;
        }
        JAVARuntime.LOD lod = new JAVARuntime.LOD(this);
        this.f73466G = lod;
        return lod;
    }

    @Override
    public Component mo1248clone() {
        LOD lod = new LOD();
        lod.maxVisibleDistance = this.maxVisibleDistance;
        return lod;
    }
}
