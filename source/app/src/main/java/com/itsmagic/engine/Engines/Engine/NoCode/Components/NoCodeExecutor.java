package com.itsmagic.engine.Engines.Engine.NoCode.Components;

import C5.m;
import Ic.C2629h;
import Ic.C2632k;
import android.content.Context;
import android.view.View;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import fb.AbstractC13203c;
import fb.C13201a;
import ga.E;
import j9.C13813a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import n4.C14352d;

public class NoCodeExecutor extends Component implements Serializable {

    public static final String f78923F = "NoCodeExecutor";

    public static final Class f78924G = NoCodeExecutor.class;

    public transient boolean f78925E;

    @Expose
    private NoCodeData noCodeData;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return NoCodeExecutor.f78924G;
        }

        @Override
        public String c() {
            return NoCodeExecutor.f78923F;
        }

        @Override
        public String e() {
            return "NoCode Graph";
        }

        @Override
        public String h(boolean translate) {
            return "NoCode instance";
        }
    }

    public class b implements NoCodeData.q {
        public b() {
        }

        @Override
        public void a() {
            NoCodeExecutor.this.reloadInspector();
        }
    }

    public class c extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                N7.c.D().B0(new C14352d(NoCodeExecutor.this));
            }
        }

        public c() {
            add(new C12908b("Edit script", new a()));
        }
    }

    public class d extends SteppedArrayList<m> {

        public class a extends AbstractViewOnClickListenerC12733a {
            public a() {
            }

            @Override
            public void click(View view) {
                N7.c.D().B0(new C14352d(NoCodeExecutor.this));
            }
        }

        public d() {
            add(new m(R.drawable.edit_script_2, new a()));
        }
    }

    static {
        C13201a.b(new a());
    }

    public NoCodeExecutor() {
        super(f78923F);
        this.noCodeData = E.c();
    }

    private void dispatchStartEventIfNeeded(NoCodeData data) {
        if (data == null || this.f78925E || K8.a.f10989t <= 1 || !c8.b.k()) {
            return;
        }
        this.f78925E = true;
        data.E(La.a.class);
    }

    @Override
    public void callFunction(String functionName, Object... args) {
        super.callFunction(functionName, args);
        NoCodeData noCodeData = getNoCodeData();
        if (noCodeData != null) {
            noCodeData.Y0(this.f79250n, this);
            noCodeData.C(functionName, args);
        }
    }

    @Override
    public int countAsync() {
        if (this.noCodeData != null) {
            return 1 + getNoCodeData().r();
        }
        return 1;
    }

    public Object getAttribute(String name) {
        NoCodeData noCodeData = getNoCodeData();
        if (noCodeData != null) {
            return noCodeData.Z(name);
        }
        return null;
    }

    public Object getAttributeById(String id2) {
        NoCodeData noCodeData = getNoCodeData();
        if (noCodeData != null) {
            return noCodeData.a0(id2);
        }
        return null;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        NoCodeData noCodeData = this.noCodeData;
        if (noCodeData != null) {
            c2632k.f9114a.addAll(noCodeData.d0(dependencyRequest).f9114a);
        }
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return "NoCode";
    }

    @Override
    public int getIconResource() {
        return R.drawable.no_code_v2;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.addAll(getNoCodeData().f0(context, new b()));
        return linkedList;
    }

    @Override
    public List<m> getInspectorExtras() {
        return new d();
    }

    @Override
    public List<C12908b> getLongTapMenu() {
        return new c();
    }

    public NoCodeData getNoCodeData() {
        if (this.noCodeData == null) {
            this.noCodeData = E.c();
        }
        this.noCodeData.Y0(this.f79250n, this);
        this.noCodeData.I();
        return this.noCodeData;
    }

    @Override
    public String getTitle() {
        return "NoCode";
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        NoCodeData noCodeData = this.noCodeData;
        if (noCodeData != null) {
            noCodeData.x0(listener);
        }
        listener.e();
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        NoCodeData noCodeData = getNoCodeData();
        noCodeData.Y0(gameObject, this);
        noCodeData.i1();
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f78925E = false;
        NoCodeData noCodeData = getNoCodeData();
        noCodeData.Y0(this.f79250n, this);
        noCodeData.D0();
    }

    @Override
    public void onCollision(C13813a collision) {
        super.onCollision(collision);
        NoCodeData noCodeData = getNoCodeData();
        if (noCodeData != null) {
            noCodeData.Y0(this.f79250n, this);
            noCodeData.B(Pa.c.class, collision);
        }
    }

    @Override
    public void onCollisionEnter(C13813a collision) {
        super.onCollisionEnter(collision);
        NoCodeData noCodeData = getNoCodeData();
        if (noCodeData != null) {
            noCodeData.Y0(this.f79250n, this);
            noCodeData.y(Pa.b.class, collision);
        }
    }

    @Override
    public void onCollisionStop(C13813a collision) {
        super.onCollisionStop(collision);
        NoCodeData noCodeData = getNoCodeData();
        if (noCodeData != null) {
            noCodeData.Y0(this.f79250n, this);
            noCodeData.D(Pa.d.class, collision);
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();
        this.f78925E = false;
        NoCodeData noCodeData = this.noCodeData;
        if (noCodeData != null) {
            noCodeData.E0();
        }
    }

    @Override
    public void onGameStateChanged(boolean running, boolean paused) {
        super.onGameStateChanged(running, paused);
        if (running || paused) {
            return;
        }
        this.f78925E = false;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionRuntime.getInstance().update(0.0166f);
        NoCodeData noCodeData = getNoCodeData();
        noCodeData.Y0(gameObject, this);
        dispatchStartEventIfNeeded(noCodeData);
        noCodeData.h1();
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        NoCodeData noCodeData = this.noCodeData;
        if (noCodeData != null) {
            noCodeData.M0(dictionary);
        }
    }

    @Override
    public JsonElement serialize(Context context) {
        NoCodeData noCodeData = this.noCodeData;
        if (noCodeData != null) {
            noCodeData.e1();
        }
        return super.serialize(context);
    }

    public boolean setAttribute(String name, Object value) {
        NoCodeData noCodeData = getNoCodeData();
        boolean z10 = noCodeData != null && noCodeData.V0(name, value);
        if (z10) {
            reloadInspector();
        }
        return z10;
    }

    public boolean setAttributeById(String id2, Object value) {
        NoCodeData noCodeData = getNoCodeData();
        boolean z10 = noCodeData != null && noCodeData.W0(id2, value);
        if (z10) {
            reloadInspector();
        }
        return z10;
    }

    public void setNoCodeData(NoCodeData noCodeData) {
        NoCodeData noCodeData2 = this.noCodeData;
        if (noCodeData2 == noCodeData && noCodeData2 != null) {
            noCodeData2.Y0(this.f79250n, this);
            return;
        }
        this.f78925E = false;
        if (noCodeData2 != null && this.f79250n != null) {
            noCodeData2.E0();
        }
        if (noCodeData == null) {
            noCodeData = E.c();
        }
        this.noCodeData = noCodeData;
        noCodeData.Y0(this.f79250n, this);
        if (this.f79250n != null) {
            this.noCodeData.D0();
        }
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public boolean willCallFunction(String functionName, Object... args) {
        return true;
    }

    @Override
    public Component mo1248clone() {
        NoCodeExecutor noCodeExecutor = new NoCodeExecutor();
        NoCodeData noCodeData = this.noCodeData;
        if (noCodeData != null) {
            noCodeData.e1();
            NoCodeData noCodeData2 = (NoCodeData) X7.a.m().fromJson(X7.a.m().toJsonTree(this.noCodeData), NoCodeData.class);
            noCodeExecutor.noCodeData = noCodeData2;
            if (noCodeData2 != null) {
                noCodeData2.I();
            }
        }
        return noCodeExecutor;
    }
}
