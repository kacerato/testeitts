package com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import fb.AbstractC13203c;
import fb.C13201a;
import h9.InterfaceC13435a;

public class ObjectPool extends BasePool implements InterfaceC13435a {

    public static final String f74700L8 = "ObjectPool";

    public static final Class f74701M8 = ObjectPool.class;

    public Component f74702K8;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return ObjectPool.f74701M8;
        }

        @Override
        public String c() {
            return ObjectPool.f74700L8;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return ObjectPool.f74700L8;
        }
    }

    static {
        C13201a.b(new a());
    }

    public ObjectPool() {
        super(f74700L8);
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
        for (int i10 = 0; i10 < this.f79250n.D(); i10++) {
            this.f79250n.C(i10).destroy();
        }
    }

    @Override
    public String getTitle() {
        return f74700L8;
    }

    @Override
    public void setRuntime(Component run) {
        this.f74702K8 = run;
    }

    @Override
    public boolean startCheckBase() {
        for (int i10 = 0; i10 < this.f79250n.D(); i10++) {
            if (checkBase(this.f79250n.C(i10))) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void startPreparationOfBase() {
        for (int i10 = 0; i10 < this.f79250n.D(); i10++) {
            emitOf(this.f79250n.C(i10));
        }
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74702K8;
        if (component != null) {
            return component;
        }
        JAVARuntime.ObjectPool objectPool = new JAVARuntime.ObjectPool(this);
        this.f74702K8 = objectPool;
        return objectPool;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        ObjectPool objectPool = new ObjectPool();
        cloneTo(objectPool);
        return objectPool;
    }
}
