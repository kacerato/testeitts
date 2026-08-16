package com.itsmagic.engine.Engines.Engine.NoCode.Components;

import C5.m;
import Ic.C2629h;
import Ic.C2632k;
import android.content.Context;
import android.view.View;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeAttribute;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeAttributeState;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeGraph;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import fb.AbstractC13203c;
import fb.C13201a;
import ha.C13437a;
import j9.C13813a;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import n4.C14352d;
import w5.k;

public class NoCodeFileExecutor extends Component implements Serializable {

    public static final String f78931H = "NoCodeFileExecutor";

    public static final Class f78932I = NoCodeFileExecutor.class;

    public NoCodeGraph f78933E;

    public String f78934F;

    public transient boolean f78935G;

    @Expose
    private String file;

    @Expose
    private List<NoCodeAttributeState> runtimeAttributeStates;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return NoCodeFileExecutor.f78932I;
        }

        @Override
        public String c() {
            return NoCodeFileExecutor.f78931H;
        }

        @Override
        public String e() {
            return "NoCode Graph";
        }

        @Override
        public String f() {
            return "NoCode File";
        }
    }

    public class b implements NoCodeData.q {
        public b() {
        }

        @Override
        public void a() {
            NoCodeFileExecutor.this.reloadInspector();
        }
    }

    public class c extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                N7.c.D().B0(new C14352d(NoCodeFileExecutor.this.file));
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                N7.c.D().B0(new k(NoCodeFileExecutor.this.file));
            }
        }

        public c() {
            add(new C12908b("Edit script", new a()));
            add(new C12908b("Show in files", new b()));
        }
    }

    public class d extends SteppedArrayList<m> {

        public class a extends AbstractViewOnClickListenerC12733a {
            public a() {
            }

            @Override
            public void click(View view) {
                N7.c.D().B0(new C14352d(NoCodeFileExecutor.this.file));
            }
        }

        public d() {
            add(new m(R.drawable.edit_script_2, new a()));
        }
    }

    static {
        C13201a.b(new a());
    }

    public NoCodeFileExecutor() {
        super(f78931H);
        this.runtimeAttributeStates = new SteppedArrayList();
    }

    private void applyStoredRuntimeAttributeValues(NoCodeData data) {
        List<NoCodeAttributeState> list;
        String str;
        NoCodeAttribute T10;
        if (data == null || (list = this.runtimeAttributeStates) == null || list.isEmpty()) {
            return;
        }
        data.H();
        for (NoCodeAttributeState noCodeAttributeState : this.runtimeAttributeStates) {
            if (noCodeAttributeState != null && (str = noCodeAttributeState.attributeId) != null && !str.isEmpty() && (T10 = data.T(noCodeAttributeState.attributeId)) != null) {
                T10.f(noCodeAttributeState.w(data.h0(), data.i0()), data.h0(), data.i0());
            }
        }
    }

    private void dispatchStartEventIfNeeded(NoCodeData data) {
        if (data == null || this.f78935G || K8.a.f10989t <= 1 || !c8.b.k()) {
            return;
        }
        this.f78935G = true;
        data.E(La.a.class);
    }

    private NoCodeData getNoCodeData() {
        NoCodeData noCodeData;
        NoCodeGraph noCodeGraph = this.f78933E;
        if (noCodeGraph == null || (noCodeData = noCodeGraph.data) == null) {
            return null;
        }
        noCodeData.Y0(this.f79250n, this);
        return this.f78933E.data;
    }

    private void updateFile() {
        String str = this.file;
        if (str != null) {
            String str2 = this.f78934F;
            if (str2 != null && str.equals(str2)) {
                return;
            }
        } else if (this.f78934F == null) {
            return;
        }
        this.f78935G = false;
        String str3 = this.file;
        if (str3 != null) {
            this.f78933E = NoCodeGraph.e(str3);
        } else {
            this.f78933E = null;
        }
        NoCodeData noCodeData = getNoCodeData();
        if (noCodeData != null) {
            noCodeData.I();
            noCodeData.Y0(this.f79250n, this);
            applyStoredRuntimeAttributeValues(noCodeData);
        }
        this.f78934F = this.file;
        reloadInspector();
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
        updateFile();
        NoCodeData noCodeData = getNoCodeData();
        return (noCodeData != null ? noCodeData.r() : 0) + 1;
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
        String str = this.file;
        if (str != null) {
            c2632k.f9114a.add(str);
        }
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return "NoCode";
    }

    public String getFile() {
        return this.file;
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
        NoCodeData noCodeData = getNoCodeData();
        if (noCodeData != null) {
            linkedList.addAll(noCodeData.f0(context, new b()));
        }
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

    @Override
    public String getTitle() {
        String str = this.file;
        return str != null ? Tc.b.w(str, true) : "NoCode";
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        updateFile();
        if (getNoCodeData() != null) {
            getNoCodeData().x0(listener);
        }
        listener.e();
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        NoCodeData noCodeData;
        super.lowTaskUpdate(gameObject, isEditor);
        NoCodeGraph noCodeGraph = this.f78933E;
        if (noCodeGraph == null || (noCodeData = noCodeGraph.data) == null) {
            return;
        }
        noCodeData.Y0(gameObject, this);
        this.f78933E.data.i1();
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f78935G = false;
        updateFile();
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
        this.f78935G = false;
    }

    @Override
    public void onGameStateChanged(boolean running, boolean paused) {
        super.onGameStateChanged(running, paused);
        if (running || paused) {
            return;
        }
        this.f78935G = false;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        NoCodeData noCodeData;
        super.preUpdate(gameObject, isEditor);
        NoCodeGraph noCodeGraph = this.f78933E;
        if (noCodeGraph == null || (noCodeData = noCodeGraph.data) == null) {
            return;
        }
        noCodeData.Y0(gameObject, this);
        dispatchStartEventIfNeeded(this.f78933E.data);
        this.f78933E.data.h1();
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof C13437a) {
            this.f78933E = null;
            this.f78934F = null;
            updateFile();
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.file;
        if (str == null || str.isEmpty() || this.file.startsWith("@@ASSET@@") || (f10 = dictionary.f(this.file)) == null) {
            return;
        }
        dictionary.h("NoCodeFileExecutor: REPLACING " + this.file + " TO " + f10.b());
        this.file = f10.b();
    }

    @Override
    public JsonElement serialize(Context context) {
        storeRuntimeAttributeValues();
        return super.serialize(context);
    }

    public boolean setAttribute(String name, Object value) {
        NoCodeData noCodeData = getNoCodeData();
        boolean z10 = noCodeData != null && noCodeData.V0(name, value);
        if (z10) {
            storeRuntimeAttributeValues();
            reloadInspector();
        }
        return z10;
    }

    public boolean setAttributeById(String id2, Object value) {
        NoCodeData noCodeData = getNoCodeData();
        boolean z10 = noCodeData != null && noCodeData.W0(id2, value);
        if (z10) {
            storeRuntimeAttributeValues();
            reloadInspector();
        }
        return z10;
    }

    public void setFile(String file) {
        boolean equals = Objects.equals(this.file, file);
        this.file = file;
        if (equals) {
            return;
        }
        updateFile();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    public void storeRuntimeAttributeValues() {
        List<NoCodeAttributeState> list = this.runtimeAttributeStates;
        if (list == null) {
            this.runtimeAttributeStates = new SteppedArrayList();
        } else {
            list.clear();
        }
        NoCodeData noCodeData = getNoCodeData();
        if (noCodeData == null) {
            return;
        }
        noCodeData.H();
        Iterator<NoCodeAttribute> it = noCodeData.attributes.iterator();
        while (it.hasNext()) {
            NoCodeAttributeState x10 = NoCodeAttributeState.x(it.next());
            if (x10 != null) {
                this.runtimeAttributeStates.add(x10);
            }
        }
    }

    @Override
    public boolean willCallFunction(String functionName, Object... args) {
        return true;
    }

    @Override
    public Component mo1248clone() {
        NoCodeFileExecutor noCodeFileExecutor = new NoCodeFileExecutor();
        noCodeFileExecutor.file = this.file;
        if (this.runtimeAttributeStates != null) {
            noCodeFileExecutor.runtimeAttributeStates = new SteppedArrayList();
            for (NoCodeAttributeState noCodeAttributeState : this.runtimeAttributeStates) {
                if (noCodeAttributeState != null) {
                    NoCodeAttributeState noCodeAttributeState2 = new NoCodeAttributeState();
                    noCodeAttributeState2.attributeId = noCodeAttributeState.attributeId;
                    noCodeAttributeState2.c(noCodeAttributeState);
                    noCodeFileExecutor.runtimeAttributeStates.add(noCodeAttributeState2);
                }
            }
        }
        return noCodeFileExecutor;
    }

    public NoCodeFileExecutor(String file) {
        super(f78931H);
        this.runtimeAttributeStates = new SteppedArrayList();
        this.file = file;
    }
}
