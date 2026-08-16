package com.itsmagic.engine.Activities.Editor.Extensions.CloudSync;

import C5.b;
import D5.h;
import JAVARuntime.Runnable;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Settings.c;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.LinkedList;
import java.util.List;

@Deprecated
public class Settings {

    @Expose
    public boolean enableCloudSync = false;

    public class a implements h {

        public final com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a f70058a;

        public final c f70059b;

        public class C1046a implements Runnable {

            public final Variable f70061b;

            public class RunnableC1047a implements Runnable {
                public RunnableC1047a() {
                }

                @Override
                public void run() {
                    a.this.f70059b.a();
                }
            }

            public C1046a(final Variable val$variable) {
                this.f70061b = val$variable;
            }

            @Override
            public void run() {
                Settings.this.enableCloudSync = this.f70061b.booolean_value.booleanValue();
                a.this.f70058a.J();
                N7.c.j0(new RunnableC1047a());
            }
        }

        public a(final com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a val$sync, final c val$listener) {
            this.f70058a = val$sync;
            this.f70059b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", Settings.this.enableCloudSync + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new C1046a(variable));
            }
        }
    }

    public List<b> a(com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a sync, Context context, c listener) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new b(new a(sync, listener), "Enable Cloud Sync", b.a.SLBoolean));
        return linkedList;
    }

    public boolean b() {
        return this.enableCloudSync;
    }

    public void c(boolean enableCloudSync) {
        this.enableCloudSync = enableCloudSync;
    }
}
