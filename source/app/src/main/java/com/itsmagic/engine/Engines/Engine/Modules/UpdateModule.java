package com.itsmagic.engine.Engines.Engine.Modules;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.atomic.AtomicBoolean;

public class UpdateModule {

    public GameObject f78917b;

    public final AtomicBoolean f78916a = new AtomicBoolean();

    public final Component f78918c = new Component(true, true, true, true) {
        @Override
        public String getTitle() {
            return UpdateModule.this.c();
        }

        @Override
        public Component.e getType() {
            return Component.e.AttachedModule;
        }

        @Override
        public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
            super.lowTaskUpdate(gameObject, isEditor);
            UpdateModule.this.e();
        }

        @Override
        public void onDrawFrame() {
            super.onDrawFrame();
            UpdateModule.this.f();
        }

        @Override
        public void parallelUpdate() {
            super.parallelUpdate();
            UpdateModule.this.g();
        }

        @Override
        public void preUpdate(GameObject gameObject, boolean isEditor) {
            super.preUpdate(gameObject, isEditor);
            UpdateModule.this.h();
        }
    };

    @Retention(RetentionPolicy.RUNTIME)
    public @interface a {
    }

    public void a() {
        if (this.f78916a.compareAndSet(false, true)) {
            if (this.f78917b == null) {
                GameObject gameObject = new GameObject();
                this.f78917b = gameObject;
                Component component = this.f78918c;
                component.f79250n = null;
                gameObject.r(component);
            }
            K8.a.L(this.f78917b);
        }
    }

    public void b() {
        this.f78916a.set(false);
        GameObject gameObject = this.f78917b;
        if (gameObject != null) {
            K8.a.D(gameObject);
            this.f78917b = null;
        }
    }

    @a
    public String c() {
        return "Engine-Module";
    }

    public boolean d() {
        return this.f78916a.get();
    }

    @a
    public void e() {
    }

    @a
    public void f() {
    }

    @a
    public void g() {
    }

    @a
    public void h() {
    }
}
