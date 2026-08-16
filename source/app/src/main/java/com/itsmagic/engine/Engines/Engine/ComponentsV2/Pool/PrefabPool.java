package com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool;

import C5.b;
import D5.h;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import h9.InterfaceC13435a;
import java.util.List;
import java.util.Objects;
import t6.e;
import t6.j;

public class PrefabPool extends BasePool implements InterfaceC13435a {

    public static final String f74703M8 = "PrefabPool";

    public static final Class f74704N8 = PrefabPool.class;

    public String f74705K8;

    public GameObject f74706L8;

    @Expose
    private String prefabFile;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return PrefabPool.f74704N8;
        }

        @Override
        public String c() {
            return PrefabPool.f74703M8;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return PrefabPool.f74703M8;
        }
    }

    public class b implements h {

        public class a implements Runnable {

            public final Variable f74708b;

            public a(final Variable val$variable) {
                this.f74708b = val$variable;
            }

            @Override
            public void run() {
                e S12 = j.J1() ? j.S1("PrefabPool - set prefab file") : null;
                try {
                    PrefabPool.this.setPrefabFile(this.f74708b.str_value);
                } finally {
                    j.P1(S12);
                }
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", PrefabPool.this.prefabFile);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            PrefabPool.this.reloadBase();
        }
    }

    static {
        C13201a.b(new a());
    }

    public PrefabPool() {
        super(f74703M8);
    }

    private void emitOf(GameObject o10) {
        emitBaseObject(o10);
        if (o10.isEnabled()) {
            for (int i10 = 0; i10 < o10.D(); i10++) {
                emitOf(o10.C(i10));
            }
        }
    }

    @Override
    public void clearBakeObjects() {
        for (int i10 = 0; i10 < this.f74706L8.D(); i10++) {
            this.f74706L8.C(i10).destroy();
        }
    }

    @Override
    public List<C5.b> getModelEntries(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(new b(), "Object file", b.a.InputFile, ".go"));
        steppedArrayList.addAll(super.getModelEntries(context));
        return steppedArrayList;
    }

    public String getPrefabFile() {
        return this.prefabFile;
    }

    @Override
    public String getTitle() {
        return f74703M8;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        reloadBase();
    }

    @Override
    public void onDetach() {
        super.onDetach();
        GameObject gameObject = this.f74706L8;
        if (gameObject != null) {
            gameObject.destroy();
            this.f74706L8 = null;
        }
        this.f74705K8 = null;
    }

    public void reloadBase() {
        String str = this.prefabFile;
        this.f74705K8 = str;
        try {
            GameObject T10 = GameObject.T(X7.a.r(str), false, false);
            if (C13317e.J(T10)) {
                T10.S1();
                T10.J0().setPosition(0.0f);
                K8.a.L(T10);
                this.f74706L8 = T10;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setPrefabFile(String prefabFile) {
        boolean equals = Objects.equals(this.prefabFile, prefabFile);
        this.prefabFile = prefabFile;
        if (equals) {
            return;
        }
        K8.a.B(new c());
    }

    @Override
    public boolean startCheckBase() {
        if (this.f74706L8 != null) {
            for (int i10 = 0; i10 < this.f74706L8.D(); i10++) {
                if (checkBase(this.f74706L8.C(i10))) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public void startPreparationOfBase() {
        if (this.f74706L8 != null) {
            for (int i10 = 0; i10 < this.f74706L8.D(); i10++) {
                emitOf(this.f74706L8.C(i10));
            }
        }
    }

    @Override
    public Component mo1248clone() {
        PrefabPool prefabPool = new PrefabPool();
        prefabPool.prefabFile = this.prefabFile;
        cloneTo(prefabPool);
        return prefabPool;
    }
}
