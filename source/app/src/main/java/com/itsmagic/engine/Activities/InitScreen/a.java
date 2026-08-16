package com.itsmagic.engine.Activities.InitScreen;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;

public class a {

    public InterfaceC1165a f72436a;

    public interface InterfaceC1165a {
        Activity a();

        void b();

        void c();
    }

    public void a() {
        InterfaceC1165a interfaceC1165a = this.f72436a;
        if (interfaceC1165a == null) {
            throw new RuntimeException("Screen is not attached");
        }
        interfaceC1165a.b();
    }

    public Activity b() {
        return this.f72436a.a();
    }

    public InterfaceC1165a c() {
        return this.f72436a;
    }

    public Context d() {
        return this.f72436a.a();
    }

    public View e(LinearLayout parent, Activity activity, LayoutInflater layoutInflater) {
        throw new RuntimeException("Override this method at " + getClass().getName());
    }

    public boolean f() {
        return this.f72436a != null;
    }

    public void g() {
    }

    public void h() {
    }

    public boolean i(Activity activity) {
        throw new RuntimeException("Override this method at " + getClass().getName());
    }

    public void j(InterfaceC1165a connector) {
        this.f72436a = connector;
    }

    public void k(Activity activity) {
    }

    public void l() {
        this.f72436a.c();
    }
}
