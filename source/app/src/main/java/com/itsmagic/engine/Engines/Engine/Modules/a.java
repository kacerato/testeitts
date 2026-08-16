package com.itsmagic.engine.Engines.Engine.Modules;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.itsmagic.engine.Engines.Engine.Modules.UpdateModule;
import java.lang.ref.WeakReference;

public class a extends UpdateModule {

    public WeakReference<Object> f78920d;

    public a(Object target) {
        n(target);
    }

    @Override
    public final void f() {
        Object m10 = m();
        if (m10 == null) {
            return;
        }
        j(m10);
    }

    @Override
    public final void g() {
        Object m10 = m();
        if (m10 == null) {
            return;
        }
        k(m10);
    }

    @Override
    public final void h() {
        Object m10 = m();
        if (m10 == null) {
            return;
        }
        l(m10);
    }

    public final Object i() {
        WeakReference<Object> weakReference = this.f78920d;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @UpdateModule.a
    public void j(Object target) {
    }

    @UpdateModule.a
    public void k(Object target) {
    }

    @UpdateModule.a
    public void l(Object target) {
    }

    public final Object m() {
        Object i10 = i();
        if (i10 == null) {
            b();
        }
        return i10;
    }

    public final void n(Object target) {
        if (target == null) {
            throw new NullPointerException(TypedValues.AttributesType.S_TARGET);
        }
        this.f78920d = new WeakReference<>(target);
    }
}
